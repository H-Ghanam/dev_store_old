const { response, request } = require("express");
const { pool } = require("../DataBase/DataBase");
const { fromSql } = require("../Helpers/FromSql");
const moment = require("moment");
const { excuteBat } = require("../Helpers/BatchFiles");
// const svc = require("../service");

const folderName = "app";

const start = async (req = request, res = response) => {
  var params = req.body;
  var fileName = "startApp";
  var path = `src/Mysql/queries/${folderName}/${fileName}.sql`;
  await fromSql(res, params, fileName, path);

};

const login = async (req = request, res = response) => {

  // var params = req.body;
  // params.date = moment().format("YYYY-MM-DD");
  // params.dateplus2 = moment().add(2,"days").format("YYYY-MM-DD");
  // var fileName = "login";
  // var path = `src/Mysql/queries/${folderName}/${fileName}.sql`;
  // await fromSql(res, params, fileName, path);

  var id = req.body.id;
  var getRecords = req.body.getRecords;
  var records = 0;
  var date = moment().format("YYYY-MM-DD");
  var dateplus2 = moment().add(2,"days").format("YYYY-MM-DD");

  try {

    var sql =
    "Select * FROM users WHERE id = ? ; " +
    "SELECT * FROM stores WHERE active = 1 AND id IN (1)  ORDER BY sn; " +
    "SELECT * FROM banks WHERE active = 1 AND id IN (2,1)  ORDER BY sn; " +
    "SELECT id, title FROM accounts WHERE kind = 'salesman' ORDER BY title; " +
    "SELECT id, title FROM users WHERE active = 1 ORDER BY sn; " +
    "SELECT * FROM stores order by sn; " +
    "SELECT  " +
    "(SELECT COUNT(*) FROM items WHERE reorder_qty > 0 AND ( (qty < reorder_qty) OR (qty IS NULL) ) AND dead = 0) AS reorder_items,  " +
    "(SELECT COUNT(*) FROM accounts WHERE reminder_date <= ? ) AS accounts_reminders,  " +
    "(SELECT COUNT(*) FROM money WHERE ( (kind IN ('INSTAL_RECEIPT', 'INSTAL_PAYMENT')) OR (kind IN ('RECEIPT', 'PAYMENT') AND is_cheque = 1) )  " +
    "AND due_date <= ?  AND is_liquid = 0 AND is_closed = 0) AS due_instals,  " +
    "(SELECT COUNT(*) FROM invoices WHERE payment_status IN ('NOT PAID', 'PARTIAL') AND due_date <= ? ) AS due_invoices; " ;

    const [rows] = await pool.query(sql, [id, date, date, dateplus2]);
    
    if(getRecords){

      var sql2 = "SELECT (SELECT COUNT(*) FROM invoices_items) + (SELECT COUNT(*) FROM money) + (SELECT COUNT(*) FROM installments_parts) AS Records; ";
      
      const [rows2] = await pool.query(sql2);

      records = rows2[0].Records;
    }

    res.json({
      resp: true,
      message: `Logged in as ${rows[0][0].id}`,
      login: {
        currentUser: rows[0][0],
        activeStores: rows[1],
        banks: rows[2],
        salesmen: rows[3],
        activeUsers: rows[4],
        stores: rows[5],
        records: records,
        reports: rows[7],
      }
    })
    
  } catch (err) {
    res.status(500).json({
      resp: false,
      message: `Login failed:  ${err}`,
    })
  }
  
};

const isOnline = async (req = request, res = response) => {

  // svc.install();

  try {
    var sql = "DO 0;";
    const [rows] = await pool.query(sql);

    return res.json({
      resp: true,
      message: "DB is Online",
      serverStatus: rows.serverStatus,
    });
  } catch (e) {
    return res.status(500).json({
      resp: false,
      message: "DB is Offline: " + e,
      serverStatus: 0,
    });
  }
};


const excBatch = async (req = request, res = response) => {
  
  var batch = req.body.batch;
  var isDone = excuteBat(batch);
  // var isDone = true;

  // ### isDone = true always ###

  if (isDone) {
    return res.json({
      resp: true,
      message: "batch excuted : " + batch,
      isDone: true,
    });
  } else {
    return res.status(500).json({
      resp: false,
      message: "Error ecxuting batch",
      isDone: false,
    });
  }

};



const closeApp = async (req = request, res = response) => {
  try {

    const con = await pool.getConnection();


     con.releaseConnection();

    return res.json({
      resp: false,
      message: "Connected",
    });
  } catch (e) {
    return res.json({
      resp: true,
      message: "Disconnected",
      serverStatus: 0,
    });
  }
};





module.exports = {
  start,
  login,
  isOnline,
  excBatch,
  closeApp
};
