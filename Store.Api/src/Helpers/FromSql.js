// const { response, request } = require("express");
const { pool } = require("../DataBase/DataBase");
const { mapResults } = require("./Response");
const fs = require("fs");

const fromSql = async function (res, params, fileName, path) {
  fs.readFile(path, "utf8", async function (err, sql) {
    if (!err) {
      var query = sql.replace(
        /{{[ ]{0,2}([a-zA-Z0-9\.\_\-]*)[ ]{0,2}}}/g,
        function (str, mch) {
          return params[mch];
        }
      );
      
      try {

        const [rows] = await pool.query(query);

        const fields = mapResults(fileName);
        const results = {};

        for (let i = 0; i < fields?.length; i++) {
          if (fields[i] != "") {
            if (rows[i].length <= 1) {
              if (rows[i][0] && Object.keys(rows[i][0]).length <= 1 ) {
                results[fields[i]] = Object.values(rows[i][0])[0];
              } else {
                results[fields[i]] = rows[i][0];
              }
            } else {
              results[fields[i]] = rows[i];
            }
          }
        }

        return res.json({
          resp: true,
          message: fileName,
          [fileName]: fields ? results : rows,
        });
      } catch (e) {
        return res.status(500).json({
          resp: false,
          message: "Error getting data : " + e,
        });
      }
    } else {
      return res.status(500).json({
        resp: false,
        message: "Error opening sql file : " + err,
      });
    }
  });
};

module.exports = {
  fromSql,
};
