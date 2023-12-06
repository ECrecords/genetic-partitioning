import React, { useEffect, useState, useRef } from 'react';
import $ from 'jquery';
import MyNavbar from './MyNavbar';
import NetworkGraph from './NetworkGraph';

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
    { id: '1' },
    { id: '2' },
    { id: '3' },
    { id: '4' },
    { id: '5' },
  ];
  const links = [
    { source: '1', target: '2' },
    { source: '2', target: '3' },
    { source: '3', target: '4' },
    { source: '4', target: '5' },
    { source: '5', target: '1' },
  ];

  return (
    <div className="App">
      <div ref={navbarRef}>
        <MyNavbar />
      </div>
      <NetworkGraph nodes={nodes} links={links} dimensions={svgDimensions} />
    </div>
  );
};

export default App;
