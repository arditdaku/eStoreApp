const express = require("express");

const router = express.Router();

const Model = require("../models/product");

router.get("/avgPrice", (req, res) => {
    new Model.Product().avgPrice().then((avg) => {
        res.json(avg);
    }).catch(function (error) {
        console.log(error);
        res.send('An error occured');
    });
});

module.exports = router