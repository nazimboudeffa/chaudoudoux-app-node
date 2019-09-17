const express = require('express');
const mysql = require('mysql');

const app = express();
var pass = require('../config-chaudoudoux.js');

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

app.get('/', function (req, res) {
  res.send("Hello Chaudoudoux! The database state is " + con.state + " ...");
})

app.get('/insert', function (req, res) {
  var sql = "INSERT INTO cdd_users (id, first_name, last_name, address, zip_code, city) VALUES ('1234', 'Jaques', 'Chabrol', '42, Rue Jean Jaurès', '35700', 'Rennes')";
  con.query(sql, function (err, result) {
    if (err) throw err;
    //console.log("1 record inserted");
    res.send("1 record inserted");
  });
})

app.get('/list', function (req, res) {
  con.query("SELECT * FROM cdd_users", function (err, result, fields) {
    if (err) throw err;
    //console.log(result);
    res.send(result);
  });
})

app.get('/delete', function (req, res) {
  var sql = "DELETE FROM cdd_users WHERE first_name = 'Jaques'";
  con.query(sql, function (err, result) {
    if (err) throw err;
    //console.log("Number of records deleted: " + result.affectedRows);
    res.send("Number of records deleted: " + result.affectedRows);
  });
})

var port = process.env.PORT || 3000;

app.listen(port, function () {
  console.log('Example app listening on port 3000!')
})
