import 'package:equatable/equatable.dart';

class Account extends Equatable {
  final num? id;
  final String? title;
  final String? code;
  final num? balanceIn;
  final num? balanceOut;
  final num? instalReceipts;
  final num? instalPayments;
  final String? kind;
  final String? accCustom1;
  final String? accCustom2;
  final String? accCustom3;
  final String? accCustom4;
  final String? accCustom5;
  final String? accCustom6;
  final String? phone;
  final String? email;
  final String? address;
  final String? address2;
  final String? taxId;
  final String? more;
  final String? reminderDate;
  final num? salesPriceList;
  final num? salesDiscountPer;
  final num? maxBalanceOut;
  final num? dead;
  final String? lastSaleDate;
  final num? lastSaleTotal;
  final num? lastSaleId;
  final String? lastReceiptDate;
  final num? lastReceiptAmount;
  final num? lastReceiptId;

  const Account(
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

  factory Account.fromJson(Map<String, dynamic> json) {
    return Account(
        id: json['id'],
        title: json['title'],
        code: json['code'],
        balanceIn: json['balanceIn'],
        balanceOut: json['balanceOut'],
        instalReceipts: json['instalReceipts'],
        instalPayments: json['instalPayments'],
        kind: json['kind'],
        accCustom1: json['accCustom1'],
        accCustom2: json['accCustom2'],
        accCustom3: json['accCustom3'],
        accCustom4: json['accCustom4'],
        accCustom5: json['accCustom5'],
        accCustom6: json['accCustom6'],
        phone: json['phone'],
        email: json['email'],
        address: json['address'],
        address2: json['address2'],
        taxId: json['taxId'],
        more: json['more'],
        reminderDate: json['reminderDate'],
        salesPriceList: json['salesPriceList'],
        salesDiscountPer: json['salesDiscountPer'],
        maxBalanceOut: json['maxBalanceOut'],
        dead: json['dead'],
        lastSaleDate: json['lastSaleDate'],
        lastSaleTotal: json['lastSaleTotal'],
        lastSaleId: json['lastSaleId'],
        lastReceiptDate: json['lastReceiptDate'],
        lastReceiptAmount: json['lastReceiptAmount'],
        lastReceiptId: json['lastReceiptId']);
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

  @override
  List<Object?> get props => [
        id,
        title,
        code,
        balanceIn,
        balanceOut,
        instalReceipts,
        instalPayments,
        kind,
        accCustom1,
        accCustom2,
        accCustom3,
        accCustom4,
        accCustom5,
        accCustom6,
        phone,
        email,
        address,
        address2,
        taxId,
        more,
        reminderDate,
        salesPriceList,
        salesDiscountPer,
        maxBalanceOut,
        dead,
        lastSaleDate,
        lastSaleTotal,
        lastSaleId,
        lastReceiptDate,
        lastReceiptAmount,
        lastReceiptId,
      ];
}
