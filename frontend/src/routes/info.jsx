
import React from 'react';
import { Outlet } from 'react-router-dom'

class Info extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      info: []
    };
  }

  render() {
    return (
      <div>
        <h4>Info</h4>
        <Outlet />
      </div>
    );
  }
}

export default Info;

