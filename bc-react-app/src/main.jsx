import { StrictMode } from 'react'
import { createRoot } from 'react-dom/client'
import './index.css'
import App from './App.jsx'
import { ImagesProvider } from './hooks/imageLoader';

let root;
renderOnElement('controlAddIn');

function renderOnElement(elementId) {
  const element = document.getElementById(elementId);
  if (element && !element._reactRootContainer) {
    if (!root) root = createRoot(element);
    root.render(
      <StrictMode>
        <ImagesProvider>
          <App />
        </ImagesProvider>
      </StrictMode>,
    )
  }
}