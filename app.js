var mysql = require('mysql');
pass = require('../config-chaudoudoux.js');

var con = mysql.createConnection({
  host: "164.132.103.232",
  user: "chaudoudoux",
  password: pass,
  database: "chaudoudoux"
});

con.connect(function(err) {
  if (err) throw err;
  console.log("Connected!");
});
