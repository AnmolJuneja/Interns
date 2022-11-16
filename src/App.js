import { BrowserRouter, Routes, Route } from "react-router-dom";
import Header from "./Components/Header";
import Home from "./pages/Home";
import About from "./pages/About";
import Content from "./pages/Content";
import Gallery from "./pages/Gallery";
import Help from "./pages/Help";

function App() {
  const heading = ["Samsung Galaxy Z Flip"];
  const title = ["Foldable Dynamic AMOLED"];
  const price = ["$599.00 $699.00"];
  const button = [" Add to Cart to"];

  const headingSub = ["Samsung Galaxy S22 Ultra"];
  const titleSub = ["Foldable Dynamic AMOLED"];

  const headingSub1 = ["Apple Iphone 12 Pro Max"];
  const titleSub1 = ["Super Retina XDR OLED"];

  const iphone = ["Apple Iphone 13 Pro"];
  const iphoneText = ["Super Retina XDR OLED"];

  return (
    <>
      <BrowserRouter>
        <Header title="link1" />
        <Routes>
          <Route path="/" element={<Home />} />
          <Route
            path="/About"
            element={
              <About
                title="Black FRIDAY"
                par="Special Offer On Selected Products"
                onlineBtn="Get 50% oFF online"
                sale="Grab The Exclusive Deal"
                saleTitleSub="Smart Phone Online"
                cardTitle={heading}
                cardSubTitle={title}
                cardPrice={price}
                cardButton={button}
                cardTitleSub={headingSub}
                cardSubTitleSub={titleSub}
                cardTitle1={headingSub1}
                cardSubTitle1={titleSub1}
                card1={iphone}
                cardSub1={iphoneText}
              />
            }
          />
          <Route path="/Content" element={<Content />} />
          <Route path="/Gallery" element={<Gallery />} />
          <Route path="/Help" element={<Help />} />
        </Routes>
      </BrowserRouter>
    </>
  );
}

export default App;
