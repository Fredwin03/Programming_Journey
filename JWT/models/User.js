const mongoose = require('mongoose')

const userSchema = new mongoose.Schema({
    name: {
        type: String,
        required: true,
        min: 2,
        max: 15
    },
    email: {
        type: String,
        required: true,
        unique: true,
        min: 8,
        max: 100
    },
    password: {
        type: String,
        required: true,
        min: 8,
        max: 1000
    },
    time: {
        type: Date,
        default: Date.now
    }
})

module.exports = mongoose.model('User', userSchema)