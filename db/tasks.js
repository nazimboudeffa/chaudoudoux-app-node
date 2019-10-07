const mysql = require('mysql');

var con;
var records;

con = mysql.createConnection({
  host: "164.132.103.232",
  user: "unicorn",
  password: "IAM_ateapot101",
  database: "chaudoudoux"
});

con.query("SELECT * FROM cdd_tasks", function (err, result, fields) {
  records = result;
});

exports.findByTaskId = function(id, cb) {
  process.nextTick(function() {
    console.log(records);
    var idx = id - 1;
    if (records[idx]) {
      cb(null, records[idx]);
    } else {
      cb(new Error('User ' + id + ' does not exist'));
    }
  });
}

exports.findByTaskName = function(name, cb) {
  process.nextTick(function() {
    for (var i = 0, len = records.length; i < len; i++) {
      var record = records[i];
      if (record.name === name) {
        return cb(null, record);
      }
    }
    return cb(null, null);
  });
}
