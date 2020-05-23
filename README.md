# eStoreApp


## Database 
![Database Schema](/Database/eStoreDB_Diagram.png)

1. create database : run eStoredb.sql (inside Database folder)
2. update db config ate db.js
## Dependencies
* bookshelf
* express
* knex 
* mysql


```sh
npm install 
```

```sh
node app.js
```

## Api routes
 
- return user by id : api/users/(id) 
- return average price of product : api/products/avgPrice
- return the number of oders made by a user: api/orders/(id) 

