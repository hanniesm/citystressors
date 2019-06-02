import React, { Component } from 'react';
import logo from '../logo.svg';

class Header extends Component {
    render() {
        return (
            <div className="App-header">
                <img src={logo} className="App-logo" alt="logo" />
                <h2>City Stresses</h2>
                <h4>Mapping the stresses of city life</h4>
            </div>
        )
    }
}

export default Header