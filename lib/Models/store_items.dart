class StoreItems {
  int? id;
  int? storeId;
  int? itemId;
  int? qty;

  StoreItems({this.id, this.storeId, this.itemId, this.qty});

  StoreItems.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    storeId = json['store_id'];
    itemId = json['item_id'];
    qty = json['qty'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['store_id'] = storeId;
    data['item_id'] = itemId;
    data['qty'] = qty;
    return data;
  }
}
