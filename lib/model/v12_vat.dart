part of swagger.api;

class V12Vat {
  Amount vatBaseAmount = null;

  double vatPercentage = null;

  Amount vatAmount = null;

  V12Vat();

  @override
  String toString() {
    return 'V12Vat[vatBaseAmount=$vatBaseAmount, vatPercentage=$vatPercentage, vatAmount=$vatAmount, ]';
  }

  V12Vat.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    vatBaseAmount = new Amount.fromJson(json['vatBaseAmount']);
    vatPercentage =
        json['vatPercentage'] == null ? null : json['vatPercentage'].toDouble();
    vatAmount = new Amount.fromJson(json['vatAmount']);
  }

  Map<String, dynamic> toJson() {
    return {
      'vatBaseAmount': vatBaseAmount,
      'vatPercentage': vatPercentage,
      'vatAmount': vatAmount
    };
  }

  static List<V12Vat> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<V12Vat>()
        : json.map((value) => new V12Vat.fromJson(value)).toList();
  }

  static Map<String, V12Vat> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, V12Vat>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new V12Vat.fromJson(value));
    }
    return map;
  }
}
