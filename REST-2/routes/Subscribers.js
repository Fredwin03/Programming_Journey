const express = require("express");
// import { get, getOne, post, patch, remove, model } from '../models/subscribers.js';
// import  from '../models/subscribers.js';
const Subscriber = require("../models/subscribers");
const router = express.Router();

// Getting all
router.get("/", async (req, res) => {
  const subscribers = await Subscriber.find();
  res.send(subscribers);
});

// Getting one
router.get("/:id", (req, res) => {
  res.send(req.params.id);
});

// Creating one
router.post("/", async (req, res) => {
  const newsub = await Subscriber.create({
    name: req.body.name,
    subscribed: req.body.subscribed,
  });
  console.log(req.body);
  res.send(newsub);
  // res.status(201).json(newSubscriber);
});

// Updating one
router.patch("/:id", (req, res) => {});

// Deleting one
router.delete("/:id", (req, res) => {});

module.exports = router;
