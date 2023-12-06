import React, { useEffect, useRef } from 'react';
import * as d3 from 'd3';

// Define types for the nodes and links
type Node = {
    id: string;
    x?: number;
    y?: number;
};

type Link = {
    source: Node | string;
    target: Node | string;
};

// Props for the NetworkGraph component
interface NetworkGraphProps {
    nodes: Node[];
    links: Link[];
}

const NetworkGraph: React.FC<NetworkGraphProps> = ({ nodes, links }) => {
    const svgRef = useRef<SVGSVGElement>(null);

    useEffect(() => {
        if (svgRef.current) {
            const svg = d3.select(svgRef.current);
            svg.selectAll("*").remove(); // Clear SVG content before adding new elements

            // Initialize simulation
            const simulation = d3.forceSimulation(nodes)
                .force("link", d3.forceLink<Node, Link>(links).id((d: Node) => d.id))
                .force("charge", d3.forceManyBody())
                .force("center", d3.forceCenter(300, 300));

            // Draw lines for the links
            const link = svg.append("g")
                .selectAll("line")
                .data(links)
                .join("line")
                .attr("class", "edge"); // Using 'edge' class from SASS

            // Create circles for the nodes
            const node = svg.append("g")
                .selectAll("circle")
                .data(nodes)
                .join("circle")
                .attr("r", 5)
                .attr("class", "vertex"); // Using 'vertex' class from SASS

            // Helper function to get x and y coordinates
            const getCoordinates = (obj: Node | string): { x: number; y: number } => {
                if (typeof obj === 'object') {
                    return { x: obj.x ?? 0, y: obj.y ?? 0 };
                }
                return { x: 0, y: 0 };
            };

            simulation.on("tick", () => {
                link
                    .attr("x1", d => getCoordinates(d.source).x)
                    .attr("y1", d => getCoordinates(d.source).y)
                    .attr("x2", d => getCoordinates(d.target).x)
                    .attr("y2", d => getCoordinates(d.target).y);

                node
                    .attr("cx", d => d.x ?? 0)
                    .attr("cy", d => d.y ?? 0);
            });
        }
    }, [nodes, links]);

    return <svg ref={svgRef} width={600} height={600} />;
};

export default NetworkGraph;
