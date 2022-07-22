part of swagger.api;

class ReturnDetail {
  int lineId = null;

  int lineSubId = null;

  String productId = null;

  String description = null;

  DateTime dateReceived = null;

  double quantityReturned = null;

  String unit = null;

  String returnReason = null;

  ReturnDetail();

  @override
  String toString() {
    return 'ReturnDetail[lineId=$lineId, lineSubId=$lineSubId, productId=$productId, description=$description, dateReceived=$dateReceived, quantityReturned=$quantityReturned, unit=$unit, returnReason=$returnReason, ]';
  }

  ReturnDetail.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    lineId = json['lineId'];
    lineSubId = json['lineSubId'];
    productId = json['productId'];
    description = json['description'];
    dateReceived = json['dateReceived'] == null
        ? null
        : DateTime.parse(json['dateReceived']);
    quantityReturned = json['quantityReturned'] == null
        ? null
        : json['quantityReturned'].toDouble();
    unit = json['unit'];
    returnReason = json['returnReason'];
  }

  Map<String, dynamic> toJson() {
    return {
      'lineId': lineId,
      'lineSubId': lineSubId,
      'productId': productId,
      'description': description,
      'dateReceived':
          dateReceived == null ? '' : dateReceived.toIso8601String(),
      'quantityReturned': quantityReturned,
      'unit': unit,
      'returnReason': returnReason
    };
  }

  static List<ReturnDetail> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<ReturnDetail>()
        : json.map((value) => new ReturnDetail.fromJson(value)).toList();
  }

  static Map<String, ReturnDetail> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ReturnDetail>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new ReturnDetail.fromJson(value));
    }
    return map;
  }
}
