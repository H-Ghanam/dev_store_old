class MoneyInvoices {
  int? pk;
  String? mKind;
  int? mId;
  String? iKind;
  int? iId;
  int? amount;

  MoneyInvoices(
      {this.pk, this.mKind, this.mId, this.iKind, this.iId, this.amount});

  MoneyInvoices.fromJson(Map<String, dynamic> json) {
    pk = json['pk'];
    mKind = json['m_kind'];
    mId = json['m_id'];
    iKind = json['i_kind'];
    iId = json['i_id'];
    amount = json['amount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['pk'] = pk;
    data['m_kind'] = mKind;
    data['m_id'] = mId;
    data['i_kind'] = iKind;
    data['i_id'] = iId;
    data['amount'] = amount;
    return data;
  }
}
