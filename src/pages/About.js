import React from "react";
import pt from "prop-types";

const About = (props) => {
  return (
    <>
      <section className="about">
        <div className="container">
          <div className="row">
            <div className="about-title">
              <h3>{props.title}</h3>
              <p>{props.par}</p>
              <a
                href=""
                className="theme-button text-white theme-heading rounded-3"
              >
                {props.onlineBtn}
              </a>
            </div>
            <div className="col-md-6">
              <img
                src="../../images/about-banner-card-1.png"
                alt=""
                className="img-fluid"
              />
            </div>
            <div className="col-md-6">
              <img
                src="../../images/about-banner-card-2.png"
                alt=""
                className="img-fluid"
              />
            </div>
            <div className="limited-offer">
              <h3>Limited-time Offer</h3>
              <p>Our sale season will end in</p>
              <div className="limited-button">
                <a href="#" className="day">
                  <span>28</span>
                  <label>Days</label>
                </a>
                <a href="#" className="day">
                  <span>15</span>
                  <label>Hours</label>
                </a>
                <a href="#" className="day">
                  <span>57</span>
                  <label>Mins</label>
                </a>
                <a href="#" className="day">
                  <span>02</span>
                  <label>Secs</label>
                </a>
              </div>
            </div>
          </div>
        </div>
      </section>
      <section className="sale">
        <div className="container">
          <div className="row">
            <h3>{props.sale}</h3>
            <h4>{props.saleTitleSub}</h4>
            <div className="col-md-3">
              <div className="phone-sale">
                <div className="card">
                  <span className="offer-sale">14%</span>
                  <img
                    src="../../images/c1.png"
                    className="card-img-top img-fluid"
                    alt="..."
                  />

                  <div className="card-body">
                    <h5 className="card-title">{props.cardTitle}</h5>
                    <p className="card-text">{props.cardSubTitle}</p>
                    <p className="card-text-2">{props.cardPrice}</p>
                    <a href="#" className="theme-button w-100 add-card">
                      {props.cardButton}
                    </a>
                  </div>
                </div>
              </div>
            </div>
            <div className="col-md-3">
              <div className="phone-sale">
                <div className="card">
                  <span className="offer-sale">14%</span>
                  <img
                    src="../../images/c2.png"
                    className="card-img-top img-fluid"
                    alt="..."
                  />

                  <div className="card-body">
                    <h5 className="card-title">{props.cardTitleSub}</h5>
                    <p className="card-text">{props.cardSubTitleSub}</p>
                    <p className="card-text-2">{props.cardPrice}</p>
                    <a href="#" className="theme-button w-100 add-card">
                      {props.cardButton}
                    </a>
                  </div>
                </div>
              </div>
            </div>
            <div className="col-md-3">
              <div className="phone-sale">
                <div className="card">
                  <span className="offer-sale">14%</span>
                  <img
                    src="../../images/c3.png"
                    className="card-img-top img-fluid"
                    alt="..."
                  />

                  <div className="card-body">
                    <h5 className="card-title">{props.cardTitle1}</h5>
                    <p className="card-text">{props.cardSubTitle1}</p>
                    <p className="card-text-2">{props.cardPrice}</p>
                    <a href="#" className="theme-button w-100 add-card">
                      {props.cardButton}
                    </a>
                  </div>
                </div>
              </div>
            </div>
            <div className="col-md-3">
              <div className="phone-sale">
                <div className="card">
                  <span className="offer-sale">14%</span>
                  <img
                    src="../../images/c4.png"
                    className="card-img-top img-fluid"
                    alt="..."
                  />

                  <div className="card-body">
                    <h5 className="card-title">{props.card1}</h5>
                    <p className="card-text">{props.cardSub1}</p>
                    <p className="card-text-2">{props.cardPrice}</p>
                    <a href="#" className="theme-button w-100 add-card">
                      {props.cardButton}
                    </a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
      <section className="sale bg-light">
        <div className="container">
          <div className="row">
            <h4>Laptop</h4>
            <div className="col-md-3">
              <div className="phone-sale ">
                <div className="card bg-light">
                  <span className="offer-sale">14%</span>
                  <img
                    src="../../images/lp1.png"
                    className="card-img-top img-fluid"
                    alt="..."
                  />

                  <div className="card-body">
                    <h5 className="card-title">Samsung Galaxy Z Flip</h5>
                    <p className="card-text">Foldable Dynamic AMOLED</p>
                    <p className="card-text-2">
                      $599.00 <span>$699.00</span>
                    </p>
                    <a href="#" className="theme-button w-100 add-card">
                      Add to Cart
                    </a>
                  </div>
                </div>
              </div>
            </div>
            <div className="col-md-3">
              <div className="phone-sale ">
                <div className="card bg-light">
                  <span className="offer-sale">14%</span>
                  <img
                    src="../../images/lp2.webp"
                    className="card-img-top img-fluid"
                    alt="..."
                  />

                  <div className="card-body">
                    <h5 className="card-title">Samsung Galaxy Z Flip</h5>
                    <p className="card-text">Foldable Dynamic AMOLED</p>
                    <p className="card-text-2">
                      $599.00 <span>$699.00</span>
                    </p>
                    <a href="#" className="theme-button w-100 add-card">
                      Add to Cart
                    </a>
                  </div>
                </div>
              </div>
            </div>
            <div className="col-md-3">
              <div className="phone-sale">
                <div className="card bg-light">
                  <span className="offer-sale ">14%</span>
                  <img
                    src="../../images/lp3.webp"
                    className="card-img-top img-fluid"
                    alt="..."
                  />

                  <div className="card-body">
                    <h5 className="card-title">Samsung Galaxy Z Flip</h5>
                    <p className="card-text">Foldable Dynamic AMOLED</p>
                    <p className="card-text-2">
                      $599.00 <span>$699.00</span>
                    </p>
                    <a href="#" className="theme-button w-100 add-card">
                      Add to Cart
                    </a>
                  </div>
                </div>
              </div>
            </div>
            <div className="col-md-3">
              <div className="phone-sale ">
                <div className="card bg-light">
                  <span className="offer-sale">14%</span>
                  <img
                    src="../../images/lp4.webp"
                    className="card-img-top img-fluid"
                    alt="..."
                  />

                  <div className="card-body">
                    <h5 className="card-title">Samsung Galaxy Z Flip</h5>
                    <p className="card-text">Foldable Dynamic AMOLED</p>
                    <p className="card-text-2">
                      $599.00 <span>$699.00</span>
                    </p>
                    <a href="#" className="theme-button w-100 add-card">
                      Add to Cart
                    </a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
      <section className="sale">
        <div className="container">
          <div className="row">
            <h4 className="mb-5">Smart Watch</h4>
            <div className="col-md-3">
              <div className="phone-sale ">
                <div className="card ">
                  <span className="offer-sale">14%</span>
                  <img
                    src="../../images/w1.webp"
                    className="card-img-top img-fluid"
                    alt="..."
                  />

                  <div className="card-body">
                    <h5 className="card-title">Samsung Galaxy Z Flip</h5>
                    <p className="card-text">Foldable Dynamic AMOLED</p>
                    <p className="card-text-2">
                      $599.00 <span>$699.00</span>
                    </p>
                    <a href="#" className="theme-button w-100 add-card">
                      Add to Cart
                    </a>
                  </div>
                </div>
              </div>
            </div>
            <div className="col-md-3">
              <div className="phone-sale">
                <div className="card">
                  <span className="offer-sale">14%</span>
                  <img
                    src="../../images/w2.webp"
                    className="card-img-top img-fluid"
                    alt="..."
                  />

                  <div className="card-body">
                    <h5 className="card-title">Samsung Galaxy Z Flip</h5>
                    <p className="card-text">Foldable Dynamic AMOLED</p>
                    <p className="card-text-2">
                      $599.00 <span>$699.00</span>
                    </p>
                    <a href="#" className="theme-button w-100 add-card">
                      Add to Cart
                    </a>
                  </div>
                </div>
              </div>
            </div>
            <div className="col-md-3">
              <div className="phone-sale">
                <div className="card">
                  <span className="offer-sale">14%</span>
                  <img
                    src="../../images/w3.webp"
                    className="card-img-top img-fluid"
                    alt="..."
                  />

                  <div className="card-body">
                    <h5 className="card-title">Samsung Galaxy Z Flip</h5>
                    <p className="card-text">Foldable Dynamic AMOLED</p>
                    <p className="card-text-2">
                      $599.00 <span>$699.00</span>
                    </p>
                    <a href="#" className="theme-button w-100 add-card">
                      Add to Cart
                    </a>
                  </div>
                </div>
              </div>
            </div>
            <div className="col-md-3">
              <div className="phone-sale">
                <div className="card">
                  <span className="offer-sale">14%</span>
                  <img
                    src="../../images/w4.webp"
                    className="card-img-top img-fluid"
                    alt="..."
                  />

                  <div className="card-body">
                    <h5 className="card-title">Samsung Galaxy Z Flip</h5>
                    <p className="card-text">Foldable Dynamic AMOLED</p>
                    <p className="card-text-2">
                      $599.00 <span>$699.00</span>
                    </p>
                    <a href="#" className="theme-button w-100 add-card">
                      Add to Cart
                    </a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
      <section className="order-now">
        <div className="container">
          <div className="row">
            <div className="col-md-4">
              <div className="order-dv">
                <i class="bi bi-headset"></i>
                <div className="dv-t">
                  <h3>24/7 Support </h3>
                  <p>Reach to us anytime, anywhere for the best service</p>
                </div>
              </div>
            </div>
            <div className="col-md-4">
              <div className="order-dv">
                <i class="bi bi-check-square-fill"></i>
                <div className="dv-t">
                  <h3>28-day Guarantee </h3>
                  <p>Receive your money back for any malfunction in product</p>
                </div>
              </div>
            </div>
            <div className="col-md-4">
              <div className="order-dv">
                <i class="bi bi-car-front"></i>
                <div className="dv-t">
                  <h3>International Shipping</h3>
                  <p>
                    Only 1-2 days for national shipping, and 3-4 days worldwide
                  </p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
      <section className="upto">
        <div className="container">
          <div className="row align-items-center">
            <div className="col-md-6">
              <div className="upto-offer">
                <h3>Upto 55% Off Flash Sale</h3>
                <p>
                  Special deal that lasts for 3 days only. Find your desired
                  products now before it’s out of stock
                </p>
                <a href="#" className="theme-button text-white theme-title">
                  GET 50% OFF
                </a>
              </div>
            </div>
            <div className="col-md-6">
              <img src="../../images/upto.webp" alt="" className="img-fluid" />
            </div>
          </div>
        </div>
      </section>
      <section className="order-iphone">
        <div className="container">
          <div className="row">
            <div className="col-md-6">
              <img src="../../images/iphone.webp" className="img-fluid" />
            </div>
            <div className="col-md-6">
              <div className="iphone-text">
                <h3>Apple Iphone 13 Pro Max</h3>
                <p>
                  $599.00 <span>$699.00</span>
                </p>
                <img
                  src="../../images/check.png"
                  alt=""
                  className="img-fluid"
                />
                <img
                  src="../../images/check1.png"
                  alt=""
                  className="img-fluid"
                />
                <img
                  src="../../images/check3.png"
                  alt=""
                  className="img-fluid"
                />
              </div>
            </div>
          </div>
        </div>
      </section>
    </>
  );
};

About.propTypes = {
  name: pt.string,
  cardNumber: pt.number,
};

export default About;
