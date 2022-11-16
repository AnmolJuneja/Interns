import React from 'react'

const Card = (props) => {
  return (
    <>
      <div className="combined-text">
        <h4>{props.heading}</h4>
        <p className='theme__title'>{props.title}</p>
        <p className='theme__sub__title'>{props.titleSubTitle}</p>
      </div>
    </>
  )
}

export default Card
