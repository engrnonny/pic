
import React from 'react';
import axios from 'axios';
import { Link } from 'react-router-dom'

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
          <div>
            <h1>
              Professional Information Center
            </h1>
            <p>
              The best place for the all your professional needs.
            </p>
            <p>
              Get started with the latest information
            </p>
          </div>
        </section>
        <section id='trendingArticles'>
          {this.state.home_articles.map((article) => {
            const { id, title, main_paragraph, likes, views, article_review, group, slug } = article;
            return (
              <div key={id} className='item'>
                <div>
                  <div>
                    <strong>{title}</strong>
                  </div>
                  <div>
                    <span>
                      {likes.length} likes
                    </span>
                    <span>
                      {views} views
                    </span>
                    <span>
                      {article_review.length} comments
                    </span>
                  </div>
                </div>
                <div>
                  <p>
                    {main_paragraph}
                  </p>
                    <Link to={`articles/${group}/${slug}`}>
                    Read more</Link>
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

