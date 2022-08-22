
import React from 'react';

class About extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      about: []
    };
  }

  render() {
    return (
      <div className='about'>
        <h4>About</h4>
        <section>
          This is the about page
        </section>
      </div>
    );
  }
}

export default About;

