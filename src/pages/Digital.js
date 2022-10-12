import React from "react";

const Demo = () => {
  return (
    <>
      <section className="banner-first">
        <div className="container-fluid">
          <div className="row ">
            <div className="col-lg-6 col-sm-12">
              <div className="technology">
                <h1>Technology & design studio</h1>
                <button className="theme-button first">view Showcase</button>
              </div>
            </div>
          </div>
          <div className="banner-images">
            <div className="link">
              <div className="link-1">
                <img src="../../images/bubble-26.png" />
              </div>
              <div className="link-1 link-2">
                <img src="../../images/banner-shape-1.png" />
              </div>
              <div className="link-over">
                <img src="../../images/banner-shape-2.png" />
              </div>
              <div className="link-4">
                <img src="../../images/bubble-14.png" />
              </div>
              <div className="link-5">
                <img src="../../images/bubble-16.png" />
              </div>
            </div>
          </div>
        </div>
      </section>
      <section className="services">
        <div className="container-fluid">
          <div className="row">
            <div className="col-lg-6">
              <div className="services-text">
                <h4 className="title ">What We Can Do For You</h4>
                <h3 className="heading">
                  Services we can<br></br> help you with
                </h3>
              </div>
            </div>
          </div>
          <div className="row">
            <div className="col-lg-4">
              <div className="cards">
                <div className="icon">
                  <img src="../../images/icon-1.png" alt="" className="img" />
                </div>
                <div className="cards-text ps-4">
                  <h3>Design</h3>
                  <p>
                    Simply drag and drop photos and videos into your workspace
                    to automatically...
                  </p>
                  <a href="" className="out-text">
                    Find out more
                  </a>
                </div>
              </div>
            </div>
            <div className="col-lg-4">
              <div className="cards card1">
                <div className="icon">
                  <img src="../../images/icon-2.png" alt="" />
                </div>
                <div className="cards-text ps-4">
                  <h3>Development</h3>
                  <p>
                    Simply drag and drop photos and videos into your workspace
                    to automatically...
                  </p>
                  <a href="" className="out-text">
                    Find out more
                  </a>
                </div>
              </div>
            </div>
            <div className="col-lg-4">
              <div className="cards card2">
                <div className="icon">
                  <img src="../../images/icon-3.png" alt="" />
                </div>
                <div className="cards-text ps-4">
                  <h3>Online marketing</h3>
                  <p>
                    Simply drag and drop photos and videos into your workspace
                    to automatically...
                  </p>
                  <a href="" className="out-text">
                    Find out more
                  </a>
                </div>
              </div>
            </div>
          </div>
          <div className="services-circle">
            <div className="search-icon">
              <img src="../../images/circle-2.png" alt="" className="w-100" />
            </div>
            <div className="yellow-circle">
              <img src="../../images/bubble-2.png" alt="" />
            </div>
            <div className="danger-circle">
              <img src="../../images/bubble-1.png" alt="" />
            </div>
          </div>
        </div>
      </section>
      <section className="ourProject">
        <div className="container-fluid">
          <div className="row">
            <div className="col-md-6">
              <div className="our-text">
                <p className="title">Our Project</p>
                <h3 className="heading">
                  Some of our <br />
                  finest work.
                </h3>
              </div>
            </div>
          </div>
          <ul className="nav nav-pills mb-3" id="pills-tab" role="tablist">
            <li class="nav-item" role="presentation">
              <button
                class="nav-link active button"
                id="pills-home-tab"
                data-bs-toggle="pill"
                data-bs-target="#pills-home"
                type="button"
                role="tab"
                aria-controls="pills-home"
                aria-selected="true"
              >
                Home
              </button>
            </li>
            <li class="nav-item" role="presentation">
              <button
                class="nav-link"
                id="pills-profile-tab"
                data-bs-toggle="pill"
                data-bs-target="#pills-profile"
                type="button"
                role="tab"
                aria-controls="pills-profile"
                aria-selected="false"
              >
                Profile
              </button>
            </li>
            <li class="nav-item" role="presentation">
              <button
                class="nav-link"
                id="pills-contact-tab"
                data-bs-toggle="pill"
                data-bs-target="#pills-contact"
                type="button"
                role="tab"
                aria-controls="pills-contact"
                aria-selected="false"
              >
                Contact
              </button>
            </li>
          </ul>
          <div className="tab-content" id="pills-tabContent">
            <div
              class="tab-pane fade show active"
              id="pills-home"
              role="tabpanel"
              aria-labelledby="pills-home-tab"
            >
              <div className="row">
                <div className="col-md-6">
                  <div className="card">
                    <div className="cardDiamond">
                      <img
                        src="../../images/project-1.png"
                        className="card-img-top"
                        alt="project-1"
                      />
                    </div>
                    <div className="card-body">
                      <h3 className="card-heading">Creative Agency</h3>

                      <p className="card-text">Branding,Website,App</p>
                    </div>
                  </div>
                </div>
                <div className="col-md-6">
                  <div className="card">
                    <div className="cardDiamond">
                      <img
                        src="../../images/project-2.png"
                        className="card-img-top"
                        alt="project-2"
                      />
                    </div>
                    <div className="card-body">
                      <h3 className="card-heading">Digital Marketing</h3>

                      <p className="card-text">Logo, Website, Mobile</p>
                    </div>
                  </div>
                </div>
                <div className="col-md-6">
                  <div className="card ">
                    <div className="cardDiamond">
                      <img
                        src="../../images/project-3.png"
                        className="card-img-top"
                        alt="project-3"
                      />
                    </div>
                    <div class="card-body">
                      <h3 className="card-heading">Digital Agency</h3>

                      <p className="card-text">Website, UI/UX</p>
                    </div>
                  </div>
                </div>
                <div className="col-md-6">
                  <div className="card">
                    <div className="cardDiamond">
                      <img
                        src="../../images/project-4.png"
                        className="card-img-top"
                        alt="project-4"
                      />
                    </div>
                    <div className="card-body">
                      <h3 className="card-heading">Plan Management</h3>

                      <p className="card-text">Branding, Website, Mobile</p>
                    </div>
                  </div>
                </div>
                <div className="col-md-6">
                  <div className="card">
                    <div className="cardDiamond">
                      <img
                        src="../../images/project-5.png"
                        className="card-img-top"
                        alt="project-4"
                      />
                    </div>
                    <div className="card-body">
                      <div>
                        <h3 className="card-heading">Social Engagement</h3>
                      </div>
                      <p className="card-text">Design, Development</p>
                    </div>
                  </div>
                </div>
                <div className="col-md-6">
                  <div className="card">
                    <div className="cardDiamond">
                      <img
                        src="../../images/project-6.png"
                        className="card-img-top"
                        alt="project-6"
                      />
                    </div>
                    <div className="card-body">
                      <h3 className="card-heading">Web Application</h3>

                      <p className="card-text">Logo, Webapp, Mobile</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div
              class="tab-pane fade"
              id="pills-profile"
              role="tabpanel"
              aria-labelledby="pills-profile-tab"
            >
              <div className="row">
                <div className="col-md-6">
                  <div className="card ">
                    <div className="cardDiamond">
                      <img
                        src="../../images/project-3.png"
                        className="card-img-top"
                        alt="project-3"
                      />
                    </div>
                    <div class="card-body">
                      <h3 className="card-heading">Digital Agency</h3>

                      <p className="card-text">Website, UI/UX</p>
                    </div>
                  </div>
                </div>
                <div className="col-md-6">
                  <div className="card">
                    <div className="cardDiamond">
                      <img
                        src="../../images/project-4.png"
                        className="card-img-top"
                        alt="project-4"
                      />
                    </div>
                    <div className="card-body">
                      <h3 className="card-heading">Plan Management</h3>

                      <p className="card-text">Branding, Website, Mobile</p>
                    </div>
                  </div>
                </div>
                <div className="col-md-6">
                  <div className="card">
                    <div className="cardDiamond">
                      <img
                        src="../../images/project-5.png"
                        className="card-img-top"
                        alt="project-4"
                      />
                    </div>
                    <div className="card-body">
                      <div>
                        <h3 className="card-heading">Social Engagement</h3>
                      </div>
                      <p className="card-text">Design, Development</p>
                    </div>
                  </div>
                </div>
                <div className="col-md-6">
                  <div className="card">
                    <div className="cardDiamond">
                      <img
                        src="../../images/project-6.png"
                        className="card-img-top"
                        alt="project-6"
                      />
                    </div>
                    <div className="card-body">
                      <h3 className="card-heading">Web Application</h3>

                      <p className="card-text">Logo, Webapp, Mobile</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div
              class="tab-pane fade"
              id="pills-contact"
              role="tabpanel"
              aria-labelledby="pills-contact-tab"
            >
              <div className="row">
                <div className="col-md-6">
                  <div className="card">
                    <div className="cardDiamond">
                      <img
                        src="../../images/project-1.png"
                        className="card-img-top"
                        alt="project-1"
                      />
                    </div>
                    <div className="card-body">
                      <h3 className="card-heading">Creative Agency</h3>

                      <p className="card-text">Branding,Website,App</p>
                    </div>
                  </div>
                </div>
                <div className="col-md-6">
                  <div className="card">
                    <div className="cardDiamond">
                      <img
                        src="../../images/project-2.png"
                        className="card-img-top"
                        alt="project-2"
                      />
                    </div>
                    <div className="card-body">
                      <h3 className="card-heading">Digital Marketing</h3>

                      <p className="card-text">Logo, Website, Mobile</p>
                    </div>
                  </div>
                </div>
                <div className="col-md-6">
                  <div className="card ">
                    <div className="cardDiamond">
                      <img
                        src="../../images/project-3.png"
                        className="card-img-top"
                        alt="project-3"
                      />
                    </div>
                    <div class="card-body">
                      <h3 className="card-heading">Digital Agency</h3>

                      <p className="card-text">Website, UI/UX</p>
                    </div>
                  </div>
                </div>
                <div className="col-md-6">
                  <div className="card">
                    <div className="cardDiamond">
                      <img
                        src="../../images/project-4.png"
                        className="card-img-top"
                        alt="project-4"
                      />
                    </div>
                    <div className="card-body">
                      <h3 className="card-heading">Plan Management</h3>

                      <p className="card-text">Branding, Website, Mobile</p>
                    </div>
                  </div>
                </div>
                <div className="col-md-6">
                  <div className="card">
                    <div className="cardDiamond">
                      <img
                        src="../../images/project-5.png"
                        className="card-img-top"
                        alt="project-4"
                      />
                    </div>
                    <div className="card-body">
                      <div>
                        <h3 className="card-heading">Social Engagement</h3>
                      </div>
                      <p className="card-text">Design, Development</p>
                    </div>
                  </div>
                </div>
                <div className="col-md-6">
                  <div className="card">
                    <div className="cardDiamond">
                      <img
                        src="../../images/project-6.png"
                        className="card-img-top"
                        alt="project-6"
                      />
                    </div>
                    <div className="card-body">
                      <h3 className="card-heading">Web Application</h3>

                      <p className="card-text">Logo, Webapp, Mobile</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div className="search-icon2">
            <div className="demo">
              <img src="../../images/circle-2.png" alt="" className="w-100" />
            </div>
            <div className="bg-yellow d-none d-md-block">
              <img src="../../images/bubble-2.png" alt="" />
            </div>
          </div>
        </div>
      </section>
      <section className="movement">
        <div className="container">
          <div className="row">
            <div className="design">
              <h4 className="title">Featured Case Study</h4>
              <h3 className="heading text-white">Design startup movement</h3>
              <p className="text-title">
                In vel varius turpis, non dictum sem. Aenean in efficitur ipsum,
                <br />
                in egestas ipsum. Mauris in mi ac tellus.
              </p>
            </div>
            <div className="col-lg-3 col-md-6">
              <div className="card">
                <i class="bi bi-emoji-smile"></i>
                <h3 className="text-heading">15+</h3>
                <p className="text-title">Projects deliverd</p>
              </div>
            </div>
            <div className="col-lg-3 col-md-6">
              <div className="card">
                <i className="bi bi-bar-chart"></i>
                <h3 className="text-heading">360+</h3>
                <p className="text-title">Projects deliverd</p>
              </div>
            </div>
            <div className="col-lg-3 col-md-6">
              <div className="card">
                <i class="bi bi-people-fill"></i>
                <h3 className="text-heading">600+</h3>
                <p className="text-title">Specialist</p>
              </div>
            </div>
            <div className="col-lg-3 col-md-6">
              <div className="card">
                <i class="bi bi-apple"></i>
                <h3 className="text-heading">64+</h3>
                <p className="text-title">Years of operation</p>
              </div>
            </div>
          </div>
        </div>
      </section>
      <section className="getting">
        <div className="container-fluid">
          <div className="row">
            <div className="col-lg-6">
              <div className="getting-text">
                <h4 className="title">Testimonial</h4>
                <h3 className="heading">From getting started</h3>
                <p className="text-title">
                  Nulla facilisi. Nullam in magna id dolor blandit rutrum eget
                  vulputate augue sed eu leo eget risus imperdiet.
                </p>
              </div>
            </div>
          </div>
          <div className="row">
            <div className="col-md-4">
              <div className="started">
                <img src="../../images/yelp-2.png" alt="" />
                <p>
                  “ Donec metus lorem, vulputate at sapien sit amet, auctor
                  iaculis lorem. In vel hendrerit nisi. Vestibulum eget risus
                  velit. ”
                </p>
              </div>
              <div className="d-flex">
                <div className="floyd">
                  <img src="../../images/testimonial-1.png" alt="" />
                </div>

                <div className="text-floyd">
                  <p>Darrell Steward</p>
                  <p>Executive Chairman</p>
                </div>
              </div>
            </div>
            <div className="col-md-4">
              <div className="started">
                <img src="../../images/google-2.png" alt="" />
                <p>
                  “ Donec metus lorem, vulputate at sapien sit amet, auctor
                  iaculis lorem. In vel hendrerit nisi. Vestibulum eget risus
                  velit. ”
                </p>
              </div>
              <div className="d-flex">
                <div className="floyd">
                  <img src="../../images/testimonial-2.png" alt="" />
                </div>

                <div className="text-floyd">
                  <p>Darrell Steward</p>
                  <p>Executive Chairman</p>
                </div>
              </div>
            </div>
            <div className="col-md-4">
              <div className="started">
                <img src="../../images/fb-2.png" alt="" />
                <p>
                  “ Donec metus lorem, vulputate at sapien sit amet, auctor
                  iaculis lorem. In vel hendrerit nisi. Vestibulum eget risus
                  velit. ”
                </p>
              </div>
              <div className="d-flex">
                <div className="floyd">
                  <img src="../../images/testimonial-3.png" alt="" />
                </div>

                <div className="text-floyd">
                  <p>Darrell Steward</p>
                  <p>Executive Chairman</p>
                </div>
              </div>
            </div>
          </div>
          <div className="images-danger">
            <img src="../../images/bubble-1.png" alt="" />
          </div>
        </div>
      </section>
      <section className="solutions">
        <div className="container-fluid">
          <div className="row">
            <div className="col-md-6">
              <div className="solution-text">
                <h4 className="title">Top Clients</h4>
                <h3 className="heading text-white">
                  We’ve built solutions for...
                </h3>
                <p className="text-title">
                  Design anything from simple icons to fully featured websites
                  and applications.
                </p>
              </div>
            </div>
            <div className="col-md-6"></div>
            <div className="col-md-3 col-6">
              <div className="grid-icon">
                <img
                  src="../../images/brand-1.png"
                  alt=""
                  className="img-fluid"
                />
              </div>
            </div>
            <div className="col-md-3 col-6">
              <div className="grid-icon">
                <img
                  src="../../images/brand-2.png"
                  alt="brand-2"
                  className="img-fluid"
                />
              </div>
            </div>
            <div className="col-md-3 col-6">
              <div className="grid-icon">
                <img
                  src="../../images/brand-3.png"
                  alt="brand-3"
                  className="img-fluid"
                />
              </div>
            </div>
            <div className="col-md-3 col-6">
              <div className="grid-icon">
                <img
                  src="../../images/brand-4.png"
                  alt="brand-4"
                  className="img-fluid"
                />
              </div>
            </div>
            <div className="col-md-3 col-6">
              <div className="grid-icon">
                <img
                  src="../../images/brand-5.png"
                  alt="brand-5"
                  className="img-fluid"
                />
              </div>
            </div>
            <div className="col-md-3 col-6">
              <div className="grid-icon">
                <img
                  src="../../images/brand-6.png"
                  alt="brand-6"
                  className="img-fluid"
                />
              </div>
            </div>
            <div className="col-md-3 col-6">
              <div className="grid-icon">
                <img
                  src="../../images/brand-7.png"
                  alt="brand-7"
                  className="img-fluid"
                />
              </div>
            </div>
            <div className="col-md-3 col-6">
              <div className="grid-icon">
                <img
                  src="../../images/brand-8.png"
                  alt="brand-8"
                  className="img-fluid"
                />
              </div>
            </div>
          </div>
          <div className="line-images">
            <img src="../../images/line-9.png" alt="line-9" />
          </div>
        </div>
      </section>
      <section className="latest-news">
        <h4 className="title">What's Going On</h4>
        <h3 className="heading">Latest stories</h3>
        <p className="text-title">
          News From Abstrak And Around The World Of Web Design And
          <br />
          Complete Solution of Online Digital Marketing
        </p>
        <div className="line-circle">
          <img src="../../images/bubble-1.png" alt="" />
        </div>
        <div className="line-images">
          <img src="../../images/line-2.png" alt="" className="img-fluid" />
        </div>
      </section>
      <section className="follow">
        <div className="container-fluid">
          <div className="row g-0">
            <div className="col-lg-6">
              <div className="card-1">
                <div className="thumb">
                  <img src="../../images/thumb_5.png" alt="thumb_1" />
                </div>
                <div className="thumb-text">
                  <h3>Follow your own design process, whatever gets you...</h3>
                  <p>
                    Want to know the one thing that every successful digital
                    marketer does first to ensure they get the biggest return
                    on...
                  </p>
                  <a href="#">Learn more</a>
                </div>
              </div>
            </div>
            <div className="col-lg-6">
              <div className="card-1 card-2">
                <div className="thumb">
                  <img src="../../images/thumb_1.png" alt="thumb_1" />
                </div>
                <div className="thumb-text ">
                  <h3>Follow your own design process, whatever gets you...</h3>
                  <p>
                    Want to know the one thing that every successful digital
                    marketer does first to ensure they get the biggest return
                    on...
                  </p>
                  <a href="#">Learn more</a>
                </div>
              </div>
            </div>
          </div>
          <div className="follow-circle ">
            <img
              src="../../images/bubble-2.png"
              alt=""
              className="d-none d-md-block"
            />
          </div>
        </div>
      </section>
      <section className="successful">
        <div className="container-fluid">
          <div className="successful-text">
            <h4 className="title text-warning">Let's Work Together</h4>
            <h3 className="heading text-white">Need a successful project?</h3>
            <a href="#" className="theme-button mb-5">
              Estimate Project
            </a>
          </div>
          <div className="icon-images">
            <div className="cartoon-1">
              <img
                src="../../images/laptop-poses.png"
                alt="laptop-poses"
                className="img-fluid"
              />
            </div>
            <div className="cartoon-2">
              <img
                src="../../images/chat-group.png"
                alt="chat-group"
                className="img-fluid"
              />
            </div>
            <div className="cartoon-3">
              <img
                src="../../images/bill-pay.png"
                alt="bill-pay"
                className="img-fluid"
              />
            </div>
          </div>
        </div>
      </section>

      <footer>
        <div className="touch">
          <div className="container-fluid">
            <div className="row">
              <div className="icon-social">
                <i className="bi bi-facebook"></i>
                <i className="bi bi-twitter"></i>
                <i className="bi bi-pinterest"></i>
                <i className="bi bi-linkedin"></i>
                <i className="bi bi-instagram"></i>
                <i className="bi bi-vimeo"></i>
                <i className="bi bi-yin-yang"></i>
                <i className="bi bi-behance"></i>
              </div>
              <div className="col-lg-6 col-12">
                <div className="touch-text">
                  <h3 className="heading">Get in touch!</h3>
                  <p className="text-title">
                    Fusce varius, dolor tempor interdum tristique, dui urna bib
                    endum magna, ut ullamcorper purus
                  </p>
                  <div className="input-btn">
                    <div className="input-group mb-3">
                      <span className="input-group-text">
                        <i className="bi bi-envelope-open"></i>
                      </span>
                      <input
                        type="text"
                        className="form-control p-3"
                        placeholder="Email address"
                      />
                      <span className="input-group-text bg-primary text-white m-2 py-2 px-4 ">
                        Subscribe
                      </span>
                    </div>
                  </div>
                </div>
              </div>
              <div className="col-lg-6 col-12">
                <div className="row">
                  <div className="col-lg-6">
                    <div className="listing-design">
                      <ul>
                        <li>
                          <a href="#" className="listing-heading">
                            Services
                          </a>
                        </li>
                        <li>
                          <a href="#">Design</a>
                        </li>
                        <li>
                          <a href="#">Development</a>
                        </li>
                        <li>
                          <a href="#">Online marketing</a>
                        </li>
                        <li>
                          <a href="#">Business</a>
                        </li>
                        <li>
                          <a href="#">Technology</a>
                        </li>
                        <li>
                          <a href="#">Content strategy</a>
                        </li>
                      </ul>
                    </div>
                  </div>
                  <div className="col-lg-3">
                    <div className="listing-design">
                      <ul>
                        <li>
                          <a href="#" className="listing-heading">
                            Resourses
                          </a>
                        </li>
                        <li>
                          <a href="#">Blog</a>
                        </li>
                        <li>
                          <a href="#">Case Studies</a>
                        </li>
                        <li>
                          <a href="#">Portfolio</a>
                        </li>
                      </ul>
                    </div>
                  </div>
                  <div className="col-lg-3">
                    <div className="listing-design">
                      <ul>
                        <li>
                          <a href="#" className="listing-heading">
                            Support
                          </a>
                        </li>
                        <li>
                          <a href="#">Contact</a>
                        </li>
                        <li>
                          <a href="#">Privacy Policy</a>
                        </li>
                        <li>
                          <a href="#">Terms of Use</a>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </footer>
    </>
  );
};

export default Demo;
