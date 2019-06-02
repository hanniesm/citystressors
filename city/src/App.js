import React, { Component } from 'react';
import './App.css';
import Header from './components/header'
import Walks from './components/walks'
// import {Map, InfoWindow, Marker, GoogleApiWrapper, Polyline} from 'google-maps-react';

class App extends Component {
    constructor(props) {
        super(props)
        this.state = {
            walks: [
                {
                    walk_id: 1,
                    title: "Walk 1",
                    description: "Walk from Parc La Fontaine to Concordia",
                    prewalkReflections: "Feeling a bit blue today",
                    postwalkReflections: "There is a lot of construction",
                    user_id: 1
                },
                {
                    walk_id: 2,
                    title: "Walk 2",
                    description: "Walk from Parc La Fontaine to Concordia",
                    prewalkReflections: "Beautiful day today",
                    postwalkReflections: "Hmm",
                    user_id: 2
                }
            ]
        }
          // currentUser: this.props.currentUser
        }

    handleOnOpen = event => {
        console.log('Connected to server');
    };
            

    render() {
        // const style = {
        //     width: '50%',
        //     height: '50%'
        // }
        // const triangleCoords = [
        //     {lat: 25.774, lng: -80.190},
        //     {lat: 18.466, lng: -66.118},
        //     {lat: 32.321, lng: -64.757},
        //     {lat: 25.774, lng: -80.190}
        //   ];

        return (
            <div className="App">
                <Header/>
                <Walks walks={this.state.walks}/>
            </div>
        );
    }
} 

export default App

// export default GoogleApiWrapper({
//   apiKey: ("Something")
// })(App)