const { response, request } = require("express");
const { pool } = require("../DataBase/DataBase");
const fs = require("fs");

// var stmts = require("../Mysql/preparedStmt.json").invoice;

const get = async (req = request, res = response) => {
  // console.log(req.query);

  var params = req.query;
  var kind = params.kind;
  var id = params.id !== '0' ? params.id : '';
  var store_id = params.storeId;
  var getOptions = params.getOptions === 'true';
  var options = {};

  try {
    var sql1 =
      "SELECT title FROM " +
      "(SELECT category1 AS title, COUNT(*) AS counter " +
      "FROM items " +
      'WHERE category1 <> "" AND category1 IS NOT NULL ' +
      "GROUP BY category1 " +
      "ORDER BY counter DESC " +
      "LIMIT 300 " +
      ") mostused " +
      "ORDER BY title; " +
      'SELECT DISTINCT category1 FROM items WHERE starred = 1 AND dead = 0 AND TRIM(category1) <> "" ORDER BY category1; ' +
      "SELECT id, title, price1, category1, photo, " +
      "IFNULL((SELECT SUM(qty_out) FROM invoices_items INNER JOIN invoices ON invoices_items.kind = invoices.kind AND invoices_items.id = invoices.id WHERE item_id = items.id AND date1 > DATE_ADD(NOW(), INTERVAL -2 MONTH)), 0) AS sales " +
      "FROM items WHERE starred = 1 AND dead = 0 ORDER BY category1, id;";

    const [rows1] = await pool.query(sql1);

    var sql2 = "SELECT * FROM invoices WHERE kind=? AND id=?";

    const [rows2] = await pool.execute(sql2, [kind, id]);

    var sql3 =
      "SELECT invoices_items.*, " +
      "items.title, items.code1, items.code2, items.barcode, " +
      "items.tax_type, items.price_include_tax1, " +
      "items.category1, items.category2, items.category3, items.category4, items.category5, items.category6, " +
      "items.price1, items.price2, items.price3, items.price4, items.price_min, " +
      "items.photo, SUBSTRING(items.more, 1, 200) AS more, " +
      "items.service, " +
      "ROUND(stores_items.qty * invoices_items.uqty2 / invoices_items.uqty1, 3) AS qty_available " +
      "FROM invoices_items " +
      "LEFT JOIN items ON items.id = invoices_items.item_id " +
      "LEFT JOIN stores_items ON stores_items.item_id = invoices_items.item_id AND stores_items.store_id = invoices_items.store_id " +
      "WHERE kind = ? AND invoices_items.id = ? AND invoices_items.store_id = ? " +
      "ORDER BY sn;";

    const [rows3] = await pool.execute(sql3, [kind, id, store_id]);

    var sql4 =
      "SELECT * FROM money " +
      "WHERE parent_kind=? AND parent_id=? AND kind LIKE 'CASH_%' " +
      "ORDER BY pk;";

    const [rows4] = await pool.execute(sql4, [kind, id]);

    var sql5 =
      "SELECT * FROM money " +
      "WHERE parent_kind=? AND parent_id=? AND kind IN ('INSTAL_PAYMENT', 'INSTAL_RECEIPT') " +
      "ORDER BY due_date, pk;";

    const [rows5] = await pool.execute(sql5, [kind, id]);

    var sql6 = "SELECT MAX(id) FROM invoices WHERE kind = ?; ";

    const [rows6] = await pool.query(sql6, [kind]);

    if (getOptions) {
      var sql7 =
        "SELECT title FROM  " +
        "(SELECT addition1_type AS title, COUNT(*) AS counter  " +
        " FROM invoices  " +
        ' WHERE addition1_type <> "" AND addition1_type IS NOT NULL  ' +
        " GROUP BY addition1_type  " +
        " ORDER BY counter DESC  " +
        " LIMIT 300 " +
        ") mostused " +
        "ORDER BY title; " +
        "SELECT title FROM  " +
        "(SELECT expense1_type AS title, COUNT(*) AS counter  " +
        " FROM invoices  " +
        ' WHERE expense1_type <> "" AND expense1_type IS NOT NULL  ' +
        " GROUP BY expense1_type  " +
        " ORDER BY counter DESC  " +
        " LIMIT 300 " +
        ") mostused " +
        "ORDER BY title; " +
        "SELECT title FROM  " +
        "(SELECT invoices.status AS title, COUNT(*) AS counter  " +
        " FROM invoices  " +
        ' WHERE invoices.status <> "" AND invoices.status IS NOT NULL  ' +
        " GROUP BY invoices.status  " +
        " ORDER BY counter DESC  " +
        " LIMIT 300 " +
        ") mostused " +
        "ORDER BY title; " +
        "SELECT title FROM  " +
        "(SELECT shippedby AS title, COUNT(*) AS counter  " +
        " FROM invoices  " +
        ' WHERE shippedby <> "" AND shippedby IS NOT NULL  ' +
        " GROUP BY shippedby " +
        " ORDER BY counter DESC  " +
        " LIMIT 300 " +
        ") mostused " +
        "ORDER BY title; " +
        "SELECT title FROM  " +
        "(SELECT cheque_bank AS title, COUNT(*) AS counter  " +
        " FROM money  " +
        ' WHERE cheque_bank <> "" AND cheque_bank IS NOT NULL  ' +
        " GROUP BY cheque_bank  " +
        " ORDER BY counter DESC  " +
        " LIMIT 300 " +
        ") mostused " +
        "ORDER BY title";

      const [rows7] = await pool.query(sql7, [kind]);

      options = {
        additionType: rows7[0].map((a) => a.title),
        expenseType: rows7[1].map((a) => a.title),
        invoiceStatus: rows7[2].map((a) => a.title),
        shippedby: rows7[3].map((a) => a.title),
        chequeBank: rows7[4].map((a) => a.title),
      };
    }

    //   var query = sql.replace(
    //     /{{[ ]{0,2}([a-zA-Z0-9\.\_\-]*)[ ]{0,2}}}/g,
    //     function (str, mch) {
    //       return params[mch];
    //     }
    //   );

    // const [rows] = await pool.query(query);

    return res.json({
      resp: true,
      message: `initialize ${kind} Invoice`,
      invoiceData: {
        categories: rows1[0],
        starredCats: rows1[1],
        starredItems: rows1[2],
        invoice: rows2[0],
        invoiceItems: rows3,
        moneyCash: rows4[0],
        moneyPayment: rows5[0],
        maxId: rows6[0]["MAX(id)"],
        options: options,
      },
    });
  } catch (e) {
    return res.status(500).json({
      resp: false,
      message: "Error initializing Invoice: " + e,
    });
  }
};


