class Money {
  int? pk;
  String? kind;
  int? id;
  String? parentKind;
  int? parentId;
  String? date1;
  String? time1;
  int? amount;
  int? moneyIn;
  int? moneyOut;
  int? accountId;
  String? accountCategory1;
  String? category1;
  String? category2;
  int? cashboxId;
  int? cashboxFees;
  int? amountNet;
  int? cashboxIn;
  int? cashboxOut;
  DateTime? dueDate;
  int? isClosed;
  int? isCheque;
  String? chequeNo;
  String? chequeBank;
  String? reference;
  String? more;
  int? tax1Per;
  int? tax1;
  int? amountTaxed;
  int? isLiquid;
  DateTime? liquidDate;
  DateTime? liquidTime;
  int? affectAccount;
  String? accountDate;
  String? accountTime;
  int? transferId;
  int? createdbyId;
  DateTime? createdon;
  int? editedbyId;
  DateTime? editedon;

  Money(
      {this.pk,
      this.kind,
      this.id,
      this.parentKind,
      this.parentId,
      this.date1,
      this.time1,
      this.amount,
      this.moneyIn,
      this.moneyOut,
      this.accountId,
      this.accountCategory1,
      this.category1,
      this.category2,
      this.cashboxId,
      this.cashboxFees,
      this.amountNet,
      this.cashboxIn,
      this.cashboxOut,
      this.dueDate,
      this.isClosed,
      this.isCheque,
      this.chequeNo,
      this.chequeBank,
      this.reference,
      this.more,
      this.tax1Per,
      this.tax1,
      this.amountTaxed,
      this.isLiquid,
      this.liquidDate,
      this.liquidTime,
      this.affectAccount,
      this.accountDate,
      this.accountTime,
      this.transferId,
      this.createdbyId,
      this.createdon,
      this.editedbyId,
      this.editedon});

  Money.fromJson(Map<String, dynamic> json) {
    pk = json['pk'];
    kind = json['kind'];
    id = json['id'];
    parentKind = json['parent_kind'];
    parentId = json['parent_id'];
    date1 = json['date1'];
    time1 = json['time1'];
    amount = json['amount'];
    moneyIn = json['money_in'];
    moneyOut = json['money_out'];
    accountId = json['account_id'];
    accountCategory1 = json['account_category1'];
    category1 = json['category1'];
    category2 = json['category2'];
    cashboxId = json['cashbox_id'];
    cashboxFees = json['cashbox_fees'];
    amountNet = json['amount_net'];
    cashboxIn = json['cashbox_in'];
    cashboxOut = json['cashbox_out'];
    dueDate = json['due_date'];
    isClosed = json['is_closed'];
    isCheque = json['is_cheque'];
    chequeNo = json['cheque_no'];
    chequeBank = json['cheque_bank'];
    reference = json['reference'];
    more = json['more'];
    tax1Per = json['tax1_per'];
    tax1 = json['tax1'];
    amountTaxed = json['amount_taxed'];
    isLiquid = json['is_liquid'];
    liquidDate = json['liquid_date'];
    liquidTime = json['liquid_time'];
    affectAccount = json['affect_account'];
    accountDate = json['account_date'];
    accountTime = json['account_time'];
    transferId = json['transfer_id'];
    createdbyId = json['createdby_id'];
    createdon = json['createdon'];
    editedbyId = json['editedby_id'];
    editedon = json['editedon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['pk'] = pk;
    data['kind'] = kind;
    data['id'] = id;
    data['parent_kind'] = parentKind;
    data['parent_id'] = parentId;
    data['date1'] = date1;
    data['time1'] = time1;
    data['amount'] = amount;
    data['money_in'] = moneyIn;
    data['money_out'] = moneyOut;
    data['account_id'] = accountId;
    data['account_category1'] = accountCategory1;
    data['category1'] = category1;
    data['category2'] = category2;
    data['cashbox_id'] = cashboxId;
    data['cashbox_fees'] = cashboxFees;
    data['amount_net'] = amountNet;
    data['cashbox_in'] = cashboxIn;
    data['cashbox_out'] = cashboxOut;
    data['due_date'] = dueDate;
    data['is_closed'] = isClosed;
    data['is_cheque'] = isCheque;
    data['cheque_no'] = chequeNo;
    data['cheque_bank'] = chequeBank;
    data['reference'] = reference;
    data['more'] = more;
    data['tax1_per'] = tax1Per;
    data['tax1'] = tax1;
    data['amount_taxed'] = amountTaxed;
    data['is_liquid'] = isLiquid;
    data['liquid_date'] = liquidDate;
    data['liquid_time'] = liquidTime;
    data['affect_account'] = affectAccount;
    data['account_date'] = accountDate;
    data['account_time'] = accountTime;
    data['transfer_id'] = transferId;
    data['createdby_id'] = createdbyId;
    data['createdon'] = createdon;
    data['editedby_id'] = editedbyId;
    data['editedon'] = editedon;
    return data;
  }
}
