part of swagger.api;

class DeliveryResult {
  /* CompanyId as retrievable from <a href=\"?filter=Company\">/api/Company</a> */
  int companyId = null;

/* BranchId as retrievable from <a href=\"?filter=Branch\">/api/Branch</a> */
  int branchId = null;

/* OrderId as retrievable from <a href=\"?filter=Order\">/api/Order</a> */
  int orderId = null;

/* Delivery Id as retrievable from <a href=\"?filter=Delivery\">/api/Delivery</a> */
  int deliveryId = null;

  DeliveryResult();

  @override
  String toString() {
    return 'DeliveryResult[companyId=$companyId, branchId=$branchId, orderId=$orderId, deliveryId=$deliveryId, ]';
  }

  DeliveryResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    companyId = json['companyId'];
    branchId = json['branchId'];
    orderId = json['orderId'];
    deliveryId = json['deliveryId'];
  }

  Map<String, dynamic> toJson() {
    return {
      'companyId': companyId,
      'branchId': branchId,
      'orderId': orderId,
      'deliveryId': deliveryId
    };
  }

  static List<DeliveryResult> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<DeliveryResult>()
        : json.map((value) => new DeliveryResult.fromJson(value)).toList();
  }

  static Map<String, DeliveryResult> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DeliveryResult>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new DeliveryResult.fromJson(value));
    }
    return map;
  }
}
