
import React, { Component } from 'react';
import { NavLink } from "react-router-dom";



class MainHeader extends Component {
    constructor(props) {
        super(props);
        this.state = {
            textDecoration: "underline",
            activeClassName: "underline"
        };
    }


    render() {
        return (
            <header className="MainHeader">
                <span>
                    <NavLink
                        to="/"
                        className={({ isActive }) =>
                            isActive ? this.state.activeClassName : undefined
                        }
                    >
                        Logo
                    </NavLink>
                </span>
                <span>
                    Search
                </span>
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
                            <li>
                                <NavLink
                                    to="info"
                                    className={({ isActive }) =>
                                        isActive ? this.state.activeClassName : undefined
                                    }
                                >
                                    Info
                                </NavLink>
                                <ul>
                                    <li>
                                        <NavLink
                                            to="articles"
                                            className={({ isActive }) =>
                                                isActive ? this.state.activeClassName : undefined
                                            }
                                        >
                                            Articles
                                        </NavLink>
                                    </li>
                                    <li>
                                        <NavLink
                                            to="companies"
                                            className={({ isActive }) =>
                                                isActive ? this.state.activeClassName : undefined
                                            }
                                        >
                                            Companies
                                        </NavLink>
                                    </li>
                                    <li>
                                        <NavLink
                                            to="jobs"
                                            className={({ isActive }) =>
                                                isActive ? this.state.activeClassName : undefined
                                            }
                                        >
                                            Jobs
                                        </NavLink>
                                    </li>
                                    <li>
                                        <NavLink
                                            to="education"
                                            className={({ isActive }) =>
                                                isActive ? this.state.activeClassName : undefined
                                            }
                                        >
                                            Learning Institutions
                                        </NavLink>
                                    </li>
                                    <li>
                                        <NavLink
                                            to="skills"
                                            className={({ isActive }) =>
                                                isActive ? this.state.activeClassName : undefined
                                            }
                                        >
                                            Skills
                                        </NavLink>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <ul>
                                    <li>
                                        <NavLink
                                            to="resources"
                                            className={({ isActive }) =>
                                                isActive ? this.state.activeClassName : undefined
                                            }
                                        >
                                            Resources
                                        </NavLink>
                                    </li>
                                    <ul>
                                        <li>
                                            <NavLink
                                                to="apps"
                                                className={({ isActive }) =>
                                                    isActive ? this.state.activeClassName : undefined
                                                }
                                            >
                                                Apps
                                            </NavLink>
                                        </li>
                                        <li>
                                            <NavLink
                                                to="data"
                                                className={({ isActive }) =>
                                                    isActive ? this.state.activeClassName : undefined
                                                }
                                            >
                                                Data
                                            </NavLink>
                                        </li>
                                    </ul>
                                </ul>
                            </li>
                            <li>
                                <NavLink
                                    to="contact"
                                    className={({ isActive }) =>
                                        isActive ? this.state.activeClassName : undefined
                                    }
                                >
                                    Contact
                                </NavLink>
                            </li>
                            <li>
                                <ul>
                                    User Profile
                                    <li>
                                        <NavLink
                                            to="login"
                                            className={({ isActive }) =>
                                                isActive ? this.state.activeClassName : undefined
                                            }
                                        >
                                            Login/Register
                                        </NavLink>
                                    </li>
                                </ul>
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
            </header>
        );
    }
}
export default MainHeader;
