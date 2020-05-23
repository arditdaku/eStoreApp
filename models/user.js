const knex = require('../config/db').knex;
const bookshelf = require('bookshelf')(knex);

const Order = require("./order");

const User = bookshelf.Model.extend({
    tableName: 'user',
    orders() {
        return this.hasMany(Order)
      }
});

module.exports = { User: User };