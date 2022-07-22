import 'package:equatable/equatable.dart';

class Unit extends Equatable {
  final num? id;
  final num? sn;
  final String? unit;

  const Unit({this.id, this.sn, this.unit});

  factory Unit.fromJson(Map<String, dynamic> json) {
    return Unit(id: json['id'], sn: json['sn'], unit: json['unit']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['sn'] = sn;
    data['unit'] = unit;
    return data;
  }

  @override
  List<Object?> get props => [id, sn, unit];
}
