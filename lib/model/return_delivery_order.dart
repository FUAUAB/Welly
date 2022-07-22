part of swagger.api;

class ReturnDeliveryOrder {
  int orderId = null;

  int deliveryId = null;

  List<ReturnDeliveryOrderLine> lines = [];

  ReturnDeliveryOrder();

  @override
  String toString() {
    return 'ReturnDeliveryOrder[orderId=$orderId, deliveryId=$deliveryId, lines=$lines, ]';
  }

  ReturnDeliveryOrder.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    orderId = json['orderId'];
    deliveryId = json['deliveryId'];
    lines = ReturnDeliveryOrderLine.listFromJson(json['lines']);
  }

  Map<String, dynamic> toJson() {
    return {'orderId': orderId, 'deliveryId': deliveryId, 'lines': lines};
  }

  static List<ReturnDeliveryOrder> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<ReturnDeliveryOrder>()
        : json.map((value) => new ReturnDeliveryOrder.fromJson(value)).toList();
  }

  static Map<String, ReturnDeliveryOrder> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ReturnDeliveryOrder>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new ReturnDeliveryOrder.fromJson(value));
    }
    return map;
  }
}
