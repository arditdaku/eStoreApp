const knex = require("../config/db").knex;
const bookshelf = require("bookshelf")(knex);

const Product = bookshelf.Model.extend({
    tableName: "product",
    avgPrice: function () {
        return bookshelf.knex("product").avg("price");
    },
});

module.exports = {
    Product: Product
};