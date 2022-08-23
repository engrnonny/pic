
import React, { useEffect, useState } from 'react';
import axios from 'axios';
import { useParams } from 'react-router-dom';



export default function Article(props) {
  const { group, slug } = useParams();
  const [article, setArticle] = useState(null);


  useEffect(() => {
        axios
        .get(`http://127.0.0.1:8000/articles/${group}/${slug}`)
        .then(res => {
          setArticle(res.data);
      });
    }, []);


    return (
      <div key={article.id} className="Article">
        <h4>{article}</h4>
      </div>
    );

}