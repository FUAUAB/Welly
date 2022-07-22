part of swagger.api;

class OrderChange {
  /* Order ID, as retrievable from <a href=\"?deepLinking=true#/Order/Get\">/api/Order</a> */
  int orderId = null;

/* Date when order is modified */
  DateTime dateModified = null;

/* Web order ID as submitted by source where order is placed */
  String storeOrderId = null;

/* Order status, with 5 = On hold, 10 = Active, 15 = Being picked, 20 = Partially shipped, 25 = Drop shipment, 97 = Cancelled, 98 = Completed */
  String status = null;
  //enum statusEnum {  OnHold,  Active,  BeingPicked,  PartiallyShipped,  DropShipment,  Cancelled,  Completed,  };
/* Datails for order change */
  List<OrderChangeDetail> details = [];

  OrderChange();

  @override
  String toString() {
    return 'OrderChange[orderId=$orderId, dateModified=$dateModified, storeOrderId=$storeOrderId, status=$status, details=$details, ]';
  }

  OrderChange.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    orderId = json['orderId'];
    dateModified = json['dateModified'] == null
        ? null
        : DateTime.parse(json['dateModified']);
    storeOrderId = json['storeOrderId'];
    status = json['status'];
    details = OrderChangeDetail.listFromJson(json['details']);
  }

  Map<String, dynamic> toJson() {
    return {
      'orderId': orderId,
      'dateModified':
          dateModified == null ? '' : dateModified.toIso8601String(),
      'storeOrderId': storeOrderId,
      'status': status,
      'details': details
    };
  }

  static List<OrderChange> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<OrderChange>()
        : json.map((value) => new OrderChange.fromJson(value)).toList();
  }

  static Map<String, OrderChange> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OrderChange>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new OrderChange.fromJson(value));
    }
    return map;
  }
}
