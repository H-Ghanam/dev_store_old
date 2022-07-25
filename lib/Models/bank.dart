import 'package:equatable/equatable.dart';

class Bank extends Equatable {
  final int? id;
  final int? sn;
  final String? cashboxTitle;
  final String? paymentMethod;
  final int? active;
  final double? feesPer;
  final double? feesMin;
  final double? feesFixed;
  final String? gateway;

  const Bank(
      {this.id,
      this.sn,
      this.cashboxTitle,
      this.paymentMethod,
      this.active,
      this.feesPer,
      this.feesMin,
      this.feesFixed,
      this.gateway});

  Bank copyWith({
    int? id,
    int? sn,
    String? cashboxTitle,
    String? paymentMethod,
    int? active,
    double? feesPer,
    double? feesMin,
    double? feesFixed,
    String? gateway,
  }) {
    return Bank(
      id: id ?? this.id,
      sn: sn ?? this.sn,
      cashboxTitle: cashboxTitle ?? this.cashboxTitle,
      paymentMethod: paymentMethod ?? this.paymentMethod,
      active: active ?? this.active,
      feesPer: feesPer ?? this.feesPer,
      feesMin: feesMin ?? this.feesMin,
      feesFixed: feesFixed ?? this.feesFixed,
      gateway: gateway ?? this.gateway,
    );
  }

  factory Bank.fromJson(Map<String, dynamic> json) {
    return Bank(
      id: json['id'],
      sn: json['sn'],
      cashboxTitle: json['cashbox_title'],
      paymentMethod: json['payment_method'],
      active: json['active'],
      feesPer: double.parse(json['fees_per'].toString()),
      feesMin: double.parse(json['fees_min'].toString()),
      feesFixed: double.parse(json['fees_fixed'].toString()),
      gateway: json['gateway'],
    );
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

  @override
  List<Object?> get props => [
        id,
        sn,
        cashboxTitle,
        paymentMethod,
        active,
        feesPer,
        feesMin,
        feesFixed,
        gateway,
      ];
}
