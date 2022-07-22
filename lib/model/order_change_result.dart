part of swagger.api;

class OrderChangeResult {
  List<OrderChange> orderChanges = [];

  List<DeliveryChange> deliveryChanges = [];

  OrderChangeResult();

  @override
  String toString() {
    return 'OrderChangeResult[orderChanges=$orderChanges, deliveryChanges=$deliveryChanges, ]';
  }

  OrderChangeResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    orderChanges = OrderChange.listFromJson(json['orderChanges']);
    deliveryChanges = DeliveryChange.listFromJson(json['deliveryChanges']);
  }

  Map<String, dynamic> toJson() {
    return {'orderChanges': orderChanges, 'deliveryChanges': deliveryChanges};
  }

  static List<OrderChangeResult> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<OrderChangeResult>()
        : json.map((value) => new OrderChangeResult.fromJson(value)).toList();
  }

  static Map<String, OrderChangeResult> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OrderChangeResult>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new OrderChangeResult.fromJson(value));
    }
    return map;
  }
}
