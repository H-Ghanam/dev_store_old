import 'package:equatable/equatable.dart';

class Store extends Equatable {
  final int? id;
  final int? sn;
  final String? title;
  final int? active;

  const Store({this.id, this.sn, this.title, this.active});

  Store copyWith({
    int? id,
    int? sn,
    String? title,
    int? active,
  }) {
    return Store(
      id: id ?? this.id,
      sn: sn ?? this.sn,
      title: title ?? this.title,
      active: active ?? this.active,
    );
  }

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
