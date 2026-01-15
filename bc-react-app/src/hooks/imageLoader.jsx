import { useState, useEffect, useContext, createContext } from 'react';

// Create React Context for storing loaded images
const ImagesContext = createContext(null);

// Provider component to wrap your app
export function ImagesProvider({ children }) {
  const [images, setImages] = useState({});
  const [loaded, setLoaded] = useState(false);

  useEffect(() => {
    async function loadImages() {
      const files = {
        reactLogo: 'react.svg',
        viteLogo: 'vite.svg',
        // add more here if needed
      };

      const entries = await Promise.all(
        Object.entries(files).map(async ([key, name]) => {
          const url = window.Microsoft?.Dynamics?.NAV?.GetImageResource(name) || name;
          const res = await fetch(url, { credentials: 'include' });
          const blob = await res.blob();
          return [key, URL.createObjectURL(blob)];
        })
      );

      setImages(Object.fromEntries(entries));
      setLoaded(true);
    }

    loadImages();
  }, []);

  return (
    <ImagesContext.Provider value={{ images, loaded }}>
      {children}
    </ImagesContext.Provider>
  );
}

// Hook to be used at app start
export function useLoadImages() {
  const { loaded } = useContext(ImagesContext);
  return loaded;
}

// Hook to retrieve loaded images anywhere in the app
export function useGetImages() {
  const { images } = useContext(ImagesContext);
  return images;
}
