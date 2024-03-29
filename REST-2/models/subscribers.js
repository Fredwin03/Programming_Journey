const mongoose = require("mongoose");

const subscriberSchema = mongoose.Schema({
  name: String,
  subscribed: String,
  subscribedDate: {
    type: Date,
    required: true,
    default: Date.now,
  },
});
module.exports = mongoose.model("Subscriber", subscriberSchema);

// export const get = (req, res) => {
//     res.send('Hello World')
// }
// export const getOne = (req, res) => {
//     res.send(req.params.id)
// }
// export const post = (req, res) => {

// }
// export const patch = (req, res) => {

// }
// export const remove = (req, res) => {

// }
