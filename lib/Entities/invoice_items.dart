class Invoiceitems {
  int? pk;
  String? kind;
  int? id;
  int? storeId;
  int? sn;
  int? itemId;
  int? qty;
  int? amount;
  int? total;
  int? amountIncTax;
  int? totalIncTax;
  String? unit;
  int? uqty1;
  int? uqty2;
  int? unitQtyIn;
  int? unitQtyOut;
  int? unitCost;
  int? unitPrice;
  int? totalCost;
  int? totalPrice;
  int? discount1Per;
  int? discount1;
  int? totalIncDiscount1;
  int? additions;
  int? discount2;
  int? discounts;
  int? netCost;
  int? netPrice;
  int? netTotal;
  int? qtyIn;
  int? qtyOut;
  int? cost;
  int? price;
  int? tax1Per;
  int? tax1;
  int? tax2Per;
  int? tax2;
  int? grandTotal;
  int? expenses;
  int? realNetCost;
  int? realCost;
  int? profit;
  int? costErrors;
  String? custom1;
  String? custom2;
  String? custom3;
  String? serials;
  String? cargo;
  int? qtyDelivered;
  int? unitContents;

  Invoiceitems(
      {this.pk,
      this.kind,
      this.id,
      this.storeId,
      this.sn,
      this.itemId,
      this.qty,
      this.amount,
      this.total,
      this.amountIncTax,
      this.totalIncTax,
      this.unit,
      this.uqty1,
      this.uqty2,
      this.unitQtyIn,
      this.unitQtyOut,
      this.unitCost,
      this.unitPrice,
      this.totalCost,
      this.totalPrice,
      this.discount1Per,
      this.discount1,
      this.totalIncDiscount1,
      this.additions,
      this.discount2,
      this.discounts,
      this.netCost,
      this.netPrice,
      this.netTotal,
      this.qtyIn,
      this.qtyOut,
      this.cost,
      this.price,
      this.tax1Per,
      this.tax1,
      this.tax2Per,
      this.tax2,
      this.grandTotal,
      this.expenses,
      this.realNetCost,
      this.realCost,
      this.profit,
      this.costErrors,
      this.custom1,
      this.custom2,
      this.custom3,
      this.serials,
      this.cargo,
      this.qtyDelivered,
      this.unitContents});

  Invoiceitems.fromJson(Map<String, dynamic> json) {
    pk = json['pk'];
    kind = json['kind'];
    id = json['id'];
    storeId = json['store_id'];
    sn = json['sn'];
    itemId = json['item_id'];
    qty = json['qty'];
    amount = json['amount'];
    total = json['total'];
    amountIncTax = json['amount_inc_tax'];
    totalIncTax = json['total_inc_tax'];
    unit = json['unit'];
    uqty1 = json['uqty1'];
    uqty2 = json['uqty2'];
    unitQtyIn = json['unit_qty_in'];
    unitQtyOut = json['unit_qty_out'];
    unitCost = json['unit_cost'];
    unitPrice = json['unit_price'];
    totalCost = json['total_cost'];
    totalPrice = json['total_price'];
    discount1Per = json['discount1_per'];
    discount1 = json['discount1'];
    totalIncDiscount1 = json['total_inc_discount1'];
    additions = json['additions'];
    discount2 = json['discount2'];
    discounts = json['discounts'];
    netCost = json['net_cost'];
    netPrice = json['net_price'];
    netTotal = json['net_total'];
    qtyIn = json['qty_in'];
    qtyOut = json['qty_out'];
    cost = json['cost'];
    price = json['price'];
    tax1Per = json['tax1_per'];
    tax1 = json['tax1'];
    tax2Per = json['tax2_per'];
    tax2 = json['tax2'];
    grandTotal = json['grand_total'];
    expenses = json['expenses'];
    realNetCost = json['real_net_cost'];
    realCost = json['real_cost'];
    profit = json['profit'];
    costErrors = json['cost_errors'];
    custom1 = json['custom1'];
    custom2 = json['custom2'];
    custom3 = json['custom3'];
    serials = json['serials'];
    cargo = json['cargo'];
    qtyDelivered = json['qty_delivered'];
    unitContents = json['unit_contents'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['pk'] = pk;
    data['kind'] = kind;
    data['id'] = id;
    data['store_id'] = storeId;
    data['sn'] = sn;
    data['item_id'] = itemId;
    data['qty'] = qty;
    data['amount'] = amount;
    data['total'] = total;
    data['amount_inc_tax'] = amountIncTax;
    data['total_inc_tax'] = totalIncTax;
    data['unit'] = unit;
    data['uqty1'] = uqty1;
    data['uqty2'] = uqty2;
    data['unit_qty_in'] = unitQtyIn;
    data['unit_qty_out'] = unitQtyOut;
    data['unit_cost'] = unitCost;
    data['unit_price'] = unitPrice;
    data['total_cost'] = totalCost;
    data['total_price'] = totalPrice;
    data['discount1_per'] = discount1Per;
    data['discount1'] = discount1;
    data['total_inc_discount1'] = totalIncDiscount1;
    data['additions'] = additions;
    data['discount2'] = discount2;
    data['discounts'] = discounts;
    data['net_cost'] = netCost;
    data['net_price'] = netPrice;
    data['net_total'] = netTotal;
    data['qty_in'] = qtyIn;
    data['qty_out'] = qtyOut;
    data['cost'] = cost;
    data['price'] = price;
    data['tax1_per'] = tax1Per;
    data['tax1'] = tax1;
    data['tax2_per'] = tax2Per;
    data['tax2'] = tax2;
    data['grand_total'] = grandTotal;
    data['expenses'] = expenses;
    data['real_net_cost'] = realNetCost;
    data['real_cost'] = realCost;
    data['profit'] = profit;
    data['cost_errors'] = costErrors;
    data['custom1'] = custom1;
    data['custom2'] = custom2;
    data['custom3'] = custom3;
    data['serials'] = serials;
    data['cargo'] = cargo;
    data['qty_delivered'] = qtyDelivered;
    data['unit_contents'] = unitContents;
    return data;
  }
}
