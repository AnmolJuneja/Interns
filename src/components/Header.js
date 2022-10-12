import React from "react";
import { NavLink } from "react-router-dom";

const Header = () => {
  return (
    <div>
      <header>
        <div className="logo ps-3">
          <img src="../../images/logo-2.svg" alt="logo" />
        </div>
        <div className="header-main-nav">
          <nav>
            <ul>
              <li>
                <NavLink to="/" className="link">
                  Digital Agency
                </NavLink>
              </li>
              <li>
                <NavLink to="/Services" className="link">
                  Services
                </NavLink>
              </li>
              <li>
                <NavLink to="/Portfolio" className="link">
                  Portfolio
                </NavLink>
              </li>
              <li>
                <NavLink to="/Pages" className="link">
                  Pages
                </NavLink>
              </li>
              <li>
                <NavLink to="/Blog" className="link">
                  Blog
                </NavLink>
              </li>
              <li>
                <NavLink to="/Contact" className="link">
                  Contact
                </NavLink>
              </li>
            </ul>
          </nav>
        </div>
        <div className="header-action me-3">
          <i class="bi bi-justify-right"></i>
        </div>
      </header>

      {/* Right side bar Start  */}
      <section className="rightBar"></section>

      {/* Right side bar End */}
    </div>
  );
};

export default Header;
