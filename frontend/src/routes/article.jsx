
import React, { useEffect, useState } from 'react';
import axios from 'axios';
import { Link, useParams } from 'react-router-dom';



export default function Article(props) {
  const { group, slug } = useParams();
  const [article, setArticle] = useState('');


  useEffect(() => {
        axios
        .get(`http://127.0.0.1:8000/articles/${group}/${slug}`)
        .then((res) => {
          setArticle(res.data);
      });
    }, []);


    return (
      <article key={article.id} className="Article">
        <h4>{article.title}</h4>
        <h5>{article.main_paragraph}</h5>
        <p>{article.body}</p>
        <p>{article.group}</p>
        <p>{article.video_link}</p>
        <section>
          {article.category.map((category) => {
            const { id, name } = category;
            return (
              <div key={id}>
              </div>
            );
          })}
        </section>
      </article>
      // <div>
      //   <h3>{article.title}</h3>
      // </div>
    );

}