import 'package:equatable/equatable.dart';

class StoreItems extends Equatable {
  final num? id;
  final num? storeId;
  final num? itemId;
  final num? qty;

  const StoreItems({this.id, this.storeId, this.itemId, this.qty});

  factory StoreItems.fromJson(Map<String, dynamic> json) {
    return StoreItems(
        id: json['id'],
        storeId: json['store_id'],
        itemId: json['item_id'],
        qty: json['qty']);
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
