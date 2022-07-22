import 'package:equatable/equatable.dart';

class Invoice extends Equatable {
  final num? pk;
  final num id;
  final String kind;
  final num storeId;
  final String? date1;
  final String? time1;
  final num? accountId;
  final num? qty;
  final num? total;
  final num? totalIncTax;
  final num? totalCost;
  final num? totalPrice;
  final num? discount1;
  final num? totalIncDiscount1;
  final String? addition1Type;
  final num? addition1Per;
  final num? addition1;
  final num? addition2Per;
  final num? addition2;
  final num? addition3Per;
  final num? addition3;
  final num? additions;
  final num? discount2Per;
  final num? discount2;
  final num? discounts;
  final num? netCost;
  final num? netPrice;
  final num? netTotal;
  final num? tax1Per;
  final num? tax1;
  final num? tax2Per;
  final num? tax2;
  final num? grandTotal;
  final num? customerPay;
  final num? customerChange;
  final num? cashbox1;
  final num? cashbox1Id;
  final num? cashbox2;
  final num? cashbox2Id;
  final num? cash;
  final num? cheques;
  final num? credit;
  final num? creditPaid;
  final num? creditDue;
  final String? paymentType;
  final String? paymentStatus;
  final String? expense1Type;
  final num? expense1;
  final num? cashboxFees;
  final num? expenses;
  final num? realNetCost;
  final num? profit;
  final num? costErrors;
  final String? reference;
  final num? storeToId;
  final num? salesmanId;
  final num? reserved;
  final String? status;
  final String? shippedby;
  final String? custom1;
  final String? custom2;
  final String? custom3;
  final String? custom4;
  final String? custom5;
  final String? more;
  final String? dueDate;
  final num? qtyDelivered;
  final num? createdbyId;
  final String? createdon;
  final num? editedbyId;
  final String? editedon;

  const Invoice(
      {this.pk,
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
      this.editedon});

  factory Invoice.fromJson(Map<String, dynamic> json) {
    return Invoice(
        pk: json['pk'],
        kind: json['kind'],
        id: json['id'],
        storeId: json['store_id'],
        date1: json['date1'],
        time1: json['time1'],
        accountId: json['account_id'],
        qty: json['qty'],
        total: json['total'],
        totalIncTax: json['total_inc_tax'],
        totalCost: json['total_cost'],
        totalPrice: json['total_price'],
        discount1: json['discount1'],
        totalIncDiscount1: json['total_inc_discount1'],
        addition1Type: json['addition1_type'],
        addition1Per: json['addition1_per'],
        addition1: json['addition1'],
        addition2Per: json['addition2_per'],
        addition2: json['addition2'],
        addition3Per: json['addition3_per'],
        addition3: json['addition3'],
        additions: json['additions'],
        discount2Per: json['discount2_per'],
        discount2: json['discount2'],
        discounts: json['discounts'],
        netCost: json['net_cost'],
        netPrice: json['net_price'],
        netTotal: json['net_total'],
        tax1Per: json['tax1_per'],
        tax1: json['tax1'],
        tax2Per: json['tax2_per'],
        tax2: json['tax2'],
        grandTotal: json['grand_total'],
        customerPay: json['customer_pay'],
        customerChange: json['customer_change'],
        cashbox1: json['cashbox1'],
        cashbox1Id: json['cashbox1_id'],
        cashbox2: json['cashbox2'],
        cashbox2Id: json['cashbox2_id'],
        cash: json['cash'],
        cheques: json['cheques'],
        credit: json['credit'],
        creditPaid: json['credit_paid'],
        creditDue: json['credit_due'],
        paymentType: json['payment_type'],
        paymentStatus: json['payment_status'],
        expense1Type: json['expense1_type'],
        expense1: json['expense1'],
        cashboxFees: json['cashbox_fees'],
        expenses: json['expenses'],
        realNetCost: json['real_net_cost'],
        profit: json['profit'],
        costErrors: json['cost_errors'],
        reference: json['reference'],
        storeToId: json['store_to_id'],
        salesmanId: json['salesman_id'],
        reserved: json['reserved'],
        status: json['status'],
        shippedby: json['shippedby'],
        custom1: json['custom1'],
        custom2: json['custom2'],
        custom3: json['custom3'],
        custom4: json['custom4'],
        custom5: json['custom5'],
        more: json['more'],
        dueDate: json['due_date'],
        qtyDelivered: json['qty_delivered'],
        createdbyId: json['createdby_id'],
        createdon: json['createdon'],
        editedbyId: json['editedby_id'],
        editedon: json['editedon']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['pk'] = pk;
    data['kind'] = kind;
    data['id'] = id;
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
