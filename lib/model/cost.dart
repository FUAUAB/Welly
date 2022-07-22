part of swagger.api;

class Cost {
  /* Cost description */
  String description = null;

/* Cost currency amount */
  double amount = null;

  Cost();

  @override
  String toString() {
    return 'Cost[description=$description, amount=$amount, ]';
  }

  Cost.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    description = json['description'];
    amount = json['amount'] == null ? null : json['amount'].toDouble();
  }

  Map<String, dynamic> toJson() {
    return {'description': description, 'amount': amount};
  }

  static List<Cost> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<Cost>()
        : json.map((value) => new Cost.fromJson(value)).toList();
  }

  static Map<String, Cost> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Cost>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new Cost.fromJson(value));
    }
    return map;
  }
}
