
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

    console.log(article.category);

    return (
      <article key={article.id} className="Article">
        <h4>{article.title}</h4>
        <h5>{article.main_paragraph}</h5>
        <p>{article.body}</p>
        <p>{article.group}</p>
        <p>{article.video_link}</p>
        <section>
          <h5>Category</h5>
          {article && article.category.map((category) => {
            const { id, name } = category;
            return (
              <div key={id}>
                <a href='#'>{name}</a>
              </div>
            );
          })}
        </section>
        <section>
          <h5>Subcategory</h5>
          {article && article.subcategory.map((subcategory) => {
            const { id, name } = subcategory;
            return (
              <div key={id}>
                <a href='#'>{name}</a>
              </div>
            );
          })}
        </section>
        <section>
          <h5>Jobs</h5>
          {article && article.job.map((job) => {
            const { id, title } = job;
            return (
              <div key={id}>
                <a href='#'>{title}</a>
              </div>
            );
          })}
        </section>
        <section>
          <h5>Skills</h5>
          {article && article.skills.map((skills) => {
            const { id, name } = skills;
            return (
              <div key={id}>
                <a href='#'>{name}</a>
              </div>
            );
          })}
        </section>
        <section>
          <h5>Tags</h5>
          {article && article.tags.map((tags) => {
            const { id, name } = tags;
            return (
              <div key={id}>
                <a href='#'>{name}</a>
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