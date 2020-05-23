const config = {
    client: 'mysql',
    connection: {
        host: 'localhost',
        user: 'root',
        password: 'admin',
        database: 'eStore',
        charset: 'utf8'
    }
};

const knex = require('knex')(config);

module.exports.knex = knex;