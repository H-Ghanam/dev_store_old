import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class Money extends Equatable {
  final int? pk;
  final String? kind;
  final int? id;
  final String? parentKind;
  final int? parentId;
  final DateTime? date1;
  final TimeOfDay? time1;
  final double? amount;
  final double? moneyIn;
  final double? moneyOut;
  final int? accountId;
  final String? accountCategory1;
  final String? category1;
  final String? category2;
  final int? cashboxId;
  final double? cashboxFees;
  final double? amountNet;
  final double? cashboxIn;
  final double? cashboxOut;
  final DateTime? dueDate;
  final int? isClosed;
  final int? isCheque;
  final String? chequeNo;
  final String? chequeBank;
  final String? reference;
  final String? more;
  final double? tax1Per;
  final double? tax1;
  final double? amountTaxed;
  final int? isLiquid;
  final DateTime? liquidDate;
  final TimeOfDay? liquidTime;
  final int? affectAccount;
  final DateTime? accountDate;
  final TimeOfDay? accountTime;
  final int? transferId;
  final int? createdbyId;
  final DateTime? createdon;
  final int? editedbyId;
  final DateTime? editedon;

  const Money(
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

  Money copyWith({
    int? pk,
    String? kind,
    int? id,
    String? parentKind,
    int? parentId,
    DateTime? date1,
    TimeOfDay? time1,
    double? amount,
    double? moneyIn,
    double? moneyOut,
    int? accountId,
    String? accountCategory1,
    String? category1,
    String? category2,
    int? cashboxId,
    double? cashboxFees,
    double? amountNet,
    double? cashboxIn,
    double? cashboxOut,
    DateTime? dueDate,
    int? isClosed,
    int? isCheque,
    String? chequeNo,
    String? chequeBank,
    String? reference,
    String? more,
    double? tax1Per,
    double? tax1,
    double? amountTaxed,
    int? isLiquid,
    DateTime? liquidDate,
    TimeOfDay? liquidTime,
    int? affectAccount,
    DateTime? accountDate,
    TimeOfDay? accountTime,
    int? transferId,
    int? createdbyId,
    DateTime? createdon,
    int? editedbyId,
    DateTime? editedon,
  }) {
    return Money(
      pk: pk ?? this.pk,
      kind: kind ?? this.kind,
      id: id ?? this.id,
      parentKind: parentKind ?? this.parentKind,
      parentId: parentId ?? this.parentId,
      date1: date1 ?? this.date1,
      time1: time1 ?? this.time1,
      amount: amount ?? this.amount,
      moneyIn: moneyIn ?? this.moneyIn,
      moneyOut: moneyOut ?? this.moneyOut,
      accountId: accountId ?? this.accountId,
      accountCategory1: accountCategory1 ?? this.accountCategory1,
      category1: category1 ?? this.category1,
      category2: category2 ?? this.category2,
      cashboxId: cashboxId ?? this.cashboxId,
      cashboxFees: cashboxFees ?? this.cashboxFees,
      amountNet: amountNet ?? this.amountNet,
      cashboxIn: cashboxIn ?? this.cashboxIn,
      cashboxOut: cashboxOut ?? this.cashboxOut,
      dueDate: dueDate ?? this.dueDate,
      isClosed: isClosed ?? this.isClosed,
      isCheque: isCheque ?? this.isCheque,
      chequeNo: chequeNo ?? this.chequeNo,
      chequeBank: chequeBank ?? this.chequeBank,
      reference: reference ?? this.reference,
      more: more ?? this.more,
      tax1Per: tax1Per ?? this.tax1Per,
      tax1: tax1 ?? this.tax1,
      amountTaxed: amountTaxed ?? this.amountTaxed,
      isLiquid: isLiquid ?? this.isLiquid,
      liquidDate: liquidDate ?? this.liquidDate,
      liquidTime: liquidTime ?? this.liquidTime,
      affectAccount: affectAccount ?? this.affectAccount,
      accountDate: accountDate ?? this.accountDate,
      accountTime: accountTime ?? this.accountTime,
      transferId: transferId ?? this.transferId,
      createdbyId: createdbyId ?? this.createdbyId,
      createdon: createdon ?? this.createdon,
      editedbyId: editedbyId ?? this.editedbyId,
      editedon: editedon ?? this.editedon,
    );
  }

  factory Money.fromJson(Map<String, dynamic> json) {
    return Money(
        pk: json['pk'],
        kind: json['kind'],
        id: json['id'],
        parentKind: json['parent_kind'],
        parentId: json['parent_id'],
        date1: DateTime.parse(json['date1']),
        time1: TimeOfDay(
            hour: int.parse(json['time1'].toString().split(':')[0]),
            minute: int.parse(json['time1'].toString().split(':')[1])),
        amount: double.parse(json['amount'].toString()),
        moneyIn: double.parse(json['money_in'].toString()),
        moneyOut: double.parse(json['money_out'].toString()),
        accountId: json['account_id'],
        accountCategory1: json['account_category1'],
        category1: json['category1'],
        category2: json['category2'],
        cashboxId: json['cashbox_id'],
        cashboxFees: double.parse(json['cashbox_fees'].toString()),
        amountNet: double.parse(json['amount_net'].toString()),
        cashboxIn: double.parse(json['cashbox_in'].toString()),
        cashboxOut: double.parse(json['cashbox_out'].toString()),
        dueDate:
            json['due_date'] != null ? DateTime.parse(json['due_date']) : null,
        isClosed: json['is_closed'],
        isCheque: json['is_cheque'],
        chequeNo: json['cheque_no'],
        chequeBank: json['cheque_bank'],
        reference: json['reference'],
        more: json['more'],
        tax1Per: double.parse(json['tax1_per'].toString()),
        tax1: double.parse(json['tax1'].toString()),
        amountTaxed: double.parse(json['amount_taxed'].toString()),
        isLiquid: json['is_liquid'],
        liquidDate: DateTime.parse(json['liquid_date']),
        liquidTime: TimeOfDay(
            hour: int.parse(json['liquid_time'].toString().split(':')[0]),
            minute: int.parse(json['liquid_time'].toString().split(':')[1])),
        affectAccount: json['affect_account'],
        accountDate: json['account_date'] != null
            ? DateTime.parse(json['account_date'])
            : null,
        accountTime: json['account_time'] != null
            ? TimeOfDay(
                hour: int.parse(json['account_time'].toString().split(':')[0]),
                minute:
                    int.parse(json['account_time'].toString().split(':')[1]))
            : null,
        transferId: json['transfer_id'],
        createdbyId: json['createdby_id'],
        createdon: DateTime.parse(json['createdon']),
        editedbyId: json['editedby_id'],
        editedon: DateTime.parse(json['editedon']));
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

  @override
  List<Object?> get props => [
        pk,
        kind,
        id,
        parentKind,
        parentId,
        date1,
        time1,
        amount,
        moneyIn,
        moneyOut,
        accountId,
        accountCategory1,
        category1,
        category2,
        cashboxId,
        cashboxFees,
        amountNet,
        cashboxIn,
        cashboxOut,
        dueDate,
        isClosed,
        isCheque,
        chequeNo,
        chequeBank,
        reference,
        more,
        tax1Per,
        tax1,
        amountTaxed,
        isLiquid,
        liquidDate,
        liquidTime,
        affectAccount,
        accountDate,
        accountTime,
        transferId,
        createdbyId,
        createdon,
        editedbyId,
        editedon
      ];
}
