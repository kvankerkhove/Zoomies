import React from 'react'

function Errors({errors}) {
  console.log(errors)
    const renderErrors = errors.map(error => {
        return <li><small>{error}</small></li>
    })
  return (
    <ul style={{color: "red"}}>{renderErrors}</ul>
  )
}

export default Errors