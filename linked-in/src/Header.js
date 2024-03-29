import React from "react";
import SearchIcon from "@mui/icons-material/Search";
import HomeIcon from "@mui/icons-material/HomeTwoTone";
import SupervisorAccountIcon from "@mui/icons-material/SupervisorAccountTwoTone";
import BusinessCenterIcon from "@mui/icons-material/BusinessCenterTwoTone";
import ChatIcon from "@mui/icons-material/ChatTwoTone";
import NotificationsIcon from "@mui/icons-material/NotificationsNoneTwoTone";
import { Avatar } from "@mui/material";
import "./Header.css";
import HeaderOptions from "./HeaderOptions";

function Header() {
  return (
    <div className="header">
      <div className="header_left">
        <img src="D:/download.png" alt="Linked-In logo" />
        <div className="header_search">
          <SearchIcon />
          <input type={"text"} />
        </div>
      </div>
      <div className="header_right">
        <HeaderOptions Icon={HomeIcon} title="Home" />
        <HeaderOptions Icon={SupervisorAccountIcon} title="My Network" />
        <HeaderOptions Icon={BusinessCenterIcon} title="Jobs" />
        <HeaderOptions Icon={ChatIcon} title="Messaging" />
        <HeaderOptions Icon={NotificationsIcon} title="Notifications" />
        <HeaderOptions Icon={Avatar} title="Me" />
      </div>
    </div>
  );
}

export default Header;
