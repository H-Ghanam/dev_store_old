import 'package:equatable/equatable.dart';

class MoneyInvoices extends Equatable {
  final num? pk;
  final String? mKind;
  final num? mId;
  final String? iKind;
  final num? iId;
  final num? amount;

  const MoneyInvoices(
      {this.pk, this.mKind, this.mId, this.iKind, this.iId, this.amount});

  factory MoneyInvoices.fromJson(Map<String, dynamic> json) {
    return MoneyInvoices(
        pk: json['pk'],
        mKind: json['m_kind'],
        mId: json['m_id'],
        iKind: json['i_kind'],
        iId: json['i_id'],
        amount: json['amount']);
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

  @override
  List<Object?> get props => [pk, mKind, mId, iKind, iId, amount];
}
