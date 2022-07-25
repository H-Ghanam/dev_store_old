import 'package:equatable/equatable.dart';

class User extends Equatable {
  final int? id;
  final int? sn;
  final String? title;
  final String? pass;
  final int? active;
  final int? options;
  final String? stores;
  final String? cashboxes;
  final int? cashboxTransferTo;
  final int? seeCost;
  final int? editIds;
  final int? editDate;
  final int? todayOnlyUpdate;
  final int? todayOnlyList;
  final int? removeBank;
  final int? changeQtyMinusZero;
  final int? backupCreate;
  final int? backupRestore;
  final int? itemList;
  final int? itemAdd;
  final int? itemEdit;
  final int? itemDel;
  final int? itemStatement;
  final int? itemEvaluation;
  final int? itemInOut;
  final int? itemBarcode;
  final int? itemCargo;
  final int? accountList;
  final int? accountAdd;
  final int? accountEdit;
  final int? accountDel;
  final int? accountCustomer;
  final int? accountSupplier;
  final int? accountSalesman;
  final int? accountOther;
  final int? accountBalance;
  final int? accountStatement;
  final int? accountCloseInvoices;
  final int? purchaseList;
  final int? purchaseAdd;
  final int? purchaseEdit;
  final int? purchaseDel;
  final int? purchaseReturn;
  final int? purchaseTax1Edit;
  final int? purchaseCreditPayment;
  final int? saleList;
  final int? saleAdd;
  final int? saleEdit;
  final int? saleDel;
  final int? saleModifyPrices;
  final int? salePriceBelowMinPrice;
  final int? salePriceBelowCost;
  final int? saleDiscount;
  final int? saleSeeProfit;
  final int? saleSeeInvoiceProfit;
  final int? saleReturn;
  final int? delivery;
  final double? saleMaxDiscountPer;
  final double? saleMaxDiscountAmount;
  final int? saleTax1Edit;
  final int? saleCreditPayment;
  final int? salequoteList;
  final int? salequoteAdd;
  final int? salequoteEdit;
  final int? salequoteDel;
  final int? inventList;
  final int? inventAdd;
  final int? inventEdit;
  final int? inventDel;
  final int? adjustList;
  final int? adjustAdd;
  final int? adjustEdit;
  final int? adjustDel;
  final int? transferList;
  final int? transferAdd;
  final int? transferEdit;
  final int? transferDel;
  final int? paymentList;
  final int? paymentAdd;
  final int? paymentEdit;
  final int? paymentDel;
  final int? receiptList;
  final int? receiptAdd;
  final int? receiptEdit;
  final int? receiptDel;
  final int? moneyTransferAdd;
  final int? moneyTransferEdit;
  final int? moneyTransferDel;
  final int? instalList;
  final int? instalAdd;
  final int? installmentList;
  final int? installmentAdd;
  final int? installmentEdit;
  final int? installmentDel;
  final int? installmentDueParts;
  final int? installmentReceipt;
  final int? moneyList;
  final int? paymentAnalysis;
  final int? receiptAnalysis;
  final int? reports;
  final int? reportDaily;
  final int? reportSalesAnalysis;
  final int? reportPurchasesAnalysis;

