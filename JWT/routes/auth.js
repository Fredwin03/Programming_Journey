const router = require('express').Router()
const User = require('../models/User')
const { registerValidation, loginValidation} = require('../validation')
const bcrypt = require('bcryptjs')
const jwt = require('jsonwebtoken')
require('dotenv')

router.get('/', async (req, res) => {
    const registeredUsers = await User.find()
    res.send(registeredUsers)
})
router.delete('/:id', async (req, res) => {
    const userExist = await User.findById(req.params.id)
    if (userExist) {
        await User.deleteOne(userExist);
        res.send('User deleted successfully');
    }
    else res.send('No such user exists')
})
router.post('/register', async (req, res) => {
    // validation
    const {error} = registerValidation(req.body)
    const email = await User.findOne({email: req.body.email})

    // checking if all the details are provided are properly
    if (error) res.status(400).send(error.details[0].message)

    // Checking if the email exists already
    else if (email) res.status(400).send('Email already exists')

    else {
        
        // Hash passwords
        const salt = await bcrypt.genSalt(10);
        const hashedPassword = await bcrypt.hash(req.body.password, salt);
        const user = new User({
            name: req.body.name,
            email: req.body.email,
            password: hashedPassword
        })
        try {
            // Saving the user to DB
            const savedUser = await user.save()
            res.send('Registered')
        } catch(err) {
            res.status(400).json(err)
        }
    }
    // res.send(user);
})

router.post('/login', async (req, res) => {
    const {error} = loginValidation(req.body)
    if (error) return res.status(400).send(error.details[0].message)

    // Checking if the email exists
    const userExist = await User.findOne({email: req.body.email});
    // console.log(userExist)
    if(!userExist) return res.status(400).send("Email does not exit")
    else (await bcrypt.compare(req.body.password, userExist.password)) ? '': res.send('Incorrect password')

    // Assigning a token
    const token = jwt.sign({_id: userExist._id}, process.env.ACCESS_TOKEN)
    res.header('auth-token', token).send(token)
})
module.exports = router