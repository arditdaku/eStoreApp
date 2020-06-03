const knex = require('../config/db').knex;
const bookshelf = require('bookshelf')(knex);

const Order = require("./order");

var User = bookshelf.Model.extend({
  tableName: 'user',
  orders() {
    return this.hasMany(Order)
  }
});
var Users = bookshelf.Collection.extend({
  module: User
});

module.exports = {
  User: User,
  Users: Users
};