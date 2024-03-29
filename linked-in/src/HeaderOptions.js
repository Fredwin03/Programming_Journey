import React from "react";
import "./headerOptions.css";

function HeaderOptions({ Icon, title }) {
  return (
    <div className="headerOptions">
      {Icon && <Icon className="headerOptionsIcons" />}
      <h3>{title}</h3>
    </div>
  );
}

export default HeaderOptions;
