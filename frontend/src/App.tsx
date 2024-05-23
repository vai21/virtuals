import React, { useEffect, useState } from 'react'
import axios from 'axios'
import TinderCard from 'react-tinder-card'
import './App.css';

// Some styling for the card 
const sampleImage = [
  './img/erlich.jpg',
  './img/monica.jpg',
  './img/jared.jpg',
  './img/dinesh.jpg',
  './img/richard.jpg',
]


function App() {
  const [users, setUsers] = useState([])

  // const characters = db
  const [lastDirection, setLastDirection] = useState()

  const getUsers = () => {
    axios.post('http://localhost:3000/api/user/recommendation', {
      name: "Rasid",
      age: "30",
      gender: "Male",
      location: "San Jose",
      university: "Columbia University",
      interest: "Gaming"
    })
    .then(res => {
      console.log(res.data)
      setUsers(res.data.data.rows)
    })
    .catch((err:string) => {
      console.log(err)
    })
  }

  const swiped = (direction: any, nameToDelete: any) => {
    console.log('removing: ' + nameToDelete)
    setLastDirection(direction)
  }

  const outOfFrame = (name: any) => {
    console.log(name + ' left the screen!')
  }

  useEffect(() => {
    getUsers()
  }, [])

  return (
    <div>
      <link href='https://fonts.googleapis.com/css?family=Damion&display=swap' rel='stylesheet' />
      <link href='https://fonts.googleapis.com/css?family=Alatsi&display=swap' rel='stylesheet' />
      <h1>Virtuals Tinder</h1>
      <div className='cardContainer'>
        {users.map((character:any, index) =>
          <TinderCard className='swipe' key={character.name} onSwipe={(dir) => swiped(dir, character.name)} onCardLeftScreen={() => outOfFrame(character.name)}>
            <div style={{ backgroundImage: `url('${sampleImage[index > 4 ? 4 : index]}')`, backgroundColor: '#000000' }} className='card'>
              <h3>{character.name}</h3>
            </div>
          </TinderCard>
        )}
      </div>
      {lastDirection ? <h2 className='infoText'>You swiped {lastDirection}</h2> : <h2 className='infoText' />}
    </div>
  )
}

export default App;
