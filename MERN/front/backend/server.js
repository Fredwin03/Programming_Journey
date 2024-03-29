const express = require("express");
const app = express();
const cors = require("cors");
const mongoose = require("mongoose");
const exercisesRouter = require("./routes/exercises");
const usersRouter = require("./routes/users");
require("dotenv").config();

mongoose.set("strictQuery", true);
const PORT = process.env.PORT || 5000;

app.use(cors());
app.use(express.json());
app.use("/exercises", exercisesRouter);
app.use("/users", usersRouter);

mongoose.connect("mongodb://localhost:27017");
const connection = mongoose.connection;

connection.once("open", () => {
  console.log("Connected");
});

app.listen(PORT, () =>
  console.log(`Server running on http://localhost:${PORT}`)
);
