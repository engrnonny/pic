
import React, { Component } from 'react';
import { Outlet, Link } from "react-router-dom";
import axios from 'axios';

// import logo from './logo.svg';
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
        .get('http://127.0.0.1:8000/ads/test-1')
        .then(res => {
          this.setState({
            ads: res.data
        });
        console.log(res.data.title);
      })
    };

  render() {
    return (
      <div className="App">
      <nav
        style={{
          borderBottom: "solid 1px",
          paddingBottom: "1rem",
        }}
      >
        <Link to="/invoices">Invoices</Link> |{" "}
        <Link to="/expenses">Expenses</Link>
      </nav>
      <Outlet />
      </div>
    );
  }
}
export default App;
