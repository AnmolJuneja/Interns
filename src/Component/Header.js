import React from "react";
import { NavLink } from "react-router-dom";

const Header = () => {
  return (
    <>
      <header>
        <div className="iocn">
          <input type="checkbox" id="click"></input>
          <label for="click" className="clicking">
            <i className="bi bi-justify-left"></i>
          </label>
        </div>
        <div className="logo">
          <img
            src="../../images/logo-1.png"
            alt="logo"
            className="img-fluid logo"
          />
        </div>
        <nav className="mx-auto">
          <ul>
            <li>
              <NavLink to="/">Home</NavLink>
            </li>
            <li>
              <NavLink to="/About">About</NavLink>
            </li>
            <li>
              <NavLink to="/Content">Content</NavLink>
            </li>
            <li>
              <NavLink to="/Gallery">Gallery</NavLink>
            </li>
            <li>
              <NavLink to="/Help">Help</NavLink>
            </li>
          </ul>
        </nav>
      </header>
    </>
  );
};

export default Header;
