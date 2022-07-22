part of swagger.api;

class SalesUnit {
  /* Unit Id, as retrievable from */
  int unitId = null;

/* Unit description */
  String description = null;

/* Quantity per Unit */
  int quantity = null;

/* ISO description for unit */
  String iso = null;

  SalesUnit();

  @override
  String toString() {
    return 'SalesUnit[unitId=$unitId, description=$description, quantity=$quantity, iso=$iso, ]';
  }

  SalesUnit.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    unitId = json['unitId'];
    description = json['description'];
    quantity = json['quantity'];
    iso = json['iso'];
  }

  Map<String, dynamic> toJson() {
    return {
      'unitId': unitId,
      'description': description,
      'quantity': quantity,
      'iso': iso
    };
  }

  static List<SalesUnit> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<SalesUnit>()
        : json.map((value) => new SalesUnit.fromJson(value)).toList();
  }

  static Map<String, SalesUnit> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, SalesUnit>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new SalesUnit.fromJson(value));
    }
    return map;
  }
}
