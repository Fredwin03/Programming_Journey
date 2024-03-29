const router = require("express").Router();
let User = require("../models/userModel");

router.route("/").get((req, res) => {
  User.find().then((users) => res.json(users));
});

router.route("/add").post((req, res) => {
  const username = req.body.username;
  const newUser = new User({ username });
  newUser.save().then(() => res.json("User Added"));
});
module.exports = router;
