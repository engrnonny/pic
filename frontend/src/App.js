
import React, { Component } from 'react';
import axios from 'axios';

import logo from './logo.svg';
import './App.css';


class App extends Component {
  constructor(props) {
    super(props);
    this.state = {
      ads: [],
    };
  }

  componentDidMount() {
      axios
        .get("/ads/")
        .then((res) => this.setState({
          ads: res.data
        }))
        .catch((err) => console.log(err));
    };

  render() {
    return (
      <div className="App">
        <header className="App-header">
          <img src={logo} className="App-logo" alt="logo" />
          <p>
            Edit <code>src/App.js</code> and save to reload.
          </p>
          <a
            className="App-link"
            href="https://reactjs.org"
            target="_blank"
            rel="noopener noreferrer"
          >
            Learn React
          </a>
        </header>
      </div>
    );
  }
}
export default App;
