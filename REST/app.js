import express from 'express';
import bodyParser from 'body-parser';
import users from './routes/users.js';
// const mongoose = require('mongoose');
// const posts = require('./routes/posts');
// require('dotenv/config');

const app = express();
app.use(bodyParser.json());

app.use('/users', users)

app.get('/', (req, res) => {
    res.send('Hello');
})

app.get('/home', (req, res) => {
    res.redirect('/');
})

app.get('/*', (req, res) => {
    res.send('Page cannot be found :(')
})
const PORT_NUMBER = 3000;
app.listen(3000, () => {
    console.log(`Server running on http://localhost:${PORT_NUMBER}`);
});