const router = require("express").Router();
let Exercise = require("../models/exerciseModel");

router.route("/").get((req, res) => {
  Exercise.find().then((exercises) => res.json(exercises));
});

router.route("/add").post((req, res) => {
  const username = req.body.username;
  const description = req.body.description;
  const duration = Number(req.body.duration);
  const date = Date.parse(req.body.date);
  const newExercise = new Exercise({
    username,
    description,
    duration,
    date,
  });
  newExercise.save().then(() => res.json("Exercise Added"));
});

router.route("/:id").get((req, res) => {
  Exercise.findById(req.params.id).then((exercise) => res.json(exercise));
});

router.route("/:id").delete((req, res) => {
  Exercise.findByIdAndDelete(req.params.id).then(() =>
    res.json("Exercise Deleted")
  );
});

router.route("/update/:id").post((req, res) => {
  console.log(req.body);
  Exercise.findByIdAndUpdate(req.params.id, req.body).then(() =>
    res.json("Updated")
  );
  //   Exercise.findById(req.params.id).then((exercise) => {
  //     exercise.username = req.body.username;
  //     exercise.description = req.body.description;
  //     exercise.duration = Number(req.body.duration);
  //     exercise.date = Date.parse(req.date);
  //     exercise.save().then(() => res.json("Exercise Updated"));
  //   });
});

module.exports = router;
