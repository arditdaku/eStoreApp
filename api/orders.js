const express = require("express");

const router = express.Router();

const Model = require("../models/order");

router.get("/:id", (req, res) => {
    new Model.Order()
        .where("UserID", req.params.id)
        .count()
        .then(function (user) {
            res.json(user);
        })
        .catch(function (error) {
            console.log(error);
            res.send("An error occured");
        });
});
module.exports = router;