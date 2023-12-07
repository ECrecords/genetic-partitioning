import React, { useEffect, useState, useRef } from 'react';
import $ from 'jquery';
import MyNavbar from '../NavBar/MyNavbar';
import NetworkGraph from '../NetworkGraph/NetworkGraph';
import { partition } from 'd3';

const App: React.FC = () => {
  const [svgDimensions, setSvgDimensions] = useState({ width: 616, height: 400 });
  const navbarRef = useRef<HTMLDivElement>(null);

  useEffect(() => {
    const handleResize = () => {
      if (navbarRef.current) {
        let navbarWidth = $(navbarRef.current).outerWidth() || 0;
        let univSvgWidth = (navbarWidth * 2) / 3 - 48;
        let univSvgHeight = univSvgWidth * 0.54;
        if (univSvgWidth < 616) univSvgWidth = 616;
        if (univSvgHeight < 400) univSvgHeight = 400;
        setSvgDimensions({ width: univSvgWidth, height: univSvgHeight });
      }
    };

    window.addEventListener('resize', handleResize);
    handleResize();

    return () => window.removeEventListener('resize', handleResize);
  }, []);

  // Generate pentagram graph
  const nodes = [
    { id: '1', name: "a", partition: 2 },
    { id: '2',  name: "b", partition: 2},
    { id: '3', name: "sel", partition: 3},
    { id: '4', name: "!sel", partition: 1},
    { id: '5', name: "a.!sel", partition: 1},
    { id: '6', name: "b.sel", partition: 1},
    { id: '7', name: "a.!sel+b.sel", partition: 1},
    { id: '8', name: "out", partition: 0}
  ];

  
  const links = [
    { source: '1', target: '5' },
    { source: '2', target: '6' },
    { source: '3', target: '4' },
    { source: '3', target: '6' },
    { source: '4', target: '5' },
    { source: '5', target: '7' },
    { source: '6', target: '7' },
    { source: '7', target: '8' },
  ];

  const partitions = [{id: '1', nodes: ['1', '2', '3']}]

  // const partitions = []

  return (
    <div className="App">
      <div ref={navbarRef}>
        <MyNavbar />
      </div>
      <NetworkGraph nodes={nodes} links={links} dimensions={svgDimensions} partitions={partitions}/>
    </div>
  );
};

export default App;
