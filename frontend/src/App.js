import React, { Component } from 'react';
import { Outlet } from 'react-router-dom'
// import logo from './logo.svg';
import './App.css';

import MainHeader from './components/mainHeader';
import MainFooter from './components/mainFooter';


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
        <Outlet />
        <MainFooter />
      </main>
    );
  }
}
export default App;