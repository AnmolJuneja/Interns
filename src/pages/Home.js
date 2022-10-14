import React from "react";

const Home = () => {
  return (
    <>
      <section className="first-work">
        <h1>Hello Banner images First</h1>
        <p>
          Lorem ipsum, dolor sit amet consectetur adipisicing elit. Inventore in
          corrupti ad fuga iure ab explicabo, tempora minima quas vel esse unde
          quod praesentium. Pariatur accusamus aliquid ut maxime alias?
        </p>
      </section>
      <section className="outer">
        <div className="container">
          <div className="row">
            <div className="col-md-7">
              <div className="outer-heading">
                <h1>
                  Work on Projects,Get your skills verified &
                  <span>Get Hired!</span>
                </h1>
                <p>
                  Select from a wide variety of technical projects based on your
                  interest. Work on them, get help, and publish your project.
                </p>
                <a href="#" className="first-btn">
                  View SKILL-LYNC Project
                </a>
                <a href="#" className="second-btn">
                  View SKILL-LYNC Students Project
                </a>
              </div>
            </div>
            <div className="col-md-5">
              <div className="outer-input-form">
                <h2>Learn more about these Projects today!</h2>
                <from className="all-input">
                  <div className="row">
                    <div className="col-md-6">
                      <input
                        type="text"
                        className="form-control"
                        placeholder="First Name"
                      />
                    </div>
                    <div className="col-md-6">
                      <input
                        type="text"
                        className="form-control"
                        placeholder="Last Name"
                      />
                    </div>
                    <div className="col-12">
                      <input
                        type="email"
                        className="form-control"
                        placeholder="Enter Your Email"
                      />
                    </div>
                    <div className="col-md-5">
                      <select
                        id="number"
                        name="number"
                        className="form-control"
                      >
                        <option value="+91" selected>
                          +91
                        </option>
                        <option value="9877781112">9877781112</option>
                        <option value="8054183739">8054183739</option>
                        <option value="7009838934">7009838934</option>
                        <option value="9115923756">9115923756</option>
                      </select>
                    </div>
                    <div className="col-md-7">
                      <input
                        type="tel"
                        className="form-control"
                        placeholder="Enter Your Phone Number"
                      />
                    </div>
                    <div className="col-12">
                      <button className="btn">Book a FREE Demo</button>
                    </div>
                  </div>
                </from>
              </div>
            </div>
          </div>
        </div>
      </section>
    </>
  );
};

export default Home;
