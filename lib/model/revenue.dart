part of swagger.api;

class Revenue {
  DateTime invoiceDate = null;

  double revenueAmount = null;

  double purchaseAmount = null;

  Revenue();

  @override
  String toString() {
    return 'Revenue[invoiceDate=$invoiceDate, revenueAmount=$revenueAmount, purchaseAmount=$purchaseAmount, ]';
  }

  Revenue.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    invoiceDate = json['invoiceDate'] == null
        ? null
        : DateTime.parse(json['invoiceDate']);
    revenueAmount =
        json['revenueAmount'] == null ? null : json['revenueAmount'].toDouble();
    purchaseAmount = json['purchaseAmount'] == null
        ? null
        : json['purchaseAmount'].toDouble();
  }

  Map<String, dynamic> toJson() {
    return {
      'invoiceDate': invoiceDate == null ? '' : invoiceDate.toIso8601String(),
      'revenueAmount': revenueAmount,
      'purchaseAmount': purchaseAmount
    };
  }

  static List<Revenue> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<Revenue>()
        : json.map((value) => new Revenue.fromJson(value)).toList();
  }

  static Map<String, Revenue> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Revenue>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new Revenue.fromJson(value));
    }
    return map;
  }
}
