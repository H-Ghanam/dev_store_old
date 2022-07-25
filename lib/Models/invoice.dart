import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class Invoice extends Equatable {
  final int? pk;
  final int id;
  final String kind;
  final int storeId;
  final DateTime? date1;
  final TimeOfDay? time1;
  final int? accountId;
  final double? qty;
  final double? total;
  final double? totalIncTax;
  final double? totalCost;
  final double? totalPrice;
  final double? discount1;
  final double? totalIncDiscount1;
  final String? addition1Type;
  final double? addition1Per;
  final double? addition1;
  final double? addition2Per;
  final double? addition2;
  final double? addition3Per;
  final double? addition3;
  final double? additions;
  final double? discount2Per;
  final double? discount2;
  final double? discounts;
  final double? netCost;
  final double? netPrice;
  final double? netTotal;
  final double? tax1Per;
  final double? tax1;
  final double? tax2Per;
  final double? tax2;
  final double? grandTotal;
  final double? customerPay;
  final double? customerChange;
  final double? cashbox1;
  final int? cashbox1Id;
  final double? cashbox2;
  final int? cashbox2Id;
  final double? cash;
  final double? cheques;
  final double? credit;
  final double? creditPaid;
  final double? creditDue;
  final String? paymentType;
  final String? paymentStatus;
  final String? expense1Type;
  final double? expense1;
  final double? cashboxFees;
  final double? expenses;
  final double? realNetCost;
  final double? profit;
  final double? costErrors;
  final String? reference;
  final int? storeToId;
  final int? salesmanId;
  final int? reserved;
  final int? returnInvId;
  final String? status;
  final String? shippedby;
  final String? custom1;
  final String? custom2;
  final String? custom3;
  final String? custom4;
  final String? custom5;
  final String? more;
  final DateTime? dueDate;
  final double? qtyDelivered;
  final int? createdbyId;
  final DateTime? createdon;
  final int? editedbyId;
  final DateTime? editedon;

  const Invoice({
    this.pk,
    required this.id,
    required this.kind,
    required this.storeId,
    this.date1,
    this.time1,
    this.accountId,
    this.qty,
    this.total,
    this.totalIncTax,
    this.totalCost,
    this.totalPrice,
    this.discount1,
    this.totalIncDiscount1,
    this.addition1Type,
    this.addition1Per,
    this.addition1,
    this.addition2Per,
    this.addition2,
    this.addition3Per,
    this.addition3,
    this.additions,
    this.discount2Per,
    this.discount2,
    this.discounts,
    this.netCost,
    this.netPrice,
    this.netTotal,
    this.tax1Per,
    this.tax1,
    this.tax2Per,
    this.tax2,
    this.grandTotal,
    this.customerPay,
    this.customerChange,
    this.cashbox1,
    this.cashbox1Id,
    this.cashbox2,
    this.cashbox2Id,
    this.cash,
    this.cheques,
    this.credit,
    this.creditPaid,
    this.creditDue,
    this.paymentType,
    this.paymentStatus,
    this.expense1Type,
    this.expense1,
    this.cashboxFees,
    this.expenses,
    this.realNetCost,
    this.profit,
    this.costErrors,
    this.reference,
    this.storeToId,
    this.salesmanId,
    this.reserved,
    this.returnInvId,
    this.status,
    this.shippedby,
    this.custom1,
    this.custom2,
    this.custom3,
    this.custom4,
    this.custom5,
    this.more,
    this.dueDate,
    this.qtyDelivered,
    this.createdbyId,
    this.createdon,
    this.editedbyId,
    this.editedon,
  });

  Invoice copyWith({
    int? pk,
    int? id,
    String? kind,
    int? storeId,
    DateTime? date1,
    TimeOfDay? time1,
    int? accountId,
    double? qty,
    double? total,
    double? totalIncTax,
    double? totalCost,
    double? totalPrice,
    double? discount1,
    double? totalIncDiscount1,
    String? addition1Type,
    double? addition1Per,
    double? addition1,
    double? addition2Per,
    double? addition2,
    double? addition3Per,
    double? addition3,
    double? additions,
    double? discount2Per,
    double? discount2,
    double? discounts,
    double? netCost,
    double? netPrice,
    double? netTotal,
    double? tax1Per,
    double? tax1,
    double? tax2Per,
    double? tax2,
    double? grandTotal,
    double? customerPay,
    double? customerChange,
    double? cashbox1,
    int? cashbox1Id,
    double? cashbox2,
    int? cashbox2Id,
    double? cash,
    double? cheques,
    double? credit,
    double? creditPaid,
    double? creditDue,
    String? paymentType,
    String? paymentStatus,
    String? expense1Type,
    double? expense1,
    double? cashboxFees,
    double? expenses,
    double? realNetCost,
    double? profit,
    double? costErrors,
    String? reference,
    int? storeToId,
    int? salesmanId,
    int? reserved,
    int? returnInvId,
    String? status,
    String? shippedby,
    String? custom1,
    String? custom2,
    String? custom3,
    String? custom4,
    String? custom5,
    String? more,
    DateTime? dueDate,
    double? qtyDelivered,
    int? createdbyId,
    DateTime? createdon,
    int? editedbyId,
    DateTime? editedon,
  }) {
    return Invoice(
      pk: pk ?? this.pk,
      kind: kind ?? this.kind,
      id: id ?? this.id,
      storeId: storeId ?? this.storeId,
      date1: date1 ?? this.date1,
      time1: time1 ?? this.time1,
      accountId: accountId ?? this.accountId,
      qty: qty ?? this.qty,
      total: total ?? this.total,
      totalIncTax: totalIncTax ?? this.totalIncTax,
      totalCost: totalCost ?? this.totalCost,
      totalPrice: totalPrice ?? this.totalPrice,
      discount1: discount1 ?? this.discount1,
      totalIncDiscount1: totalIncDiscount1 ?? this.totalIncDiscount1,
      addition1Type: addition1Type ?? this.addition1Type,
      addition1Per: addition1Per ?? this.addition1Per,
      addition1: addition1 ?? this.addition1,
      addition2Per: addition2Per ?? this.addition2Per,
      addition2: addition2 ?? this.addition2,
      addition3Per: addition3Per ?? this.addition3Per,
      addition3: addition3 ?? this.addition3,
      additions: additions ?? this.additions,
      discount2Per: discount2Per ?? this.discount2Per,
      discount2: discount2 ?? this.discount2,
      discounts: discounts ?? this.discounts,
      netCost: netCost ?? this.netCost,
      netPrice: netPrice ?? this.netPrice,
      netTotal: netTotal ?? this.netTotal,
      tax1Per: tax1Per ?? this.tax1Per,
      tax1: tax1 ?? this.tax1,
      tax2Per: tax2Per ?? this.tax2Per,
      tax2: tax2 ?? this.tax2,
      grandTotal: grandTotal ?? this.grandTotal,
      customerPay: customerPay ?? this.customerPay,
      customerChange: customerChange ?? this.customerChange,
      cashbox1: cashbox1 ?? this.cashbox1,
      cashbox1Id: cashbox1Id ?? this.cashbox1Id,
      cashbox2: cashbox2 ?? this.cashbox2,
      cashbox2Id: cashbox2Id ?? this.cashbox2Id,
      cash: cash ?? this.cash,
      cheques: cheques ?? this.cheques,
      credit: credit ?? this.credit,
      creditPaid: creditPaid ?? this.creditPaid,
      creditDue: creditDue ?? this.creditDue,
      paymentType: paymentType ?? this.paymentType,
      paymentStatus: paymentStatus ?? this.paymentStatus,
      expense1Type: expense1Type ?? this.expense1Type,
      expense1: expense1 ?? this.expense1,
      cashboxFees: cashboxFees ?? this.cashboxFees,
      expenses: expenses ?? this.expenses,
      realNetCost: realNetCost ?? this.realNetCost,
      profit: profit ?? this.profit,
      costErrors: costErrors ?? this.costErrors,
      reference: reference ?? this.reference,
      storeToId: storeToId ?? this.storeToId,
      salesmanId: salesmanId ?? this.salesmanId,
      reserved: reserved ?? this.reserved,
      returnInvId: returnInvId ?? this.returnInvId,
      status: status ?? this.status,
      shippedby: shippedby ?? this.shippedby,
      custom1: custom1 ?? this.custom1,
      custom2: custom2 ?? this.custom2,
      custom3: custom3 ?? this.custom3,
      custom4: custom4 ?? this.custom4,
      custom5: custom5 ?? this.custom5,
      more: more ?? this.more,
      dueDate: dueDate ?? this.dueDate,
      qtyDelivered: qtyDelivered ?? this.qtyDelivered,
      createdbyId: createdbyId ?? this.createdbyId,
      createdon: createdon ?? this.createdon,
      editedbyId: editedbyId ?? this.editedbyId,
      editedon: editedon ?? this.editedon,
    );
  }

  factory Invoice.fromJson(Map<String, dynamic> json) {
    return Invoice(
      pk: json['pk'],
      id: json['id'],
      kind: json['kind'],
      storeId: json['store_id'],
      date1: json['date1'] != null ? DateTime.parse(json['date1']) : null,
      time1: json['time1'] != null
          ? TimeOfDay(
              hour: int.parse(json['time1'].toString().split(':')[0]),
              minute: int.parse(json['time1'].toString().split(':')[1]))
          : null,
      accountId: json['account_id'],
      qty: json['qty'] != null ? double.parse(json['qty'].toString()) : null,
      total:
          json['total'] != null ? double.parse(json['total'].toString()) : null,
      totalIncTax: json['totalIncTax'] != null
          ? double.parse(json['total_inc_tax'].toString())
          : null,
      totalCost: json['totalCost'] != null
          ? double.parse(json['total_cost'].toString())
          : null,
      totalPrice: json['totalPrice'] != null
          ? double.parse(json['total_price'].toString())
          : null,
      discount1: json['discount1'] != null
          ? double.parse(json['discount1'].toString())
          : null,
      totalIncDiscount1: json['totalIncDiscount1'] != null
          ? double.parse(json['total_inc_discount1'].toString())
          : null,
      addition1Type: json['addition1_type'],
      addition1Per: json['addition1Per'] != null
          ? double.parse(json['addition1_per'].toString())
          : null,
      addition1: json['addition1'] != null
          ? double.parse(json['addition1'].toString())
          : null,
      addition2Per: json['addition2Per'] != null
          ? double.parse(json['addition2_per'].toString())
          : null,
      addition2: json['addition2'] != null
          ? double.parse(json['addition2'].toString())
          : null,
      addition3Per: json['addition3Per'] != null
          ? double.parse(json['addition3_per'].toString())
          : null,
      addition3: json['addition3'] != null
          ? double.parse(json['addition3'].toString())
          : null,
      additions: json['additions'] != null
          ? double.parse(json['additions'].toString())
          : null,
      discount2Per: json['discount2Per'] != null
          ? double.parse(json['discount2_per'].toString())
          : null,
      discount2: json['discount2'] != null
          ? double.parse(json['discount2'].toString())
          : null,
      discounts: json['discounts'] != null
          ? double.parse(json['discounts'].toString())
          : null,
      netCost: json['netCost'] != null
          ? double.parse(json['net_cost'].toString())
          : null,
      netPrice: json['netPrice'] != null
          ? double.parse(json['net_price'].toString())
          : null,
      netTotal: json['netTotal'] != null
          ? double.parse(json['net_total'].toString())
          : null,
      tax1Per: json['tax1Per'] != null
          ? double.parse(json['tax1_per'].toString())
          : null,
      tax1: json['tax1'] != null ? double.parse(json['tax1'].toString()) : null,
      tax2Per: json['tax2Per'] != null
          ? double.parse(json['tax2_per'].toString())
          : null,
      tax2: json['tax2'] != null ? double.parse(json['tax2'].toString()) : null,
      grandTotal: json['grandTotal'] != null
          ? double.parse(json['grand_total'].toString())
          : null,
      customerPay: json['customerPay'] != null
          ? double.parse(json['customer_pay'].toString())
          : null,
      customerChange: json['customerChange'] != null
          ? double.parse(json['customer_change'].toString())
          : null,
      cashbox1: json['cashbox1'] != null
          ? double.parse(json['cashbox1'].toString())
          : null,
      cashbox1Id: json['cashbox1_id'],
      cashbox2: json['cashbox2'] != null
          ? double.parse(json['cashbox2'].toString())
          : null,
      cashbox2Id: json['cashbox2_id'],
      cash: json['cash'] != null ? double.parse(json['cash'].toString()) : null,
      cheques: json['cheques'] != null
          ? double.parse(json['cheques'].toString())
          : null,
      credit: json['credit'] != null
          ? double.parse(json['credit'].toString())
          : null,
      creditPaid: json['creditPaid'] != null
          ? double.parse(json['credit_paid'].toString())
          : null,
      creditDue: json['creditDue'] != null
          ? double.parse(json['credit_due'].toString())
          : null,
      paymentType: json['payment_type'],
      paymentStatus: json['payment_status'],
      expense1Type: json['expense1_type'],
      expense1: json['expense1'] != null
          ? double.parse(json['expense1'].toString())
          : null,
      cashboxFees: json['cashboxFees'] != null
          ? double.parse(json['cashbox_fees'].toString())
          : null,
      expenses: json['expenses'] != null
          ? double.parse(json['expenses'].toString())
          : null,
      realNetCost: json['realNetCost'] != null
          ? double.parse(json['real_net_cost'].toString())
          : null,
      profit: json['profit'] != null
          ? double.parse(json['profit'].toString())
          : null,
      costErrors: json['costErrors'] != null
          ? double.parse(json['cost_errors'].toString())
          : null,
      reference: json['reference'],
      storeToId: json['store_to_id'],
      salesmanId: json['salesman_id'],
      reserved: json['reserved'],
      returnInvId: json['return_inv_id'],
      status: json['status'],
      shippedby: json['shippedby'],
      custom1: json['custom1'],
      custom2: json['custom2'],
      custom3: json['custom3'],
      custom4: json['custom4'],
      custom5: json['custom5'],
      more: json['more'],
      dueDate:
          json['dueDate'] != null ? DateTime.parse(json['due_date']) : null,
      qtyDelivered: json['qtyDelivered'] != null
          ? double.parse(json['qty_delivered'].toString())
          : null,
      createdbyId: json['createdby_id'],
      createdon:
          json['createdon'] != null ? DateTime.parse(json['createdon']) : null,
      editedbyId: json['editedby_id'],
      editedon:
          json['editedon'] != null ? DateTime.parse(json['editedon']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['pk'] = pk;
    data['id'] = id;
    data['kind'] = kind;
    data['store_id'] = storeId;
    data['date1'] = date1;
    data['time1'] = time1;
    data['account_id'] = accountId;
    data['qty'] = qty;
    data['total'] = total;
    data['total_inc_tax'] = totalIncTax;
    data['total_cost'] = totalCost;
    data['total_price'] = totalPrice;
    data['discount1'] = discount1;
    data['total_inc_discount1'] = totalIncDiscount1;
    data['addition1_type'] = addition1Type;
    data['addition1_per'] = addition1Per;
    data['addition1'] = addition1;
    data['addition2_per'] = addition2Per;
    data['addition2'] = addition2;
    data['addition3_per'] = addition3Per;
    data['addition3'] = addition3;
    data['additions'] = additions;
    data['discount2_per'] = discount2Per;
    data['discount2'] = discount2;
    data['discounts'] = discounts;
    data['net_cost'] = netCost;
    data['net_price'] = netPrice;
    data['net_total'] = netTotal;
    data['tax1_per'] = tax1Per;
    data['tax1'] = tax1;
    data['tax2_per'] = tax2Per;
    data['tax2'] = tax2;
    data['grand_total'] = grandTotal;
    data['customer_pay'] = customerPay;
    data['customer_change'] = customerChange;
    data['cashbox1'] = cashbox1;
    data['cashbox1_id'] = cashbox1Id;
    data['cashbox2'] = cashbox2;
    data['cashbox2_id'] = cashbox2Id;
    data['cash'] = cash;
    data['cheques'] = cheques;
    data['credit'] = credit;
    data['credit_paid'] = creditPaid;
    data['credit_due'] = creditDue;
    data['payment_type'] = paymentType;
    data['payment_status'] = paymentStatus;
    data['expense1_type'] = expense1Type;
    data['expense1'] = expense1;
    data['cashbox_fees'] = cashboxFees;
    data['expenses'] = expenses;
    data['real_net_cost'] = realNetCost;
    data['profit'] = profit;
    data['cost_errors'] = costErrors;
    data['reference'] = reference;
    data['store_to_id'] = storeToId;
    data['salesman_id'] = salesmanId;
    data['reserved'] = reserved;
    data['return_inv_id'] = returnInvId;
    data['status'] = status;
    data['shippedby'] = shippedby;
    data['custom1'] = custom1;
    data['custom2'] = custom2;
    data['custom3'] = custom3;
    data['custom4'] = custom4;
    data['custom5'] = custom5;
    data['more'] = more;
    data['due_date'] = dueDate;
    data['qty_delivered'] = qtyDelivered;
    data['createdby_id'] = createdbyId;
    data['createdon'] = createdon;
    data['editedby_id'] = editedbyId;
    data['editedon'] = editedon;
    return data;
  }

  @override
  List<Object?> get props => [
        pk,
        id,
        kind,
        storeId,
        date1,
        time1,
        accountId,
        qty,
        total,
        totalIncTax,
        totalCost,
        totalPrice,
        discount1,
        totalIncDiscount1,
        addition1Type,
        addition1Per,
        addition1,
        addition2Per,
        addition2,
        addition3Per,
        addition3,
        additions,
        discount2Per,
        discount2,
        discounts,
        netCost,
        netPrice,
        netTotal,
        tax1Per,
        tax1,
        tax2Per,
        tax2,
        grandTotal,
        customerPay,
        customerChange,
        cashbox1,
        cashbox1Id,
        cashbox2,
        cashbox2Id,
        cash,
        cheques,
        credit,
        creditPaid,
        creditDue,
        paymentType,
        paymentStatus,
        expense1Type,
        expense1,
        cashboxFees,
        expenses,
        realNetCost,
        profit,
        costErrors,
        reference,
        storeToId,
        salesmanId,
        reserved,
        returnInvId,
        status,
        shippedby,
        custom1,
        custom2,
        custom3,
        custom4,
        custom5,
        more,
        dueDate,
        qtyDelivered,
        createdbyId,
        createdon,
        editedbyId,
        editedon
      ];
}
