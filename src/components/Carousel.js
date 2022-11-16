import React from 'react';
import OwlCarousel from 'react-owl-carousel';
import 'owl.carousel/dist/assets/owl.carousel.css';
import 'owl.carousel/dist/assets/owl.theme.default.css';
const Carousel = () => {
    return (
        <>
            <div className="carousel">
                <div className="container-fluid">
                    <div className="car_t_h">
                        <p>WHAT OUR CLIENTS SAY.</p>
                    </div>
                    <OwlCarousel className='owl-theme'
                        loop margin={10}
                        dots={false}
                        nav={false}
                        items={3}
                        autoplay
                    >

                        <div class='item'>
                            <div className="outer-img">

                                <div className="img_c_car">
                                    <img src="../../images/card-1.png" alt="" className='img-fluid' />
                                    <p>They are great to work with. Been four years working with them, here are some key takeaways : only commit what they can deliver, cost efficient, 24/7 support, their design team is the best.
                                    </p>
                                    <h4>Jeff B, Healow</h4>
                                </div>
                            </div>
                        </div>
                        <div class='item'>
                            <div className="outer-img">
                                <div className="img_c_car">
                                    <img src="../../images/card-3.png" alt="" className='img-fluid' />
                                    <p>Professionals! Intrigued by the length they go to get the work done. Already one app delivered for my company and 2 more in pipeline...Highly impressed by their app developers!</p>
                                    <h4>Robert Page, Pocketsmith</h4>
                                </div>
                            </div>
                        </div>
                        <div class='item'>
                            <div className="outer-img">
                                <div className="img_c_car">
                                    <img src="../../images/card-2.png" alt="" className='img-fluid' />
                                    <p>They are a pleasure to deal with. They will take the time to understand what you want, provide real guidance and insight, and work with you to get the final product you want. I would definitely work with them again on the next project.</p>
                                    <h4>Dustin Baker, txtReminders</h4>
                                </div>
                            </div>
                        </div>
                        <div class='item'>
                            <div className="outer-img">
                                <div className="img_c_car">
                                    <img src="../../images/card-4.jpeg" alt="" className='img-fluid' />
                                    <p>They are a pleasure to deal with. They will take the time to understand what you want, provide real guidance and insight, and work with you to get the final product you want. I would definitely work with them again on the next project.</p>
                                    <h4>Dustin Baker, txtReminders</h4>
                                </div>
                            </div>
                        </div>



                    </OwlCarousel>
                </div>
            </div>
        </>
    )
}

export default Carousel
