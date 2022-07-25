import 'package:equatable/equatable.dart';

class Unit extends Equatable {
  final int? id;
  final int? sn;
  final String? unit;

  const Unit({this.id, this.sn, this.unit});

  Unit copyWith({
    int? id,
    int? sn,
    String? unit,
  }) {
    return Unit(
      id: id ?? this.id,
      sn: sn ?? this.sn,
      unit: unit ?? this.unit,
    );
  }

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
