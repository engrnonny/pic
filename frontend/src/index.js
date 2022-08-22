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
import Ads from "./routes/ads";
import Apps from "./routes/apps";
import Articles from "./routes/articles";
import Data from "./routes/data";
import Education from "./routes/education";
import Resources from "./routes/resources";
import Skillsets from "./routes/skillsets";
import Users from "./routes/users";
import Invoices from "./routes/invoices";

import 'bootstrap/dist/css/bootstrap.css';

const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(
  <React.StrictMode>
    <BrowserRouter>
      <Routes>
        <Route path="/" element={<App />}>
          <Route path="ads" element={<Ads />} />
          <Route path="articles" element={<Articles />} />
          <Route path="education" element={<Education />} />
          <Route path="resources" element={<Resources />}>
            <Route path="apps" element={<Apps />} />
            <Route path="data" element={<Data />} />
          </Route>
          <Route path="skillsets" element={<Skillsets />} />
          <Route path="users" element={<Users />} />
          <Route path="invoices" element={<Invoices />} />
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
