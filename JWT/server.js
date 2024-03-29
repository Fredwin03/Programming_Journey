const express = require('express')
const app = express()
const mongoose = require('mongoose')
// const jwt = require('jsonwebtoken')
require('dotenv/config')
const authRoute = require('./routes/auth')
const postRoute = require('./routes/posts')
// let j = require('crypto').randomBytes(64).toString('hex')
const db = mongoose.connect(process.env.DB_CONNECT, () => {
    console.log('Connected to DB')
})
app.use(express.json())

const PORT_NO = process.env.PORT || 3000
app.use('/user', authRoute)
app.use('/posts', postRoute)

app.listen(PORT_NO, () => console.log(`Server running on http://localhost:${PORT_NO}`))