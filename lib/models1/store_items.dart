import 'package:equatable/equatable.dart';

class StoreItems extends Equatable {
  final int? id;
  final int? storeId;
  final int? itemId;
  final double? qty;

  const StoreItems({this.id, this.storeId, this.itemId, this.qty});

  StoreItems copyWith({
    int? id,
    int? storeId,
    int? itemId,
    double? qty,
  }) {
    return StoreItems(
      id: id ?? this.id,
      storeId: storeId ?? this.storeId,
      itemId: itemId ?? this.itemId,
      qty: qty ?? this.qty,
    );
  }

  factory StoreItems.fromJson(Map<String, dynamic> json) {
    return StoreItems(
        id: json['id'],
        storeId: json['store_id'],
        itemId: json['item_id'],
        qty: double.parse(json['qty'].toString()));
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['store_id'] = storeId;
    data['item_id'] = itemId;
    data['qty'] = qty;
    return data;
  }

  @override
  List<Object?> get props => [id, storeId, itemId, qty];
}
