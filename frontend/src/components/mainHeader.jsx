
import React, { Component } from 'react';
import { Outlet, NavLink } from "react-router-dom";



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
                    <nav>
                        <ul>
                            <li>
                                <NavLink
                                    to="ads"
                                    className={({ isActive }) =>
                                        isActive ? this.state.activeClassName : undefined
                                    }
                                >
                                    Ads
                                </NavLink>
                                <Outlet />
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
