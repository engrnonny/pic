
import React, { Component } from 'react';
import { Outlet, Link } from "react-router-dom";
import axios from 'axios';

// import logo from './logo.svg';
import './App.css';


class App extends Component {
  constructor(props) {
    super(props);
    this.state = {
      home_articles: [],
    };
  }

  componentDidMount() {
      axios
        .get('http://127.0.0.1:8000/articles/')
        .then(res => {
          this.setState({
            home_articles: res.data
        });
        console.log(this.state.home_articles);
      })
    };

  render() {
    return (
      <main className="App">
        <nav
          style={{
            borderBottom: "solid 1px",
            paddingBottom: "1rem",
          }}
        >
          <Link to="/invoices">Invoices</Link> |{" "}
          <Link to="/ads">Ads</Link>
        </nav>
        <Outlet />
        <section>
          Jumbotron section
        </section>
        <section>
          {this.state.home_articles.map((article) => {
            const { id, title, main_paragraph } = article;
            return (
              <div key={id} className='item'>
                <div>
                  <strong>{title}</strong>
                </div>
                <div>
                  {main_paragraph}
                </div>
                <br />
              </div>
            );
          })}
        </section>
        <section>
          Jumbotron section
        </section>
        <footer>
          Footer section
        </footer>
      </main>
    );
  }
}
export default App;
