import React from "react";

const About = () => {
  return (
    <>
      <section className="first-work second">
        <h1>Hello Banner images Second</h1>
        <p>
          Lorem ipsum, dolor sit amet consectetur adipisicing elit. Inventore in
          corrupti ad fuga iure ab explicabo, tempora minima quas vel esse unde
          quod praesentium. Pariatur accusamus aliquid ut maxime alias?
        </p>
      </section>
      <section className="innovation">
        <div className="all-heading">
          <h2>
            We’re a digital experience agency using human-centered design to
            drive innovation
          </h2>
          <p>
            At thirteen23, we help organizations large and small solve existing
            challenges and innovate for the long term.
          </p>
          <a href="#" className="theme-button">
            WHO WE ARE <i class="bi bi-arrow-right-short ps-3"></i>
          </a>
        </div>
      </section>
      <section className="second-about">
        <div className="all-heading">
          <p>
            <span>STRATEGY, RESEARCH, DESIGN, LANGUAGE</span>
          </p>
          <h3>
            Reimagining the
            <br /> listening experience
            <br /> for Bose
          </h3>
          <a href="#" className="theme-button">
            CASH STUDY <i class="bi bi-arrow-right-short ps-3"></i>
          </a>
        </div>
      </section>
      <section className="third-about">
        <div className="all-heading pointer me-lg-5 me-md-0">
          <p>
            <span>USER EXPERIENCE, DESIGN LANGUAGE, PROTOTYPING</span>
          </p>
          <h3>Designing a platform to support Kohler’s smart ecosystem</h3>
          <a href="#" className="theme-button">
            WHO WE ARE <i class="bi bi-arrow-right-short ps-3"></i>
          </a>
        </div>
      </section>
      <section className="four-about">
        <div className="all-heading">
          <h2>
            We combine design and technology to solve your business challenges
          </h2>
          <p>
            From research and strategy to design, prototyping, and development,
            our team is dedicated to creating experiences that inspire and drive
            change.
          </p>
          <a href="#" className="theme-button">
            WHO WE ARE <i class="bi bi-arrow-right-short ps-3"></i>
          </a>
        </div>
        <div className="row ">
          <div className="col-md-4">
            <div className="function">
              <h3>Innovation</h3>
              <p>
                We partner with teams to create strategies that meet current and
                future needs.
              </p>
              <p>
                <span>
                  RESEARCH & WORKSHOPS
                  <br /> PRODUCT ROADMAPPING
                  <br /> TECHNOLOGY STRATEGY
                  <br />
                  IDEATION & CONCEPTING
                </span>
              </p>
            </div>
          </div>
          <div className="col-md-4">
            <div className="function">
              <h3>Design</h3>
              <p>
                We design beautiful interfaces for on-screen experiences and
                beyond.
              </p>
              <p className="pt-4">
                <span>
                  USER EXPERIENCE
                  <br /> SERVICE DESIGN
                  <br /> VISUAL DESIGN
                  <br /> DOCUMENTATION
                </span>
              </p>
            </div>
          </div>
          <div className="col-md-4">
            <div className="function">
              <h3>Technology</h3>
              <p>
                We use technology to test our concepts and implement our
                solutions.
              </p>
              <p>
                <span>
                  ADVANCED PROTOTYPING
                  <br /> WEB DEVELOPMENT
                  <br /> MOBILE DEVELOPMENT
                  <br /> DATA VISUALIZATION
                </span>
              </p>
            </div>
          </div>
        </div>
        <div className="showed">
          <img src="../../images/showed.webp" alt="" />
        </div>
        <div className="impact">
          <h3 className="heading">Our work has a lasting impact</h3>
          <p className="title">
            We work with our partners to create lasting relationships built on
            flexibility, collaboration, and the desire to do great work.
          </p>
        </div>
        <div className="images-setting">
          <img src="../../images/icon-1.png" alt="" className="img-fluid" />
          <img src="../../images/icon-2.png" alt="" className="img-fluid" />
          <img src="../../images/icon-3.png" alt="" className="img-fluid" />
          <img src="../../images/icon-4.png" alt="" className="img-fluid" />
          <div className=" text-center mt-4">
            <a href="#" className="theme-button ">
              OUR WORK<i class="bi bi-arrow-right-short ps-3"></i>
            </a>
          </div>
        </div>
      </section>
    </>
  );
};

export default About;
