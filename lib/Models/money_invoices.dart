import 'package:equatable/equatable.dart';

class MoneyInvoices extends Equatable {
  final int? pk;
  final String? mKind;
  final int? mId;
  final String? iKind;
  final int? iId;
  final double? amount;

  const MoneyInvoices(
      {this.pk, this.mKind, this.mId, this.iKind, this.iId, this.amount});

  MoneyInvoices copyWith({
    int? pk,
    String? mKind,
    int? mId,
    String? iKind,
    int? iId,
    double? amount,
  }) {
    return MoneyInvoices(
      pk: pk ?? this.pk,
      mKind: mKind ?? this.mKind,
      mId: mId ?? this.mId,
      iKind: iKind ?? this.iKind,
      iId: iId ?? this.iId,
      amount: amount ?? this.amount,
    );
  }

  factory MoneyInvoices.fromJson(Map<String, dynamic> json) {
    return MoneyInvoices(
        pk: json['pk'],
        mKind: json['m_kind'],
        mId: json['m_id'],
        iKind: json['i_kind'],
        iId: json['i_id'],
        amount: double.parse(json['amount'].toString()));
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
