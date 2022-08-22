import React from 'react';
import ReactDOM from 'react-dom/client';
import {
  BrowserRouter,
  Routes,
  Route,
} from "react-router-dom";

import './index.css';

import reportWebVitals from './reportWebVitals';
import App from './App';
import About from "./routes/about";
import Ads from "./routes/ads";
import Apps from "./routes/apps";
import Articles from "./routes/articles";
import Companies from "./routes/companies";
import Contact from "./routes/contact";
import Data from "./routes/data";
import Education from "./routes/education";
import Info from "./routes/info";
import Jobs from "./routes/jobs";
import Resources from "./routes/resources";
import Skills from "./routes/skills";
import Users from "./routes/users";

import 'bootstrap/dist/css/bootstrap.css';

const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(
  <React.StrictMode>
    <BrowserRouter>
      <Routes>
        <Route path="/" element={<App />}>
          <Route path="about" element={<About />} />
          <Route path="ads" element={<Ads />} />
          <Route path="info" element={<Info />} >
            <Route path="articles" element={<Articles />} />
            <Route path="Companies" element={<Companies />} />
            <Route path="education" element={<Education />} />
            <Route path="jobs" element={<Jobs />} />
            <Route path="skills" element={<Skills />} />
          </Route>
          <Route path="resources" element={<Resources />}>
            <Route path="apps" element={<Apps />} />
            <Route path="data" element={<Data />} />
          </Route>
          <Route path="contact" element={<Contact />} />
          <Route path="users" element={<Users />} />
          {/* <Route path="invoices" element={<Invoices />} /> */}
          <Route
            path="*"
            element={
              <main style={{ padding: "1rem" }}>
                <p>There's nothing here!</p>
              </main>
            }
          />
        </Route>
      </Routes>
    </BrowserRouter>
  </React.StrictMode>
);

// If you want to start measuring performance in your app, pass a function
// to log results (for example: reportWebVitals(console.log))
// or send to an analytics endpoint. Learn more: https://bit.ly/CRA-vitals
reportWebVitals();
