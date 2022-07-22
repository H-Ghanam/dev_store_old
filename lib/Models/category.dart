import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final String? title;

  const Category({
    this.title,
  });

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(title: json['title']);
  }

  static List<Category> fromJsonArray(List jsonArray) {
    return jsonArray.map((item) {
      return Category.fromJson(item);
    }).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    return data;
  }

  @override
  List<Object?> get props => [title];
}
