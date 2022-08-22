
import React, { Component } from 'react';
import { NavLink } from "react-router-dom";



class MainFooter extends Component {
    constructor(props) {
        super(props);
        this.state = {
            textDecoration: "underline",
            activeClassName: "underline"
        };
    }


    render() {
        return (
            <footer className="MainFooter">
                <span>
                    <nav>
                        <ul>
                            <li>
                                <NavLink
                                    to="about"
                                    className={({ isActive }) =>
                                        isActive ? this.state.activeClassName : undefined
                                    }
                                >
                                    About
                                </NavLink>
                            </li>
                            {/* <li>
                                <NavLink to="tasks">
                                    {({ isActive }) => (
                                        <span
                                            className={
                                                isActive ? this.state.activeClassName : undefined
                                            }
                                        >
                                            Tasks
                                        </span>
                                    )}
                                </NavLink>
                            </li> */}
                        </ul>
                    </nav>
                </span>
            </footer>
        );
    }
}
export default MainFooter;
