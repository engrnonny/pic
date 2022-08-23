
import React, { useEffect } from 'react';
import axios from 'axios';
import { useParams } from 'react-router-dom';



export default function Article() {
  const { article_link } = useParams();


      // axios
      //   .get("http://127.0.0.1:8000/articles/" + {this.props.params.group} + "/" + {this.props.params.slug})
      //   .then(res => {
      //     this.setState({
      //       article: res.data
      //   });
      //   console.log(this.state.article);
      // })
    // };)


  return (
    <div className="Article">
      <h4>Article</h4>
    </div>
  );

}