const express = require('express');
const mysql = require('mysql');
const ejs = require('ejs');
const CryptoJS = require('crypto-js');

const app = express();
//var pass = require('../config-chaudoudoux.js');
var con;

app.set('view engine', 'ejs');

app.use(express.urlencoded())

app.get('/', function (req, res) {

  con = mysql.createConnection({
    host: "164.132.103.232",
    user: "unicorn",
    password: "IAM_ateapot101",
    database: "chaudoudoux"
  });

  res.render('index');

})

app.get('/signup', function (req, res) {

  res.render('signup');

})

app.post('/signin', function (req, res) {

  console.log(req.body.username);
  console.log(req.body.password);

  var username = req.body.username;

  // We do an MD5 hash of the password because passwords are stored this way
  var password = CryptoJS.MD5(req.body.password);

  con.query("SELECT * FROM cdd_interveners WHERE username = '" + username + "'", function (err, result, fields) {
    if (err) throw err;
    if (result.length != 0) {
      if (result[0].password == password) {
        res.send(result);
      } else {
        res.send("Wrong Password");
      }
    } else {
      res.send("User Not Found");
    }
  });

})

app.get('/admin', function (req, res) {

  res.render('admin');

})

app.post('/admin/login', function (req,res) {

  var username = 'chaudoudoux';
  var pass = req.body.password;
  console.log(pass);

  con = mysql.createConnection({
    host: "164.132.103.232",
    user: "chaudoudoux",
    password: pass,
    database: "chaudoudoux"
  });

  con.connect(function(err) {
    if (err) throw err;
    console.log("Connected!");
    res.send("Hello " + username + "! The database state is " + con.state + " ...");
  });

});

app.get('/admin/users/insert', function (req, res) {

  var sql = "INSERT INTO cdd_users (id, first_name, last_name, address, zip_code, city) VALUES ('1234', 'Jaques', 'Chabrol', '42, Rue Jean Jaurès', '35700', 'Rennes')";
  con.query(sql, function (err, result) {
    if (err) throw err;
    //console.log("1 record inserted");
    res.send("1 record inserted");
  });

})

app.get('/admin/users/list', function (req, res) {

  con.query("SELECT * FROM cdd_users", function (err, result, fields) {
    if (err) throw err;
    //console.log(result);
    res.send(result);
  });

})

app.get('/admin/users/delete', function (req, res) {

  var sql = "DELETE FROM cdd_users WHERE first_name = 'Jaques'";
  con.query(sql, function (err, result) {
    if (err) throw err;
    //console.log("Number of records deleted: " + result.affectedRows);
    res.send("Number of records deleted: " + result.affectedRows);
  });

})


app.get('/admin/interveners/delete', function (req, res) {

  var sql = "DELETE FROM cdd_interveners WHERE username = 'unicorn2'";
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
