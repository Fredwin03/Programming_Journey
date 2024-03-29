import React from "react";
import ReactDOM from "react-dom/client";
import "./index.css";
import Template from "./Template.js";
const root = ReactDOM.createRoot(document.getElementById("root"));
root.render(
  <React.StrictMode>
    <Template />
  </React.StrictMode>
);
// import * as THREE from "three";

// const scene = new THREE.Scene();
// const camera = new THREE.PerspectiveCamera(
//   75,
//   window.innerWidth / window.innerHeight,
//   0.1,
//   1000
// );
// const renderer = new THREE.WebGLRenderer();
// renderer.setSize(window.innerWidth, window.innerHeight);
// document.body.appendChild(renderer.domElement);

// const vertices = [];
// vertices.push(new THREE.Vector3(-1, 0, 0));
// vertices.push(new THREE.Vector3(0, 0, 0));

// const geometry = new THREE.BufferGeometry().setFromPoints(vertices);
// const material = new THREE.LineBasicMaterial({ color: "fff" });
// const mesh = new THREE.Line(geometry, material);
// scene.add(mesh);
// camera.position.z = 5;

// function animate() {
//   requestAnimationFrame(animate);
//   mesh.rotation.x += 0.01;
//   mesh.rotation.y += 0.01;
//   renderer.render(scene, camera);
// }
// animate();
