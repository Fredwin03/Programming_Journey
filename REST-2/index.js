const express = require("express");
const app = express();
const mongoose = require("mongoose");
require("dotenv/config");
const router = require("./routes/Subscribers.js");

mongoose.connect(process.env.DB);
const db = mongoose.connection;

db.on("error", (err) => console.error(err));
db.once("open", (err) => console.error("Connected to db"));
app.get("/", (req, res) => res.send("Hello"));
app.use(express.json());

app.use("/subscribers", router);
app.listen(3000, () => console.log("Server started"));
