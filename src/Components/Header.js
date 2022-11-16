import React from "react";
import { NavLink } from "react-router-dom";

const Header = () => {
  return (
    <>
      <header>
        <nav>
          <input type="checkbox" id="click"></input>
          <label for="click" className="clicking">
            <i className="bi bi-justify-left"></i>
          </label>

          <div className="logo">
            <img
              src="../../images/logo-1.svg"
              alt="logo"
              className="img-fluid amazon"
            />
          </div>

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