  const User(
      {this.id,
      this.sn,
      this.title,
      this.pass,
      this.active,
      this.options,
      this.stores,
      this.cashboxes,
      this.cashboxTransferTo,
      this.seeCost,
      this.editIds,
      this.editDate,
      this.todayOnlyUpdate,
      this.todayOnlyList,
      this.removeBank,
      this.changeQtyMinusZero,
      this.backupCreate,
      this.backupRestore,
      this.itemList,
      this.itemAdd,
      this.itemEdit,
      this.itemDel,
      this.itemStatement,
      this.itemEvaluation,
      this.itemInOut,
      this.itemBarcode,
      this.itemCargo,
      this.accountList,
      this.accountAdd,
      this.accountEdit,
      this.accountDel,
      this.accountCustomer,
      this.accountSupplier,
      this.accountSalesman,
      this.accountOther,
      this.accountBalance,
      this.accountStatement,
      this.accountCloseInvoices,
      this.purchaseList,
      this.purchaseAdd,
      this.purchaseEdit,
      this.purchaseDel,
      this.purchaseReturn,
      this.purchaseTax1Edit,
      this.purchaseCreditPayment,
      this.saleList,
      this.saleAdd,
      this.saleEdit,
      this.saleDel,
      this.saleModifyPrices,
      this.salePriceBelowMinPrice,
      this.salePriceBelowCost,
      this.saleDiscount,
      this.saleSeeProfit,
      this.saleSeeInvoiceProfit,
      this.saleReturn,
      this.delivery,
      this.saleMaxDiscountPer,
      this.saleMaxDiscountAmount,
      this.saleTax1Edit,
      this.saleCreditPayment,
      this.salequoteList,
      this.salequoteAdd,
      this.salequoteEdit,
      this.salequoteDel,
      this.inventList,
      this.inventAdd,
      this.inventEdit,
      this.inventDel,
      this.adjustList,
      this.adjustAdd,
      this.adjustEdit,
      this.adjustDel,
      this.transferList,
      this.transferAdd,
      this.transferEdit,
      this.transferDel,
      this.paymentList,
      this.paymentAdd,
      this.paymentEdit,
      this.paymentDel,
      this.receiptList,
      this.receiptAdd,
      this.receiptEdit,
      this.receiptDel,
      this.moneyTransferAdd,
      this.moneyTransferEdit,
      this.moneyTransferDel,
      this.instalList,
      this.instalAdd,
      this.installmentList,
      this.installmentAdd,
      this.installmentEdit,
      this.installmentDel,
      this.installmentDueParts,
      this.installmentReceipt,
      this.moneyList,
      this.paymentAnalysis,
      this.receiptAnalysis,
      this.reports,
      this.reportDaily,
      this.reportSalesAnalysis,
      this.reportPurchasesAnalysis});

