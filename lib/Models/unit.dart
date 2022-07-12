class Unit {
  int? id;
  int? sn;
  String? unit;

  Unit({this.id, this.sn, this.unit});

  Unit.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    sn = json['sn'];
    unit = json['unit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['sn'] = sn;
    data['unit'] = unit;
    return data;
  }
}
