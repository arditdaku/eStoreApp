const express = require("express");
const app = express();

const usersRoutes = require("./api/users");
// const ordersRoutes = require("./api/orders");
// const productsRoutes = require("./api/products");

app.use("/api/users", usersRoutes);
// app.use("/api/orders", ordersRoutes);
// app.use("/api/product", productsRoutes);

app.listen(3000);
console.log("Server started on port: 3000");