import React, { useState, useEffect } from 'react'

const App = (props) => {
  const [gifs, setGifs] = useState([])

  useEffect(() => {
    fetch("/api/v1/gifs")
      .then(response => response.json())
      .then(bodyOfGifs => {
        setGifs(bodyOfGifs)
      })
  }, [])

  const gifImages = gifs.map((gifLink) => {
    return(
      <img src={gifLink}  height="200" width="200"></img>
    )
  })

  return (
    <div>
      <h1>Fabulous Images</h1>
      {gifImages}

    </div>
  )
}

export default App
