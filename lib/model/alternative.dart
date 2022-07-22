part of swagger.api;

class Alternative {
  /* Product ID of alternative product, as retrievable from <a href=\"?deepLinking=true#/Product/ShopProductInformation\">/api/Product</a> */
  String id = null;

/* Alternative type, where A = alternative and V = replacement */
  String type = null;

/* Sequence ID of alternative, in order of preference (1 = first preference, 2 = second etc.) */
  int sequenceId = null;

/* Factor of alternative, i.e. a value of 2 means two alternatives are required to replace 1 product. */
  double factor = null;

/* Start date when alternative is eligible. */
  DateTime startDate = null;

/* End date after which alternative is no longere eligible. */
  DateTime endDate = null;

  Alternative();

  @override
  String toString() {
    return 'Alternative[id=$id, type=$type, sequenceId=$sequenceId, factor=$factor, startDate=$startDate, endDate=$endDate, ]';
  }

  Alternative.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    type = json['type'];
    sequenceId = json['sequenceId'];
    factor = json['factor'] == null ? null : json['factor'].toDouble();
    startDate =
        json['startDate'] == null ? null : DateTime.parse(json['startDate']);
    endDate = json['endDate'] == null ? null : DateTime.parse(json['endDate']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type': type,
      'sequenceId': sequenceId,
      'factor': factor,
      'startDate': startDate == null ? '' : startDate.toIso8601String(),
      'endDate': endDate == null ? '' : endDate.toIso8601String()
    };
  }

  static List<Alternative> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<Alternative>()
        : json.map((value) => new Alternative.fromJson(value)).toList();
  }

  static Map<String, Alternative> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Alternative>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new Alternative.fromJson(value));
    }
    return map;
  }
}
