import { BrowserRouter, Routes, Route } from "react-router-dom";
import Header from "./Component/Header";
import Home from "./pages/Home";
import About from "./pages/About";
import Content from "./pages/Content";
import Gallery from "./pages/Gallery";
import Help from "./pages/Help";
function App() {
  return (
    <>
      <BrowserRouter>
        <Header />
        <Routes>
          <Route path="/" element={<Home />} />
          <Route path="/About" element={<About />} />
          <Route path="/Content" element={<Content />} />
          <Route path="/Gallery" element={<Gallery />} />
          <Route path="/Help" element={<Help />} />
        </Routes>
      </BrowserRouter>
    </>
  );
}

export default App;
