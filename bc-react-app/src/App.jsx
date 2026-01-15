import { useLoadImages } from './hooks/imageLoader';
import Spinner from './components/Spinner';
import UI from './UI';

function App() {
  const loaded = useLoadImages();

  return (
    loaded ?
      <UI /> : <Spinner />
  )
}

export default App
