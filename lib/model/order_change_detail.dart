part of swagger.api;

class OrderChangeDetail {
  /* OrderDetailId as created by the ERP */
  int id = null;

/* Id of order detail as registered in webshop */
  int storeDetailId = null;

/* Product Id, as retrievable from <a href=\"?deepLinking=true#/Product/Get\">/api/Product</a> */
  String productId = null;

/* Product quantity as ordered */
  double quantityOrdered = null;

/* Product quantity already allocated */
  double quantityAllocated = null;

/* Product quantity already delivered */
  double quantityDelivered = null;

/* Product quantity that is cancelled */
  double quantityCancelled = null;

  OrderChangeDetail();

  @override
  String toString() {
    return 'OrderChangeDetail[id=$id, storeDetailId=$storeDetailId, productId=$productId, quantityOrdered=$quantityOrdered, quantityAllocated=$quantityAllocated, quantityDelivered=$quantityDelivered, quantityCancelled=$quantityCancelled, ]';
  }

  OrderChangeDetail.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    storeDetailId = json['storeDetailId'];
    productId = json['productId'];
    quantityOrdered = json['quantityOrdered'] == null
        ? null
        : json['quantityOrdered'].toDouble();
    quantityAllocated = json['quantityAllocated'] == null
        ? null
        : json['quantityAllocated'].toDouble();
    quantityDelivered = json['quantityDelivered'] == null
        ? null
        : json['quantityDelivered'].toDouble();
    quantityCancelled = json['quantityCancelled'] == null
        ? null
        : json['quantityCancelled'].toDouble();
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'storeDetailId': storeDetailId,
      'productId': productId,
      'quantityOrdered': quantityOrdered,
      'quantityAllocated': quantityAllocated,
      'quantityDelivered': quantityDelivered,
      'quantityCancelled': quantityCancelled
    };
  }

  static List<OrderChangeDetail> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<OrderChangeDetail>()
        : json.map((value) => new OrderChangeDetail.fromJson(value)).toList();
  }

  static Map<String, OrderChangeDetail> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OrderChangeDetail>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new OrderChangeDetail.fromJson(value));
    }
    return map;
  }
}
