import React from 'react';
import ReactDOM from 'react-dom/client';
import './index.scss'; // Assuming you have a CSS file
import App from './App';

const root = ReactDOM.createRoot(
  document.getElementById('root') as HTMLElement
);
root.render(
  <React.StrictMode>
    <App />
  </React.StrictMode>
);
