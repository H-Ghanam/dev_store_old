import 'package:equatable/equatable.dart';

class Account extends Equatable {
  final int? id;
  final String? title;
  final String? code;
  final double? balanceIn;
  final double? balanceOut;
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
  final DateTime? reminderDate;
  final int? salesPriceList;
  final int? salesDiscountPer;
  final double? maxBalanceOut;
  final int? dead;
  final DateTime? lastSaleDate;
  final double? lastSaleTotal;
  final int? lastSaleId;
  final DateTime? lastReceiptDate;
  final double? lastReceiptAmount;
  final int? lastReceiptId;

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

  Account copyWith({
    int? id,
    String? title,
    String? code,
    double? balanceIn,
    double? balanceOut,
    num? instalReceipts,
    num? instalPayments,
    String? kind,
    String? accCustom1,
    String? accCustom2,
    String? accCustom3,
    String? accCustom4,
    String? accCustom5,
    String? accCustom6,
    String? phone,
    String? email,
    String? address,
    String? address2,
    String? taxId,
    String? more,
    DateTime? reminderDate,
    int? salesPriceList,
    int? salesDiscountPer,
    double? maxBalanceOut,
    int? dead,
    DateTime? lastSaleDate,
    double? lastSaleTotal,
    int? lastSaleId,
    DateTime? lastReceiptDate,
    double? lastReceiptAmount,
    int? lastReceiptId,
  }) {
    return Account(
      id: id ?? this.id,
      title: title ?? this.title,
      code: code ?? this.code,
      balanceIn: balanceIn ?? this.balanceIn,
      balanceOut: balanceOut ?? this.balanceOut,
      instalReceipts: instalReceipts ?? this.instalReceipts,
      instalPayments: instalPayments ?? this.instalPayments,
      kind: kind ?? this.kind,
      accCustom1: accCustom1 ?? this.accCustom1,
      accCustom2: accCustom2 ?? this.accCustom2,
      accCustom3: accCustom3 ?? this.accCustom3,
      accCustom4: accCustom4 ?? this.accCustom4,
      accCustom5: accCustom5 ?? this.accCustom5,
      accCustom6: accCustom6 ?? this.accCustom6,
      phone: phone ?? this.phone,
      email: email ?? this.email,
      address: address ?? this.address,
      address2: address2 ?? this.address2,
      taxId: taxId ?? this.taxId,
      more: more ?? this.more,
      reminderDate: reminderDate ?? this.reminderDate,
      salesPriceList: salesPriceList ?? this.salesPriceList,
      salesDiscountPer: salesDiscountPer ?? this.salesDiscountPer,
      maxBalanceOut: maxBalanceOut ?? this.maxBalanceOut,
      dead: dead ?? this.dead,
      lastSaleDate: lastSaleDate ?? this.lastSaleDate,
      lastSaleTotal: lastSaleTotal ?? this.lastSaleTotal,
      lastSaleId: lastSaleId ?? this.lastSaleId,
      lastReceiptDate: lastReceiptDate ?? this.lastReceiptDate,
      lastReceiptAmount: lastReceiptAmount ?? this.lastReceiptAmount,
      lastReceiptId: lastReceiptId ?? this.lastReceiptId,
    );
  }

  factory Account.fromJson(Map<String, dynamic> json) {
    return Account(
        id: json['id'],
        title: json['title'],
        code: json['code'],
        balanceIn: double.parse(json['balance_in'].toString()),
        balanceOut: double.parse(json['balance_out'].toString()),
        instalReceipts: double.parse(json['instal_receipts'].toString()),
        instalPayments: double.parse(json['instal_payments'].toString()),
        kind: json['kind'],
        accCustom1: json['acc_custom1'],
        accCustom2: json['acc_custom2'],
        accCustom3: json['acc_custom3'],
        accCustom4: json['acc_custom4'],
        accCustom5: json['acc_custom5'],
        accCustom6: json['acc_custom6'],
        phone: json['phone'],
        email: json['email'],
        address: json['address'],
        address2: json['address2'],
        taxId: json['tax_id'],
        more: json['more'],
        reminderDate: DateTime.parse(json['reminder_date']),
        salesPriceList: json['sales_price_list'],
        salesDiscountPer: json['sales_discount_per'],
        maxBalanceOut: double.parse(json['max_balance_out'].toString()),
        dead: json['dead'],
        lastSaleDate: DateTime.parse(json['last_sale_date']),
        lastSaleTotal: double.parse(json['last_sale_total'].toString()),
        lastSaleId: json['last_sale_id'],
        lastReceiptDate: DateTime.parse(json['last_receipt_date']),
        lastReceiptAmount: double.parse(json['last_receipt_amount'].toString()),
        lastReceiptId: json['last_receipt_id']);
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
