// import mysqldump from 'mysqldump';
// or
const mysqldump = require('mysqldump')

const sql_file = "../opensause.sql";

const host = 'localhost';
const user = 'root';
const password = '';
const database = 'opensauce';
 
// dump the result straight to a file
mysqldump({
    connection: {
        host: host,
        user: user,
        password: password,
        database: database,
    },
    dumpToFile: sql_file,
});


// https://stackoverflow.com/questions/38898772/export-and-import-sql-db-in-node-js