part of swagger.api;

class Amount {
  /* Amount in local currency */
  double value = null;

/* Amount in foreign currency if applicable */
  double foreignCurrencyValue = null;

  Amount();

  @override
  String toString() {
    return 'Amount[value=$value, foreignCurrencyValue=$foreignCurrencyValue, ]';
  }

  Amount.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    value = json['value'] == null ? null : json['value'].toDouble();
    foreignCurrencyValue = json['foreignCurrencyValue'] == null
        ? null
        : json['foreignCurrencyValue'].toDouble();
  }

  Map<String, dynamic> toJson() {
    return {'value': value, 'foreignCurrencyValue': foreignCurrencyValue};
  }

  static List<Amount> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<Amount>()
        : json.map((value) => new Amount.fromJson(value)).toList();
  }

  static Map<String, Amount> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Amount>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new Amount.fromJson(value));
    }
    return map;
  }
}
