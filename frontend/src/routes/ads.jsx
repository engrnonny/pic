
import React from 'react';
import axios from 'axios';

class Ads extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      ads: []
    };
  }

  componentDidMount() {
      axios
        .get('http://127.0.0.1:8000/ads/')
        .then(res => {
          this.setState({
            ads: res.data
        });
        console.log(this.state.ads);
      })
    };


  // componentDidMount() {
  //   this.timerID = setInterval(
  //     () => this.tick(),
  //     1000
  //   );
  // }

  // componentWillUnmount() {
  //   clearInterval(this.timerID);
  // }

  render() {
    return (
      <div>
        <h4>Ads</h4>
      {this.state.ads.map((ad) => {
        const { id, title, message } = ad;
        return (
          <div key={id} className='item'>
            <h4>{id}</h4>
            {/* <button onClick={() => removeItem(id)}>remove</button> */}
            <div>
              {title}
            </div>
            <div>
              {message}
            </div>
          </div>
        );
      })}
      </div>
    );
  }
}

export default Ads;
// export default function Ads() {
//         axios
//           .get('http://127.0.0.1:8000/ads/')
//           .then(res => {
//             this.setState({
//               ads: res.data
//           });
//           console.log(res.data.title);
//         })


//       return (
//         <div className="App">
//         </div>
//       );
//     }

