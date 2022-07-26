const { createPool } = require("mysql2/promise");

const connect = (port = 3306) => {
  var pool = createPool({
    host: process.env.HOST,
    port: port,
    user: process.env.USER,
    password: process.env.PASS,
    database: process.env.DB,
    waitForConnections: true,
    connectionLimit: 10,
    queueLimit: 0,
    multipleStatements: true,
    supportBigNumbers: true,
    decimalNumbers: true,

  });
  return pool;
};

var pool = connect(process.env.S_PORT);

module.exports = {
  connect,
  pool
};
