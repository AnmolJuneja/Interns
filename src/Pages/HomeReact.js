import React from 'react';
import pt from "prop-types";
import Card from '../components/Card';
import Synkers from '../components/Synkers';

import Carousel from '../components/Carousel';
const HomeReact = (props) => {

    return (
        <>
            <header>
                <div className="logo">
                    <a href="/"><svg xmlns="http://www.w3.org/2000/svg" width="42" height="42" viewBox="0 0 160 160"><path fill="#000" d="M135.13,127.06H151.2a0,0,0,0,1,0,0v16.07a0,0,0,0,1,0,0h0a16.07,16.07,0,0,1-16.07-16.07v0A0,0,0,0,1,135.13,127.06Z"></path><path fill="#000n" stroke='black' d="M102.68,68.4l36-68.4h20.66L111.78,85.65v57.48h0a18.19,18.19,0,0,1-18.19-18.2V85.65L46,0H66.86Z"></path><polygon points="79.42 143.13 0 143.13 0 0 30.49 0 30.49 15.9 16 15.9 16 127.23 79.42 127.23 79.42 143.13"></polygon></svg></a>
                </div>
                <div className="mane-menu">
                    <a href="#" className='theme-button link-btn d-none d-xl-block'>Let's Talk</a>
                    <div className="menu">
                        <a href="#">
                            <span className='f_l'></span>
                            <span className='s_l'></span>
                        </a>
                    </div>
                </div>
            </header>
            <section className="hero">
                <div className="container-fluid">
                    <div className="row">
                        <div className="col-lg-6 offset-lg-2 offset-md-0 col-12">
                            <div className="hero-title">

                                <h1><span>“</span>Not all your dreams may come true but certainly your IDEAS can.“</h1>
                                <h5>- Yati Labs</h5>
                                <h3>We are makers of digital products and experiences for<br /> startups, enterprises and forward looking brands.</h3>
                            </div>

                        </div>
                        <div className="col-lg-3 offset-1 ">
                            <div className="mobile d-lg-block d-none">
                                <svg xmlns="http://www.w3.org/2000/svg" width="381.002" height="697" viewBox="0 0 381.002 697"><defs><mask id="mobileMask"><rect x="-5" y="-90" width="370" height="110%" fill="white"></rect></mask></defs><g id="mobile" transform="translate(-33.738 78.14)" mask="url(#mobileMask)"><g id="body"><path id="Path_66" data-name="Path 66" class="cls-1" d="M414.74-23.14v587a55.007,55.007,0,0,1-55,55h-261a55,55,0,0,1-55-55v-587a54.994,54.994,0,0,1,55-55h53v16a20.781,20.781,0,0,0,1.65,8.17,20.987,20.987,0,0,0,4.5,6.68,20.945,20.945,0,0,0,6.67,4.5,20.973,20.973,0,0,0,8.18,1.65h136a20.96,20.96,0,0,0,8.17-1.65,20.987,20.987,0,0,0,6.68-4.5,20.987,20.987,0,0,0,4.5-6.68,20.96,20.96,0,0,0,1.65-8.17v-16h30A55,55,0,0,1,414.74-23.14Z"></path><path fill='white' stroke='black' stroke-width="2.3px" id="Path_67" data-name="Path 67" class="cls-2" d="M413.74-23.14v587a54,54,0,0,1-54,54h-261a54,54,0,0,1-54-54v-587a53.992,53.992,0,0,1,54-54h53v15a20.781,20.781,0,0,0,1.65,8.17,20.987,20.987,0,0,0,4.5,6.68,20.945,20.945,0,0,0,6.67,4.5,20.973,20.973,0,0,0,8.18,1.65h136a20.96,20.96,0,0,0,8.17-1.65,20.987,20.987,0,0,0,6.68-4.5,20.987,20.987,0,0,0,4.5-6.68,20.96,20.96,0,0,0,1.65-8.17v-15h30A54,54,0,0,1,413.74-23.14Z"></path></g><rect id="down-b" width="3" height="56" transform="translate(33.738 42.858)"></rect><rect id="up-b" width="3" height="56" transform="translate(33.738 108.858)"></rect></g></svg>
                            </div>

                        </div>
                    </div>
                </div>
            </section>
            <section className="combined">
                <div className="container-fluid">
                    <div className="row">
                        <div className="combined-heading">
                            <p>WHAT WE DO.</p>
                            <h3>Your ideas combined with our perfect services suite will result in the seamlessly integrated experience of your product that your users will love.</h3>
                        </div>
                        <div className="col-md-5 offset-md-0 offset-lg-2">
                            <Card heading="App Development" title="iOS · Android · Xamarin · Flutter · React Native" titleSubTitle="Planning, testing and developing of the mobile application by the expert team of developers targeting innovation and creativity which gratifies the users." />
                        </div>
                        <div className="col-md-5 ">
                            <Card heading="Web Development" title="Website · SEO · CI/CD · REST APIs" titleSubTitle="Web is ever evolving, flexible & ubiquitous. We ensure that web applications surpass users expectations in the mobile age, including accessibility and responsive design." />
                        </div>
                        <div className="col-md-5 offset-md-0 offset-lg-2">
                            <Card heading="Product Design" title="Visual & UX Design · User Testing · Content Strategy" titleSubTitle="We keep in mind the vision, strategy and process to design a product which results in a beautiful amalgamation of the needs of the clients, technologies and growth." />
                        </div>
                        <div className="col-md-5 ">
                            <Card heading="Strategy & Innovation" title="Product Strategy · Concept/Idea Validation" titleSubTitle="We foster a shared understanding among the clients, developers, brand and vision in order to get the bestest version as per the demand in the marketplace." />
                        </div>
                        <div className="col-md-5 offset-md-0 offset-lg-2">
                            <Card heading="Research & Insights" title="User Research · Feature Prioritization · Analytics Audits" titleSubTitle="Quality, not quantity is a yardstick of our company’s success. We delve into rich qualitative research and fulfil the needs of the users for best interactivity and experiences." />
                        </div>
                        <div className="col-md-5">
                            <Card heading="Growth Marketing" title="Personalization · Marketing Automation · Performance" titleSubTitle="Data-driven strategies maximize lifecycle value. We’ll help you define metrics for acquisition, retention, and conversion, then align your technology and marketing execution." />
                        </div>
                    </div>
                </div>
            </section>
            <section className="define">
                <div className="container">
                    <div className="row align-items-center">
                        <div className="define-text ">
                            <p>OUR WORK.</p>
                            <h3>We work closely with our clients to define, design and develop transformative user experiences. We believe in what we do and it’s the quality, diligence and sincerity that we put into making a product that distinguishes us from the crowd.</h3>
                        </div>
                        <Synkers synHeading="Synkers" synTitle="Qualified Tutors" synTitleSub="Find an expert private tutor for all your needs." imgSrc="../../images/synkers1.png" imgSrcFirst="../../images/synkers2.png" bgClass="item first" />
                        <Synkers synHeading="Careem Now" synTitle="Your New Delivery App" synTitleSub="Delighting you with your favourite meals, delivered directly to anywhere you are." imgSrc="../../images/careem1.png" imgSrcFirst="../../images/careem2.png" bgClass="item second" />
                        <Synkers synHeading="Lybrate" synTitle="Consult a Doctor" synTitleSub="India’s #1 Medical platform connecting over 10 million users to over 150K top doctors and pathology labs." imgSrc="../../images/imgText1.png" imgSrcFirst="../../images/imgText2.png" bgClass="item third" />

                    </div>
                </div>
            </section>


            <section className="digital_logo">
                <div className="container-fluid">
                    <div className="row align-items-center ">
                        <div className="col-lg-6 ">
                            <div className="digital-text">
                                <h3>We Are Yati Labs.</h3>
                                <p>Creating customized digital experiences for your ideas. Yati Labs is a true development partner whose mission is to design, build & innovate for your business.</p>

                                <p className='pt-3'> We help kickstart startups. We fuel enterprise software. We expand horizons. We are simply passionate about developing truly memorable mobile apps and websites.</p>
                            </div>
                        </div>
                        <div className="col-lg-5 ">
                            <div className="box">
                                <div className="box-link">
                                    <a href="#">Explore<br /> Our Work <img src="../../images/arrow.svg" alt="arrow" className='arrow' /> </a>

                                </div>
                            </div>
                        </div>

                        <div className="img-bg-logo">
                            <img src="../../images/care-1.png" alt="" className='img-fluid' />
                            <img src="../../images/care-2.png" alt="" className='img-fluid' />
                            <img src="../../images/care-3.jpg" alt="" className='img-fluid' />
                            <img src="../../images/care-4.png" alt="" className='img-fluid' />
                            <img src="../../images/care-5.png" alt="" className='img-fluid' />
                            <img src="../../images/care-6.png" alt="" className='img-fluid' />

                        </div>

                    </div>
                </div>
            </section>
            <Carousel />
            <section className="insights">
                <div className="container">
                    <div className="row">
                        <p>INSIGHTS.</p>
                        <div className="col-12">
                            <div className="design_definition ">
                                <img src="../../images/first-1.png" alt="" className='img-fluid ' />
                                <div className="d_d_t">
                                    <a href="#">
                                        <span>Top App Ideas For Starting up Your Entrepreneurial Journey in 2021</span> </a>
                                    <h4>10 April</h4>
                                </div>
                            </div>
                        </div>
                        <div className="col-12">
                            <div className="design_definition ">
                                <img src="../../images/first-2.png" alt="" className='img-fluid ' />
                                <div className="d_d_t">
                                    <a href="#">
                                        <span>What Is UI/UX Design? A Comprehensive Guide</span> </a>
                                    <h4>10 April</h4>
                                </div>
                            </div>
                        </div>
                        <div className="col-12">
                            <div className="design_definition ">
                                <img src="../../images/first-3.png" alt="" className='img-fluid ' />
                                <div className="d_d_t">
                                    <a href="#">
                                        <span>Minimum Viable Product: The Do’s and Dont’s For Testing Your App Idea</span> </a>
                                    <h4>10 April</h4>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <section className="from-file">
                <div className="container">
                    <div className="row">
                        <div className="col-lg-5 ">
                            <div className="form-title">
                                <h3>Let’s Talk</h3>
                                <p>We’ve worked with clients of all sizes, from enterprise brands to funded startups. Let’s talk about your project and how we can help provide value.</p>
                            </div>
                        </div>
                        <div className="col-lg-5 offset-lg-1">

                            <div className=' form'>
                                <div className="row">
                                    <div className="col-md-6">
                                        <input type="text" className="form-control theme-input" placeholder='Name' />

                                    </div>
                                    <div className="col-md-6">

                                        <input type="email" className="form-control theme-input" placeholder='email' />
                                    </div>


                                    <div className="col-md-6">

                                        <input type="text" className="form-control theme-input" placeholder='City' />
                                    </div>
                                    <div className="col-md-6">

                                        <input type="mobile" className="form-control theme-input" placeholder='Phone' />
                                    </div>
                                    <div className="col-md-12">

                                        <textarea className="form-control theme-input" placeholder='Tell us about your project' rows="3"></textarea>
                                    </div>

                                    <div className="col-12">
                                        <div class="form-check mt-4 mb-2">
                                            <input className="form-check-input" type="checkbox" id="gridCheck" />
                                            <label className="form-check-label" for="gridCheck">
                                                Send me a copy of nda
                                            </label>
                                        </div>
                                    </div>
                                    <div className="col-md-12">
                                        <div className="input-group mt-1">
                                            <input type="text" className="form-control " placeholder="5+4=" />
                                            <span className="input-group-text py-3">Enter answer</span>
                                        </div>
                                    </div>
                                    <div className="col-12">
                                        <div className="submit-btn">
                                            <button type="submit" className="theme-button">SUBMIT</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <footer>
                <div className="last">
                    <div className="container">
                        <div className="row">
                            <div className="last_img">
                                <img src="../../images/footer-logo.svg" alt="" className='img-fluid' />
                            </div>
                            <div className="col-md-3">

                            </div>
                            <div className="col-md-3">
                                <div className="f_l_t">
                                    <h4>India</h4>
                                    <p>SCF 46, First Floor <br />Sector 4, 134112<br />Panchkula, India</p>

                                </div>
                            </div>
                            <div className="col-md-3 ">
                                <div className="f_l_t f_s">
                                    <h4>U.S.A</h4>
                                    <p>4990 Lighthouse Cir<br />Apt E, 33063<br />Coconut Creek, FL, USA<br /></p>

                                </div>
                            </div>
                            <div className="col-md-3">
                                <div className="f_l_t f_l">
                                    <h4>Dubai</h4>
                                    <p>Office No. 201,<br />Saeed Al Tayer Building<br />Al Rafaa Area, Dubai<br /></p>

                                </div>
                            </div>
                            <div className="col-md-3"></div>
                            <div className="col-md-9">
                                <div className="listing">
                                    <ul>
                                        <li><a href="#">Home</a></li>
                                        <li><a href="#">Work</a></li>
                                        <li><a href="#">Contact</a></li>
                                        <li><a href="#">Insights</a></li>
                                    </ul>
                                    <p>© 2022 Yatilabs.com. All Rights Reserved.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </footer>

        </>
    )
}
HomeReact.prototype = {
    name: pt.string,
}


export default HomeReact



