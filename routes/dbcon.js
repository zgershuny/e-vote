var mysql = require('mysql');
var pool = mysql.createPool({
  connectionLimit : 10,
  host            : 'localhost',
  user            : 'zgershuny',
  password        : '-----',
  database        : '-----'
});
module.exports.pool = pool;
