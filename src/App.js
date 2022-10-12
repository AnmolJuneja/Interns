import { BrowserRouter, Route, Routes } from "react-router-dom";

import Header from "./components/Header";
import Digital from "./pages/Digital";
import ProtFolio from "./pages/ProtFolio";
import Blog from "./pages/Blog";
import Page from "./pages/Page";
import Services from "./pages/Services";
import Contact from "./pages/Contact";
function App() {
  return (
    <>
      <BrowserRouter>
        <Header />

        <Routes>
          <Route path="/" element={<Digital />} />
          <Route path="/Services" element={<Services />} />
          <Route path="/ProtFolio" element={<ProtFolio />} />
          <Route path="/Page" element={<Page />} />
          <Route path="/Blog" element={<Blog />} />
          <Route path="/Contact" element={<Contact />} />
        </Routes>
      </BrowserRouter>
    </>
  );
}

export default App;
