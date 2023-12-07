import React, { useEffect, useRef } from 'react';
import * as d3 from 'd3';

// Extend the Node type to include simulation properties
type Node = {
    id: string;
    name: string;
    partition: number;
    x?: number;
    y?: number;
    vx?: number; // Add this
    vy?: number; // Add this
};

type Partition = {
    id: string;
    nodes: string[];
    x?: number;
    y?: number;
}

type Link = {
    source: Node | string;
    target: Node | string;
};

interface NetworkGraphProps {
    dimensions: { width: number; height: number };
    nodes: Node[];
    links: Link[];
    partitions?: Partition[];
}

const NetworkGraph: React.FC<NetworkGraphProps> = ({ dimensions, nodes, links, partitions }) => {
    const svgRef = useRef<SVGSVGElement>(null);
    const rad = 10;

    useEffect(() => {
        if (svgRef.current) {
            const svg = d3.select(svgRef.current);
            svg.selectAll("*").remove();

            // Custom attraction force
            const attractForce = (alpha: number) => {
                nodes.forEach(node => {
                    if (node.x == null || node.y == null) return; // Check if node's x and y are not undefined or null

                    nodes.forEach(otherNode => {
                        if (otherNode.x == null || otherNode.y == null) return; // Check if otherNode's x and y are not undefined or null
                        if (node.x == null || node.y == null) return; // Check if node's x and y are not undefined or null

                        if (node.partition === otherNode.partition && node.id !== otherNode.id) {
                            node.vx = node.vx ?? 0; // Ensure vx and vy are initialized
                            node.vy = node.vy ?? 0;

                            node.vx += (otherNode.x - node.x) * alpha;
                            node.vy += (otherNode.y - node.y) * alpha;
                        }
                    });
                });
            };


            // Adjust link distance for nodes in the same partition
            const linkForce = d3.forceLink<Node, Link>(links)
                .id((d: Node) => d.id)
                .distance((d) => {
                    const sourceNode = typeof d.source === 'string' ? nodes.find(n => n.id === d.source) : d.source;
                    const targetNode = typeof d.target === 'string' ? nodes.find(n => n.id === d.target) : d.target;
                    if (!sourceNode || !targetNode) return 100; // Default distance
                    return sourceNode.partition === targetNode.partition ? 50 : 100;
                });

            // Force definitions
            const chargeForce = d3.forceManyBody().strength(-2000);

            // Initialize simulation
            const simulation = d3.forceSimulation(nodes)
                .alpha(0.5)
                .force("link", linkForce)
                .force("charge", chargeForce)
                .force("attract", attractForce)
                .force("center", d3.forceCenter(dimensions.width / 2, dimensions.height / 2));

            // Draw lines for the links
            const link = svg.append("g")
                .selectAll("line")
                .data(links)
                .join("line")
                .attr("class", "edge"); // Using 'edge' class from SASS

            var colors = d3.schemeCategory10;

            // Create partition
            if (partitions != null && partitions.length > 0) {
                console.log(partitions);
            }

            // Create squares for the nodes
            const node = svg.append("g")
                .selectAll("rect")
                .data(nodes)
                .join("rect")
                .attr("width", rad * 2) // 'rad' is the half-width of the square
                .attr("height", rad * 2) // Same as width for a square
                .attr("class", "vertex") // Using 'vertex' class from SASS
                .style("fill", (d: Node) => colors[+d.id % 10]);

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
                    .attr("x", d => (d.x ?? 0) - rad) // Adjust x to center the square
                    .attr("y", d => (d.y ?? 0) - rad); // Adjust y to center the square
            });

        }
    }, [nodes, links]);

    return (
        <svg ref={svgRef} width={dimensions.width} height={dimensions.height} />
    );
};

export default NetworkGraph;
