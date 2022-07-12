class Store {
  int? id;
  int? sn;
  String? title;
  int? active;

  Store({this.id, this.sn, this.title, this.active});

  Store.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    sn = json['sn'];
    title = json['title'];
    active = json['active'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['sn'] = sn;
    data['title'] = title;
    data['active'] = active;
    return data;
  }
}
