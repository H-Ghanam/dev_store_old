class Bank {
  int? id;
  int? sn;
  String? cashboxTitle;
  String? paymentMethod;
  int? active;
  int? feesPer;
  int? feesMin;
  int? feesFixed;
  String? gateway;

  Bank(
      {this.id,
      this.sn,
      this.cashboxTitle,
      this.paymentMethod,
      this.active,
      this.feesPer,
      this.feesMin,
      this.feesFixed,
      this.gateway});

  Bank.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    sn = json['sn'];
    cashboxTitle = json['cashbox_title'];
    paymentMethod = json['payment_method'];
    active = json['active'];
    feesPer = json['fees_per'];
    feesMin = json['fees_min'];
    feesFixed = json['fees_fixed'];
    gateway = json['gateway'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['sn'] = sn;
    data['cashbox_title'] = cashboxTitle;
    data['payment_method'] = paymentMethod;
    data['active'] = active;
    data['fees_per'] = feesPer;
    data['fees_min'] = feesMin;
    data['fees_fixed'] = feesFixed;
    data['gateway'] = gateway;
    return data;
  }
}
