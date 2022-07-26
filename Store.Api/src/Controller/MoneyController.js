const { response, request } = require("express");
const { pool } = require("../DataBase/DataBase");


const get = async (req = request, res = response) => {
  var params = req.body;
  var kind = params.kind;
  var id = params.id ? params.id : "";
  var accountId = params.accountId;  // add to postman
  var account = {};

  try {
    var sql1 =
      "SELECT DISTINCT category1 FROM money WHERE kind = ? ORDER BY category1;";
    const [rows1] = await pool.query(sql1, [kind]);

    var sql2 =
      "SELECT money.*, accounts.title FROM money LEFT JOIN accounts ON money.account_id = accounts.id WHERE money.kind = ? AND money.id = ?;";
    const [rows2] = await pool.execute(sql2, [kind, id]);

    var sql3 =
      "SELECT money_invoices.*,  " +
      "money_invoices.amount AS old_amount,  " +
      "date1, more, " +
      "IF(credit_due > 0, credit_due, credit_due * -1) AS credit_due,  " +
      '0.00 AS credit_due_before, 0.00 AS credit_due_after, "" AS kind_        ' +
      "FROM money_invoices " +
      "INNER JOIN invoices ON money_invoices.i_kind = invoices.kind AND money_invoices.i_id = invoices.id " +
      "WHERE m_kind = ? AND m_id = ? " +
      "ORDER BY money_invoices.pk;";

    const [rows3] = await pool.execute(sql3, [kind, id]);

    var sql4 = "SELECT MAX(id) FROM money WHERE money.kind IN ( ?, ? );";
    const [rows4] = await pool.query(sql4, [kind, "INSTAL_" + kind]);

    if(accountId){

      var sql5 = "SELECT * FROM accounts WHERE id = ?;";

      const [rows5] = await pool.query(sql5, [accountId]);

      account = rows5[0];
    }

    return res.json({
      resp: true,
      message: `initialize ${kind} Invoice`,
      money: {
        categories: rows1.map((c) => c.category1),
        details: rows2[0],
        moneyInvoice: rows3[0],
        maxId: rows4[0]["MAX(id)"],
        account: account,
      },
    });
  } catch (e) {
    return res.status(500).json({
      resp: false,
      message: "Error initializing Money: " + e,
    });
  }
};

