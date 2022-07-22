import 'package:equatable/equatable.dart';

class Store extends Equatable {
  final num? id;
  final num? sn;
  final String? title;
  final num? active;

  const Store({this.id, this.sn, this.title, this.active});

  factory Store.fromJson(Map<String, dynamic> json) {
    return Store(
        id: json['id'],
        sn: json['sn'],
        title: json['title'],
        active: json['active']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['sn'] = sn;
    data['title'] = title;
    data['active'] = active;
    return data;
  }

  @override
  List<Object?> get props => [id, sn, title, active];
}
