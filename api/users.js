const express = require("express");

const router = express.Router();
const Model = require("../models/user");

//Find a single user with an id
router.get("/:id", (req, res) => {
  new Model.User()
    .where("UserID", req.params.id)
    .fetch()
    .then(function (user) {
      res.json(user);
    })
    .catch(function (error) {
      console.log(error);
      res.send("An error occured");
    });
});

// Fetch users
router.get("/allusers", async (req, res) => {
  var users = await new User().fetchAll();
  res.json(users);
  // var users = await Users.forge().fetch();
  // res.send(users.toJSON());
});

module.exports = router;
