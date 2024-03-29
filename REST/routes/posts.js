const express = require('express');
const Post = require('../models/Post');
const router = express.Router();

router.get('/', (req, res) => {
    res.send("This is a post")
})

router.get('/goodpost', (req, res) => {
    res.send("This is a good post:)")
})

router.get('/badpost', (req, res) => {
    res.send("This is a bad post:(")
})

router.post('/', (req, res) => {
    const post = new Post({
        title: req.body.title,
        description: req.body.description,
        price: req.body.price
    });

    post.save().then(data => {
        res.json(data);
    }).catch(err => {
        res.json({message: err})
    })
})
module.exports = router;