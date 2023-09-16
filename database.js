const mysql = require("mysql");

const connection = mysql.createConnection({
    host:'localhost',
    user:'gayathri',
    password:'gayathri',
    database:'library'
});
connection.connect((err) => {
    if (err) {
        console.log("not connected");
    }
    else{
    console.log('Connected to database');
    }
  });

  module.exports = connection;