  User copyWith({
    int? id,
    int? sn,
    String? title,
    String? pass,
    int? active,
    int? options,
    String? stores,
    String? cashboxes,
    int? cashboxTransferTo,
    int? seeCost,
    int? editIds,
    int? editDate,
    int? todayOnlyUpdate,
    int? todayOnlyList,
    int? removeBank,
    int? changeQtyMinusZero,
    int? backupCreate,
    int? backupRestore,
    int? itemList,
    int? itemAdd,
    int? itemEdit,
    int? itemDel,
    int? itemStatement,
    int? itemEvaluation,
    int? itemInOut,
    int? itemBarcode,
    int? itemCargo,
    int? accountList,
    int? accountAdd,
    int? accountEdit,
    int? accountDel,
    int? accountCustomer,
    int? accountSupplier,
    int? accountSalesman,
    int? accountOther,
    int? accountBalance,
    int? accountStatement,
    int? accountCloseInvoices,
    int? purchaseList,
    int? purchaseAdd,
    int? purchaseEdit,
    int? purchaseDel,
    int? purchaseReturn,
    int? purchaseTax1Edit,
    int? purchaseCreditPayment,
    int? saleList,
    int? saleAdd,
    int? saleEdit,
    int? saleDel,
    int? saleModifyPrices,
    int? salePriceBelowMinPrice,
    int? salePriceBelowCost,
    int? saleDiscount,
    int? saleSeeProfit,
    int? saleSeeInvoiceProfit,
    int? saleReturn,
    int? delivery,
    double? saleMaxDiscountPer,
    double? saleMaxDiscountAmount,
    int? saleTax1Edit,
    int? saleCreditPayment,
    int? salequoteList,
    int? salequoteAdd,
    int? salequoteEdit,
    int? salequoteDel,
    int? inventList,
    int? inventAdd,
    int? inventEdit,
    int? inventDel,
    int? adjustList,
    int? adjustAdd,
    int? adjustEdit,
    int? adjustDel,
    int? transferList,
    int? transferAdd,
    int? transferEdit,
    int? transferDel,
    int? paymentList,
    int? paymentAdd,
    int? paymentEdit,
    int? paymentDel,
    int? receiptList,
    int? receiptAdd,
    int? receiptEdit,
    int? receiptDel,
    int? moneyTransferAdd,
    int? moneyTransferEdit,
    int? moneyTransferDel,
    int? instalList,
    int? instalAdd,
    int? installmentList,
    int? installmentAdd,
    int? installmentEdit,
    int? installmentDel,
    int? installmentDueParts,
    int? installmentReceipt,
    int? moneyList,
    int? paymentAnalysis,
    int? receiptAnalysis,
    int? reports,
    int? reportDaily,
    int? reportSalesAnalysis,
    int? reportPurchasesAnalysis,
  }) {
    return User(
      id: id ?? this.id,
      sn: sn ?? this.sn,
      title: title ?? this.title,
      pass: pass ?? this.pass,
      active: active ?? this.active,
      options: options ?? this.options,
      stores: stores ?? this.stores,
      cashboxes: cashboxes ?? this.cashboxes,
      cashboxTransferTo: cashboxTransferTo ?? this.cashboxTransferTo,
      seeCost: seeCost ?? this.seeCost,
      editIds: editIds ?? this.editIds,
      editDate: editDate ?? this.editDate,
      todayOnlyUpdate: todayOnlyUpdate ?? this.todayOnlyUpdate,
      todayOnlyList: todayOnlyList ?? this.todayOnlyList,
      removeBank: removeBank ?? this.removeBank,
      changeQtyMinusZero: changeQtyMinusZero ?? this.changeQtyMinusZero,
      backupCreate: backupCreate ?? this.backupCreate,
      backupRestore: backupRestore ?? this.backupRestore,
      itemList: itemList ?? this.itemList,
      itemAdd: itemAdd ?? this.itemAdd,
      itemEdit: itemEdit ?? this.itemEdit,
      itemDel: itemDel ?? this.itemDel,
      itemStatement: itemStatement ?? this.itemStatement,
      itemEvaluation: itemEvaluation ?? this.itemEvaluation,
      itemInOut: itemInOut ?? this.itemInOut,
      itemBarcode: itemBarcode ?? this.itemBarcode,
      itemCargo: itemCargo ?? this.itemCargo,
      accountList: accountList ?? this.accountList,
      accountAdd: accountAdd ?? this.accountAdd,
      accountEdit: accountEdit ?? this.accountEdit,
      accountDel: accountDel ?? this.accountDel,
      accountCustomer: accountCustomer ?? this.accountCustomer,
      accountSupplier: accountSupplier ?? this.accountSupplier,
      accountSalesman: accountSalesman ?? this.accountSalesman,
      accountOther: accountOther ?? this.accountOther,
      accountBalance: accountBalance ?? this.accountBalance,
      accountStatement: accountStatement ?? this.accountStatement,
      accountCloseInvoices: accountCloseInvoices ?? this.accountCloseInvoices,
      purchaseList: purchaseList ?? this.purchaseList,
      purchaseAdd: purchaseAdd ?? this.purchaseAdd,
      purchaseEdit: purchaseEdit ?? this.purchaseEdit,
      purchaseDel: purchaseDel ?? this.purchaseDel,
      purchaseReturn: purchaseReturn ?? this.purchaseReturn,
      purchaseTax1Edit: purchaseTax1Edit ?? this.purchaseTax1Edit,
      purchaseCreditPayment:
          purchaseCreditPayment ?? this.purchaseCreditPayment,
      saleList: saleList ?? this.saleList,
      saleAdd: saleAdd ?? this.saleAdd,
      saleEdit: saleEdit ?? this.saleEdit,
      saleDel: saleDel ?? this.saleDel,
      saleModifyPrices: saleModifyPrices ?? this.saleModifyPrices,
      salePriceBelowMinPrice:
          salePriceBelowMinPrice ?? this.salePriceBelowMinPrice,
      salePriceBelowCost: salePriceBelowCost ?? this.salePriceBelowCost,
      saleDiscount: saleDiscount ?? this.saleDiscount,
      saleSeeProfit: saleSeeProfit ?? this.saleSeeProfit,
      saleSeeInvoiceProfit: saleSeeInvoiceProfit ?? this.saleSeeInvoiceProfit,
      saleReturn: saleReturn ?? this.saleReturn,
      delivery: delivery ?? this.delivery,
      saleMaxDiscountPer: saleMaxDiscountPer ?? this.saleMaxDiscountPer,
      saleMaxDiscountAmount:
          saleMaxDiscountAmount ?? this.saleMaxDiscountAmount,
      saleTax1Edit: saleTax1Edit ?? this.saleTax1Edit,
      saleCreditPayment: saleCreditPayment ?? this.saleCreditPayment,
      salequoteList: salequoteList ?? this.salequoteList,
      salequoteAdd: salequoteAdd ?? this.salequoteAdd,
      salequoteEdit: salequoteEdit ?? this.salequoteEdit,
      salequoteDel: salequoteDel ?? this.salequoteDel,
      inventList: inventList ?? this.inventList,
      inventAdd: inventAdd ?? this.inventAdd,
      inventEdit: inventEdit ?? this.inventEdit,
      inventDel: inventDel ?? this.inventDel,
      adjustList: adjustList ?? this.adjustList,
      adjustAdd: adjustAdd ?? this.adjustAdd,
      adjustEdit: adjustEdit ?? this.adjustEdit,
      adjustDel: adjustDel ?? this.adjustDel,
      transferList: transferList ?? this.transferList,
      transferAdd: transferAdd ?? this.transferAdd,
      transferEdit: transferEdit ?? this.transferEdit,
      transferDel: transferDel ?? this.transferDel,
      paymentList: paymentList ?? this.paymentList,
      paymentAdd: paymentAdd ?? this.paymentAdd,
      paymentEdit: paymentEdit ?? this.paymentEdit,
      paymentDel: paymentDel ?? this.paymentDel,
      receiptList: receiptList ?? this.receiptList,
      receiptAdd: receiptAdd ?? this.receiptAdd,
      receiptEdit: receiptEdit ?? this.receiptEdit,
      receiptDel: receiptDel ?? this.receiptDel,
      moneyTransferAdd: moneyTransferAdd ?? this.moneyTransferAdd,
      moneyTransferEdit: moneyTransferEdit ?? this.moneyTransferEdit,
      moneyTransferDel: moneyTransferDel ?? this.moneyTransferDel,
      instalList: instalList ?? this.instalList,
      instalAdd: instalAdd ?? this.instalAdd,
      installmentList: installmentList ?? this.installmentList,
      installmentAdd: installmentAdd ?? this.installmentAdd,
      installmentEdit: installmentEdit ?? this.installmentEdit,
      installmentDel: installmentDel ?? this.installmentDel,
      installmentDueParts: installmentDueParts ?? this.installmentDueParts,
      installmentReceipt: installmentReceipt ?? this.installmentReceipt,
      moneyList: moneyList ?? this.moneyList,
      paymentAnalysis: paymentAnalysis ?? this.paymentAnalysis,
      receiptAnalysis: receiptAnalysis ?? this.receiptAnalysis,
      reports: reports ?? this.reports,
      reportDaily: reportDaily ?? this.reportDaily,
      reportSalesAnalysis: reportSalesAnalysis ?? this.reportSalesAnalysis,
      reportPurchasesAnalysis:
          reportPurchasesAnalysis ?? this.reportPurchasesAnalysis,
    );
  }

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        id: json['id'],
        sn: json['sn'],
        title: json['title'],
        pass: json['pass'],
        active: json['active'],
        options: json['options'],
        stores: json['stores'],
        cashboxes: json['cashboxes'],
        cashboxTransferTo: json['cashbox_transfer_to'],
        seeCost: json['see_cost'],
        editIds: json['edit_ids'],
        editDate: json['edit_date'],
        todayOnlyUpdate: json['today_only_update'],
        todayOnlyList: json['today_only_list'],
        removeBank: json['remove_bank'],
        changeQtyMinusZero: json['change_qty_minus_zero'],
        backupCreate: json['backup_create'],
        backupRestore: json['backup_restore'],
        itemList: json['item_list'],
        itemAdd: json['item_add'],
        itemEdit: json['item_edit'],
        itemDel: json['item_del'],
        itemStatement: json['item_statement'],
        itemEvaluation: json['item_evaluation'],
        itemInOut: json['item_in_out'],
        itemBarcode: json['item_barcode'],
        itemCargo: json['item_cargo'],
        accountList: json['account_list'],
        accountAdd: json['account_add'],
        accountEdit: json['account_edit'],
        accountDel: json['account_del'],
        accountCustomer: json['account_customer'],
        accountSupplier: json['account_supplier'],
        accountSalesman: json['account_salesman'],
        accountOther: json['account_other'],
        accountBalance: json['account_balance'],
        accountStatement: json['account_statement'],
        accountCloseInvoices: json['account_close_invoices'],
        purchaseList: json['purchase_list'],
        purchaseAdd: json['purchase_add'],
        purchaseEdit: json['purchase_edit'],
        purchaseDel: json['purchase_del'],
        purchaseReturn: json['purchase_return'],
        purchaseTax1Edit: json['purchase_tax1_edit'],
        purchaseCreditPayment: json['purchase_credit_payment'],
        saleList: json['sale_list'],
        saleAdd: json['sale_add'],
        saleEdit: json['sale_edit'],
        saleDel: json['sale_del'],
        saleModifyPrices: json['sale_modify_prices'],
        salePriceBelowMinPrice: json['sale_price_below_min_price'],
        salePriceBelowCost: json['sale_price_below_cost'],
        saleDiscount: json['sale_discount'],
        saleSeeProfit: json['sale_see_profit'],
        saleSeeInvoiceProfit: json['sale_see_invoice_profit'],
        saleReturn: json['sale_return'],
        delivery: json['delivery'],
        saleMaxDiscountPer: json['sale_max_discount_per'] != null
            ? double.parse(json['sale_max_discount_per'].toString())
            : 0.0,
        saleMaxDiscountAmount: json['sale_max_discount_amount'] != null
            ? double.parse(json['sale_max_discount_amount'].toString())
            : 0.0,
        saleTax1Edit: json['sale_tax1_edit'],
        saleCreditPayment: json['sale_credit_payment'],
        salequoteList: json['salequote_list'],
        salequoteAdd: json['salequote_add'],
        salequoteEdit: json['salequote_edit'],
        salequoteDel: json['salequote_del'],
        inventList: json['invent_list'],
        inventAdd: json['invent_add'],
        inventEdit: json['invent_edit'],
        inventDel: json['invent_del'],
        adjustList: json['adjust_list'],
        adjustAdd: json['adjust_add'],
        adjustEdit: json['adjust_edit'],
        adjustDel: json['adjust_del'],
        transferList: json['transfer_list'],
        transferAdd: json['transfer_add'],
        transferEdit: json['transfer_edit'],
        transferDel: json['transfer_del'],
        paymentList: json['payment_list'],
        paymentAdd: json['payment_add'],
        paymentEdit: json['payment_edit'],
        paymentDel: json['payment_del'],
        receiptList: json['receipt_list'],
        receiptAdd: json['receipt_add'],
        receiptEdit: json['receipt_edit'],
        receiptDel: json['receipt_del'],
        moneyTransferAdd: json['money_transfer_add'],
        moneyTransferEdit: json['money_transfer_edit'],
        moneyTransferDel: json['money_transfer_del'],
        instalList: json['instal_list'],
        instalAdd: json['instal_add'],
        installmentList: json['installment_list'],
        installmentAdd: json['installment_add'],
        installmentEdit: json['installment_edit'],
        installmentDel: json['installment_del'],
        installmentDueParts: json['installment_due_parts'],
        installmentReceipt: json['installment_receipt'],
        moneyList: json['money_list'],
        paymentAnalysis: json['payment_analysis'],
        receiptAnalysis: json['receipt_analysis'],
        reports: json['reports'],
        reportDaily: json['report_daily'],
        reportSalesAnalysis: json['report_sales_analysis'],
        reportPurchasesAnalysis: json['report_purchases_analysis']);
  }

  static List<User> fromJsonArray(List jsonArray) {
    return jsonArray.map((item) {
      return User.fromJson(item);
    }).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['sn'] = sn;
    data['title'] = title;
    data['pass'] = pass;
    data['active'] = active;
    data['options'] = options;
    data['stores'] = stores;
    data['cashboxes'] = cashboxes;
    data['cashbox_transfer_to'] = cashboxTransferTo;
    data['see_cost'] = seeCost;
    data['edit_ids'] = editIds;
    data['edit_date'] = editDate;
    data['today_only_update'] = todayOnlyUpdate;
    data['today_only_list'] = todayOnlyList;
    data['remove_bank'] = removeBank;
    data['change_qty_minus_zero'] = changeQtyMinusZero;
    data['backup_create'] = backupCreate;
    data['backup_restore'] = backupRestore;
    data['item_list'] = itemList;
    data['item_add'] = itemAdd;
    data['item_edit'] = itemEdit;
    data['item_del'] = itemDel;
    data['item_statement'] = itemStatement;
    data['item_evaluation'] = itemEvaluation;
    data['item_in_out'] = itemInOut;
    data['item_barcode'] = itemBarcode;
    data['item_cargo'] = itemCargo;
    data['account_list'] = accountList;
    data['account_add'] = accountAdd;
    data['account_edit'] = accountEdit;
    data['account_del'] = accountDel;
    data['account_customer'] = accountCustomer;
    data['account_supplier'] = accountSupplier;
    data['account_salesman'] = accountSalesman;
    data['account_other'] = accountOther;
    data['account_balance'] = accountBalance;
    data['account_statement'] = accountStatement;
    data['account_close_invoices'] = accountCloseInvoices;
    data['purchase_list'] = purchaseList;
    data['purchase_add'] = purchaseAdd;
    data['purchase_edit'] = purchaseEdit;
    data['purchase_del'] = purchaseDel;
    data['purchase_return'] = purchaseReturn;
    data['purchase_tax1_edit'] = purchaseTax1Edit;
    data['purchase_credit_payment'] = purchaseCreditPayment;
    data['sale_list'] = saleList;
    data['sale_add'] = saleAdd;
    data['sale_edit'] = saleEdit;
    data['sale_del'] = saleDel;
    data['sale_modify_prices'] = saleModifyPrices;
    data['sale_price_below_min_price'] = salePriceBelowMinPrice;
    data['sale_price_below_cost'] = salePriceBelowCost;
    data['sale_discount'] = saleDiscount;
    data['sale_see_profit'] = saleSeeProfit;
    data['sale_see_invoice_profit'] = saleSeeInvoiceProfit;
    data['sale_return'] = saleReturn;
    data['delivery'] = delivery;
    data['sale_max_discount_per'] = saleMaxDiscountPer;
    data['sale_max_discount_amount'] = saleMaxDiscountAmount;
    data['sale_tax1_edit'] = saleTax1Edit;
    data['sale_credit_payment'] = saleCreditPayment;
    data['salequote_list'] = salequoteList;
    data['salequote_add'] = salequoteAdd;
    data['salequote_edit'] = salequoteEdit;
    data['salequote_del'] = salequoteDel;
    data['invent_list'] = inventList;
    data['invent_add'] = inventAdd;
    data['invent_edit'] = inventEdit;
    data['invent_del'] = inventDel;
    data['adjust_list'] = adjustList;
    data['adjust_add'] = adjustAdd;
    data['adjust_edit'] = adjustEdit;
    data['adjust_del'] = adjustDel;
    data['transfer_list'] = transferList;
    data['transfer_add'] = transferAdd;
    data['transfer_edit'] = transferEdit;
    data['transfer_del'] = transferDel;
    data['payment_list'] = paymentList;
    data['payment_add'] = paymentAdd;
    data['payment_edit'] = paymentEdit;
    data['payment_del'] = paymentDel;
    data['receipt_list'] = receiptList;
    data['receipt_add'] = receiptAdd;
    data['receipt_edit'] = receiptEdit;
    data['receipt_del'] = receiptDel;
    data['money_transfer_add'] = moneyTransferAdd;
    data['money_transfer_edit'] = moneyTransferEdit;
    data['money_transfer_del'] = moneyTransferDel;
    data['instal_list'] = instalList;
    data['instal_add'] = instalAdd;
    data['installment_list'] = installmentList;
    data['installment_add'] = installmentAdd;
    data['installment_edit'] = installmentEdit;
    data['installment_del'] = installmentDel;
    data['installment_due_parts'] = installmentDueParts;
    data['installment_receipt'] = installmentReceipt;
    data['money_list'] = moneyList;
    data['payment_analysis'] = paymentAnalysis;
    data['receipt_analysis'] = receiptAnalysis;
    data['reports'] = reports;
    data['report_daily'] = reportDaily;
    data['report_sales_analysis'] = reportSalesAnalysis;
    data['report_purchases_analysis'] = reportPurchasesAnalysis;
    return data;
  }

  @override
  List<Object?> get props => [
        id,
        sn,
        title,
        pass,
        active,
        options,
        stores,
        cashboxes,
        cashboxTransferTo,
        seeCost,
        editIds,
        editDate,
        todayOnlyUpdate,
        todayOnlyList,
        removeBank,
        changeQtyMinusZero,
        backupCreate,
        backupRestore,
        itemList,
        itemAdd,
        itemEdit,
        itemDel,
        itemStatement,
        itemEvaluation,
        itemInOut,
        itemBarcode,
        itemCargo,
        accountList,
        accountAdd,
        accountEdit,
        accountDel,
        accountCustomer,
        accountSupplier,
        accountSalesman,
        accountOther,
        accountBalance,
        accountStatement,
        accountCloseInvoices,
        purchaseList,
        purchaseAdd,
        purchaseEdit,
        purchaseDel,
        purchaseReturn,
        purchaseTax1Edit,
        purchaseCreditPayment,
        saleList,
        saleAdd,
        saleEdit,
        saleDel,
        saleModifyPrices,
        salePriceBelowMinPrice,
        salePriceBelowCost,
        saleDiscount,
        saleSeeProfit,
        saleSeeInvoiceProfit,
        saleReturn,
        delivery,
        saleMaxDiscountPer,
        saleMaxDiscountAmount,
        saleTax1Edit,
        saleCreditPayment,
        salequoteList,
        salequoteAdd,
        salequoteEdit,
        salequoteDel,
        inventList,
        inventAdd,
        inventEdit,
        inventDel,
        adjustList,
        adjustAdd,
        adjustEdit,
        adjustDel,
        transferList,
        transferAdd,
        transferEdit,
        transferDel,
        paymentList,
        paymentAdd,
        paymentEdit,
        paymentDel,
        receiptList,
        receiptAdd,
        receiptEdit,
        receiptDel,
        moneyTransferAdd,
        moneyTransferEdit,
        moneyTransferDel,
        instalList,
        instalAdd,
        installmentList,
        installmentAdd,
        installmentEdit,
        installmentDel,
        installmentDueParts,
        installmentReceipt,
        moneyList,
        paymentAnalysis,
        receiptAnalysis,
        reports,
        reportDaily,
        reportSalesAnalysis,
        reportPurchasesAnalysis
      ];
}
