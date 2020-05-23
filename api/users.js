const express = require('express');

const router = express.Router();

const Model = require('../models/user');

router.get('/:id', (req, res) => {
  new Model.User().where('UserID', req.params.id)
    .fetch()
    .then(function (user) {
      res.json(user);
    }).catch(function (error) {
      console.log(error);
      res.send('An error occured');
    });
});
module.exports = router;