part of swagger.api;

class ReturnDeliveryOrderLine {
  int lineId = null;

  String productId = null;

  double quantityReturned = null;

  int returnReasonId = null;

  String customReturnReason = null;

  ReturnDeliveryOrderLine();

  @override
  String toString() {
    return 'ReturnDeliveryOrderLine[lineId=$lineId, productId=$productId, quantityReturned=$quantityReturned, returnReasonId=$returnReasonId, customReturnReason=$customReturnReason, ]';
  }

  ReturnDeliveryOrderLine.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    lineId = json['lineId'];
    productId = json['productId'];
    quantityReturned = json['quantityReturned'] == null
        ? null
        : json['quantityReturned'].toDouble();
    returnReasonId = json['returnReasonId'];
    customReturnReason = json['customReturnReason'];
  }

  Map<String, dynamic> toJson() {
    return {
      'lineId': lineId,
      'productId': productId,
      'quantityReturned': quantityReturned,
      'returnReasonId': returnReasonId,
      'customReturnReason': customReturnReason
    };
  }

  static List<ReturnDeliveryOrderLine> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<ReturnDeliveryOrderLine>()
        : json
            .map((value) => new ReturnDeliveryOrderLine.fromJson(value))
            .toList();
  }

  static Map<String, ReturnDeliveryOrderLine> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ReturnDeliveryOrderLine>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new ReturnDeliveryOrderLine.fromJson(value));
    }
    return map;
  }
}
