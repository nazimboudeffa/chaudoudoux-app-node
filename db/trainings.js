const mysql = require('mysql');
//const config = require('./config.json');
const config = {"host" : process.env.host,"user" : process.env.user,"password" : process.env.password,"database" : process.env.database}

var con;
var records;

con = mysql.createConnection({
  host: config.host,
  user: config.user,
  password: config.password,
  database: config.database
});

con.query("SELECT * FROM cdd_trainings", function (err, result, fields) {
  records = result;
});

exports.findById = function(id, cb) {
  process.nextTick(function() {
    console.log(records);
    var idx = id - 1;
    if (records[idx]) {
      cb(null, records);
    } else {
      cb(new Error('There is an error'));
    }
  });
}
