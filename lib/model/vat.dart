part of swagger.api;

class Vat {
  double vatBaseAmount = null;

  double vatPercentage = null;

  double vatAmount = null;

  Vat();

  @override
  String toString() {
    return 'Vat[vatBaseAmount=$vatBaseAmount, vatPercentage=$vatPercentage, vatAmount=$vatAmount, ]';
  }

  Vat.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    vatBaseAmount =
        json['vatBaseAmount'] == null ? null : json['vatBaseAmount'].toDouble();
    vatPercentage =
        json['vatPercentage'] == null ? null : json['vatPercentage'].toDouble();
    vatAmount = json['vatAmount'] == null ? null : json['vatAmount'].toDouble();
  }

  Map<String, dynamic> toJson() {
    return {
      'vatBaseAmount': vatBaseAmount,
      'vatPercentage': vatPercentage,
      'vatAmount': vatAmount
    };
  }

  static List<Vat> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<Vat>()
        : json.map((value) => new Vat.fromJson(value)).toList();
  }

  static Map<String, Vat> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Vat>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new Vat.fromJson(value));
    }
    return map;
  }
}
