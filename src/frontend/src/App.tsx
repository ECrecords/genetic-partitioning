import React from 'react';
import NetworkGraph from './NetworkGraph'; // Adjust the import path as needed

const App: React.FC = () => {
  // Generate dummy data for nodes and links
  const nodes = Array.from({ length: 500 }, (_, index) => ({ id: String(index + 1) }));
  const links = Array.from({ length: 500 }, (_, index) => ({
    source: String(index % 100 + 1),
    target: String((index + 1) % 100 + 1),
  }));

  return (
    <div className="App">
      <header className="App-header">
        <h1>Network Graph Example</h1>
      </header>
      <NetworkGraph nodes={nodes} links={links} />
    </div>
  );
};

export default App;
