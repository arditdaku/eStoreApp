const knex = require("../config/db").knex;
const bookshelf = require("bookshelf")(knex);

const Order = bookshelf.model("Order", {
  tableName: "order",
  users() {
    return this.belongsToMany(User);
  },
  products() {
    return this.belongsToMany(Product);
  },
});

module.exports = { Order: Order };