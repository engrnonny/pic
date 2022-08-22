
import React from 'react';
import axios from 'axios';

class Home extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      home_articles: []
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
      <div className="home">
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
      </div>
    );
  }
}

export default Home;

