
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
            <p>
              PIC is a free guide platform that gives you a plan to avoid failure and achieve success.
            </p>
            <p>
              We help you survive, thrive, be accepted, be loved and achieve great things in your career.
            </p>
        </section>
      </div>
    );
  }
}

export default About;