const save = async (req = request, res = response) => {



    get(req, res);
  // TODO: implement saving invoice to DB 

  try {
    var sql1 =
      "SELECT DISTINCT category1 FROM money WHERE kind = ? ORDER BY category1;";
    const [rows1] = await pool.query(sql1, [kind]);


    return res.json({
      resp: true,
      message: `initialize ${kind} Invoice`,
      money: {
        categories: rows1.map((c) => c.category1),
        details: rows2[0],
        moneyInvoice: rows3[0],
        maxId: rows4[0]["MAX(id)"],
      },
    });
  } catch (e) {
    return res.status(500).json({
      resp: false,
      message: "Error initializing Money: " + e,
    });
  }
};


const close = async (req = request, res = response) => {
  try {
    var con = await pool.getConnection();
    var sql2 = "SELECT * FROM invoices WHERE kind=? AND id=?";
     con.unprepare(sql2);

    var sql3 =
      "SELECT invoices_items.*, " +
      "items.title, items.code1, items.code2, items.barcode, " +
      "items.tax_type, items.price_include_tax1, " +
      "items.category1, items.category2, items.category3, items.category4, items.category5, items.category6, " +
      "items.price1, items.price2, items.price3, items.price4, items.price_min, " +
      "items.photo, SUBSTRING(items.more, 1, 200) AS more, " +
      "items.service, " +
      "ROUND(stores_items.qty * invoices_items.uqty2 / invoices_items.uqty1, 3) AS qty_available " +
      "FROM invoices_items " +
      "LEFT JOIN items ON items.id = invoices_items.item_id " +
      "LEFT JOIN stores_items ON stores_items.item_id = invoices_items.item_id AND stores_items.store_id = invoices_items.store_id " +
      "WHERE kind = ? AND invoices_items.id = ? AND invoices_items.store_id = ? " +
      "ORDER BY sn;";

    
     con.unprepare(sql3);

    var sql4 =
      "SELECT * FROM money " +
      "WHERE parent_kind=? AND parent_id=? AND kind LIKE 'CASH_%' " +
      "ORDER BY pk;";

    
     con.unprepare(sql4);

    var sql5 =
      "SELECT * FROM money " +
      "WHERE parent_kind=? AND parent_id=? AND kind IN ('INSTAL_PAYMENT', 'INSTAL_RECEIPT') " +
      "ORDER BY due_date, pk;";

    
     con.unprepare(sql5);


    //  Unable to Release the connection

    //  pool.releaseConnection(con);

    return res.json({
      resp: true,
      message: "Invoice Closed",
    });
  } catch (e) {
    return res.status(500).json({
      resp: false,
      message: "Error Closing Invoice: " + e,
    });
  }
};





module.exports = {
  get,
  save,
  close,
};
