import React from 'react'

const Synkers = (props) => {
    return (
        <>
            <div className="tutors">
                <div className="container">
                    <div className="row align-items-center">
                        <div className="col-lg-4 ">
                            <div className="qualified-Synkers">
                                <span></span>
                                <h3>{props.synHeading}</h3>
                                <h4 > {props.synTitle}</h4>
                                <p className='q_s_s_t'>{props.synTitleSub}</p>
                                <div className="button">
                                    <a href="#" className='theme-developing-button'><i class="bi bi-android2 pe-2"></i>Android</a>
                                    <a href="#" className='theme-developing-button'><i class="bi bi-apple pe-2"></i>iOS</a>
                                </div>
                            </div>
                        </div>
                        <div className="col-lg-6 offset-lg-2 offset-sm-0">
                            <div className={props.bgClass}>
                                <img src={props.imgSrc} alt="" className='first_syk' />
                                <img src={props.imgSrcFirst} alt="" className='d-lg-block d-none second_syk' />

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </>

    )
}

export default Synkers
