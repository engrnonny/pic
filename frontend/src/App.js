import React, { Component } from 'react';

// import logo from './logo.svg';
import './App.css';

import MainHeader from './components/mainHeader';


class App extends Component {
  constructor(props) {
    super(props);
    this.state = {
      home_articles: [],
    };
  }

  render() {
    return (
      <main className="App">
        <MainHeader />
        <footer>
          Footer section
        </footer>
      </main>
    );
  }
}
export default App;


/