import { StrictMode } from 'react'
import { createRoot } from 'react-dom/client'
import './index.css'
import App from './App.jsx'

renderOnElement('controlAddIn');

function renderOnElement(elementId) {
  const element = document.getElementById(elementId);
  if (element)
    createRoot(element).render(
      <StrictMode>
        <App />
      </StrictMode>,
    )
}