const save = async (req = request, res = response) => {
  var params = req.body;
  var kind = params.kind;
  var id = params.id ? params.id : "";
  var accountId = params.accountId;  // add to postman
  var account = {};

  try {
    var sql1 =
      'SELECT MAX(id) FROM money WHERE kind IN (?, ?);';
    const [rows1] = await pool.query(sql1, [kind, "INSTAL_" + kind]);

    var maxId = rows1[0]["MAX(id)"]

    var sql2 =
      "INSERT INTO money " +
      "(pk, kind, id, parent_kind, parent_id, date1, time1, amount, money_in, money_out, account_id, account_category1, category1, category2, cashbox_id, cashbox_fees, amount_net, cashbox_in, cashbox_out, due_date, is_closed, is_cheque, cheque_no, cheque_bank, reference, more, tax1_per, tax1, amount_taxed, is_liquid, liquid_date, liquid_time, affect_account, account_date, account_time, transfer_id, createdby_id, createdon, editedby_id, editedon) " +
      "VALUES " +
      "(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);";
    const [rows2] = await pool.query(sql2, [
      params.money.pk,
      params.money.kind,
      params.money.id,
      params.money.parent_kind,
      params.money.parent_id,
      params.money.date1,
      params.money.time1,
      params.money.amount,
      params.money.money_in,
      params.money.money_out,
      params.money.account_id,
      params.money.account_category1,
      params.money.category1,
      params.money.category2,
      params.money.cashbox_id,
      params.money.cashbox_fees,
      params.money.amount_net,
      params.money.cashbox_in,
      params.money.cashbox_out,
      params.money.due_date,
      params.money.is_closed,
      params.money.is_cheque,
      params.money.cheque_no,
      params.money.cheque_bank,
      params.money.reference,
      params.money.more,
      params.money.tax1_per,
      params.money.tax1,
      params.money.amount_taxed,
      params.money.is_liquid,
      params.money.liquid_date,
      params.money.liquid_time,
      params.money.affect_account,
      params.money.account_date,
      params.money.account_time,
      params.money.transfer_id,
      params.money.createdby_id,
      params.money.createdon,
      params.money.editedby_id,
      params.money.editedon
    ]);

    var sql3 =
      "INSERT INTO money_invoices  " +
      "(pk, m_kind, m_id, i_kind, i_id, amount)  " +
      "VALUES " +
      "(?, ?, ?, ?, ?, ?);";

    const [rows3] = await pool.query(sql3, [
      params.moneyInvoice.pk,
      params.moneyInvoice.m_kind,
      params.moneyInvoice.m_id,
      params.moneyInvoice.i_kind,
      params.moneyInvoice.i_id,
      params.moneyInvoice.amount,
    ]);

    var sql4 = "UPDATE invoices SET  "+
    'credit_paid = IFNULL((SELECT SUM(amount) FROM money_invoices WHERE money_invoices.i_kind = invoices.kind AND money_invoices.i_id = invoices.id), 0) * IF(kind IN ("RETURNSALE", "RETURNPUR"), -1, 1) + '+
    '              IFNULL((SELECT SUM(amount) FROM money WHERE money.parent_kind = invoices.kind AND money.parent_id = invoices.id AND kind IN ("INSTAL_RECEIPT", "INSTAL_PAYMENT") AND is_cheque = 0 AND is_liquid = 1), 0)  * IF(kind IN ("RETURNSALE", "RETURNPUR"), -1, 1), '+
    'credit_due = credit - credit_paid, '+
    'payment_status = IF( (credit_due * IF(kind IN ("RETURNSALE", "RETURNPUR"), -1, 1)) <= 0, "PAID", IF(credit_due = grand_total, "NOT PAID", "PARTIAL")) '+
    'WHERE 1 = 2  OR (kind = ? AND id = ?);';
    const [rows4] = await pool.query(sql4, [
      params.moneyInvoice.i_kind,
      params.moneyInvoice.i_id
    ]);

    if(accountId){

      var sql5 = "SELECT * FROM accounts WHERE id = ?;";

      const [rows5] = await pool.query(sql5, [accountId]);

      account = rows5[0];
    }

    return res.json({
      resp: true,
      message: `initialize ${kind} Invoice`,
      money: {
        categories: rows1.map((c) => c.category1),
        details: rows2[0],
        moneyInvoice: rows3[0],
        maxId: rows4[0]["MAX(id)"],
        account: account,
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

    var sql2 =
      "SELECT money.*, accounts.title FROM money LEFT JOIN accounts ON money.account_id = accounts.id WHERE money.kind = ? AND money.id = ?;";
    
     con.unprepare(sql2);

    var sql3 =
      "SELECT money_invoices.*,  " +
      "money_invoices.amount AS old_amount,  " +
      "date1, more, " +
      "IF(credit_due > 0, credit_due, credit_due * -1) AS credit_due,  " +
      '0.00 AS credit_due_before, 0.00 AS credit_due_after, "" AS kind_        ' +
      "FROM money_invoices " +
      "INNER JOIN invoices ON money_invoices.i_kind = invoices.kind AND money_invoices.i_id = invoices.id " +
      "WHERE m_kind = ? AND m_id = ? " +
      "ORDER BY money_invoices.pk;";

    
     con.unprepare(sql3);

    return res.json({
      resp: true,
      message: "Money Closed",
    });
  } catch (e) {
    return res.status(500).json({
      resp: false,
      message: "Error Closing Money: " + e,
    });
  }
};



module.exports = {
  get,
  close,
};
