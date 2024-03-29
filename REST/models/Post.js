import mongoose from "mongoose"

const postSchema = mongoose.Schema({
    firstName: String,
    lastName: String,
    age: Number
})

export default mongoose.model('Posts', postSchema)