const { response, request } = require("express");
const connet = require("../DataBase/DataBase");
var fs = require("fs");

const submitSales = async (
  req = request,
  res = response,
  operation = "insert",
  filename = "getAccountById.sql"
) => {
  const conn = await connet();
  var data = req.body;
  var path = "src/Mysql/queries/" + filename;
  var callback = async function (arg) {
    var query = arg.replace(
      /{{[ ]{0,2}([a-zA-Z0-9\.\_\-]*)[ ]{0,2}}}/g,
      function (str, mch) {
        return data[mch];
      }
    );
    try {
      const [rows] = await conn.query(query);
      var ret = operation == "select" ? rows : { success: true };
      return res.json({
        resp: true,
        message: "Get account",
        data: ret,
      });
    } catch (err) {
      return res.status(500).json({
        resp: false,
        message: err,
        query: query,
      });
    }
  };

  fs.readFile(path, "utf8", function (err, data) {
    if (!err) {
      callback(data);
    } else {
      callback(err);
    }
  });
};

const getAccuntById = (
  req = request,
  res = response,
  operation = "select",
  filename = "getAccountById"
) => {
  var data = req.body;
  var path = "src/Mysql/queries/" + filename + ".sql";
  console.log(path);
  var callback = async function (arg) {
    const conn = await connet();
    var query = arg.replace(
      /{{[ ]{0,2}([a-zA-Z0-9\.\_\-]*)[ ]{0,2}}}/g,
      function (str, mch) {
        return data[mch];
      }
    );
    try {
      const [rows] = await conn.query(query);
      conn.end();
      return res.json({
        resp: true,
        message: "Get data",
        data: rows,
      });
    } catch (err) {
      conn.end();
      return res.status(500).json({
        resp: false,
        message: err,
        query: query,
      });
    }
  };

  fs.readFile(path, "utf8", function (err, data) {
    if (!err) {
      callback(data);
    } else {
      callback(err);
    }
  });
};

module.exports = {
  getAccuntById,
  submitSales,
};
