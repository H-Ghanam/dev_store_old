class Account {
  int? id;
  String? title;
  String? code;
  int? balanceIn;
  int? balanceOut;
  int? instalReceipts;
  int? instalPayments;
  String? kind;
  String? accCustom1;
  String? accCustom2;
  String? accCustom3;
  String? accCustom4;
  String? accCustom5;
  String? accCustom6;
  String? phone;
  String? email;
  String? address;
  String? address2;
  String? taxId;
  String? more;
  String? reminderDate;
  int? salesPriceList;
  int? salesDiscountPer;
  int? maxBalanceOut;
  int? dead;
  String? lastSaleDate;
  int? lastSaleTotal;
  int? lastSaleId;
  String? lastReceiptDate;
  int? lastReceiptAmount;
  int? lastReceiptId;

  Account(
      {this.id,
      this.title,
      this.code,
      this.balanceIn,
      this.balanceOut,
      this.instalReceipts,
      this.instalPayments,
      this.kind,
      this.accCustom1,
      this.accCustom2,
      this.accCustom3,
      this.accCustom4,
      this.accCustom5,
      this.accCustom6,
      this.phone,
      this.email,
      this.address,
      this.address2,
      this.taxId,
      this.more,
      this.reminderDate,
      this.salesPriceList,
      this.salesDiscountPer,
      this.maxBalanceOut,
      this.dead,
      this.lastSaleDate,
      this.lastSaleTotal,
      this.lastSaleId,
      this.lastReceiptDate,
      this.lastReceiptAmount,
      this.lastReceiptId});

  Account.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    code = json['code'];
    balanceIn = json['balance_in'];
    balanceOut = json['balance_out'];
    instalReceipts = json['instal_receipts'];
    instalPayments = json['instal_payments'];
    kind = json['kind'];
    accCustom1 = json['acc_custom1'];
    accCustom2 = json['acc_custom2'];
    accCustom3 = json['acc_custom3'];
    accCustom4 = json['acc_custom4'];
    accCustom5 = json['acc_custom5'];
    accCustom6 = json['acc_custom6'];
    phone = json['phone'];
    email = json['email'];
    address = json['address'];
    address2 = json['address2'];
    taxId = json['tax_id'];
    more = json['more'];
    reminderDate = json['reminder_date'];
    salesPriceList = json['sales_price_list'];
    salesDiscountPer = json['sales_discount_per'];
    maxBalanceOut = json['max_balance_out'];
    dead = json['dead'];
    lastSaleDate = json['last_sale_date'];
    lastSaleTotal = json['last_sale_total'];
    lastSaleId = json['last_sale_id'];
    lastReceiptDate = json['last_receipt_date'];
    lastReceiptAmount = json['last_receipt_amount'];
    lastReceiptId = json['last_receipt_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['code'] = code;
    data['balance_in'] = balanceIn;
    data['balance_out'] = balanceOut;
    data['instal_receipts'] = instalReceipts;
    data['instal_payments'] = instalPayments;
    data['kind'] = kind;
    data['acc_custom1'] = accCustom1;
    data['acc_custom2'] = accCustom2;
    data['acc_custom3'] = accCustom3;
    data['acc_custom4'] = accCustom4;
    data['acc_custom5'] = accCustom5;
    data['acc_custom6'] = accCustom6;
    data['phone'] = phone;
    data['email'] = email;
    data['address'] = address;
    data['address2'] = address2;
    data['tax_id'] = taxId;
    data['more'] = more;
    data['reminder_date'] = reminderDate;
    data['sales_price_list'] = salesPriceList;
    data['sales_discount_per'] = salesDiscountPer;
    data['max_balance_out'] = maxBalanceOut;
    data['dead'] = dead;
    data['last_sale_date'] = lastSaleDate;
    data['last_sale_total'] = lastSaleTotal;
    data['last_sale_id'] = lastSaleId;
    data['last_receipt_date'] = lastReceiptDate;
    data['last_receipt_amount'] = lastReceiptAmount;
    data['last_receipt_id'] = lastReceiptId;
    return data;
  }
}
