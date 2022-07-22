part of swagger.api;

class WorkOrderProduct {
  /* Product ID, as retrievable from as retrievable from <a href=\"?deepLinking=true#/Product/ShopProductInformation\">/api/Product</a> */
  String productId = null;

/* Product description (max length of 45 characters). */
  String description = null;

/* Required quantity of product */
  double quantityRequired = null;

/* Quantity that is set aside for workorder */
  double quantityMadeAvailable = null;

  WorkOrderProduct();

  @override
  String toString() {
    return 'WorkOrderProduct[productId=$productId, description=$description, quantityRequired=$quantityRequired, quantityMadeAvailable=$quantityMadeAvailable, ]';
  }

  WorkOrderProduct.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    productId = json['productId'];
    description = json['description'];
    quantityRequired = json['quantityRequired'] == null
        ? null
        : json['quantityRequired'].toDouble();
    quantityMadeAvailable = json['quantityMadeAvailable'] == null
        ? null
        : json['quantityMadeAvailable'].toDouble();
  }

  Map<String, dynamic> toJson() {
    return {
      'productId': productId,
      'description': description,
      'quantityRequired': quantityRequired,
      'quantityMadeAvailable': quantityMadeAvailable
    };
  }

  static List<WorkOrderProduct> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<WorkOrderProduct>()
        : json.map((value) => new WorkOrderProduct.fromJson(value)).toList();
  }

  static Map<String, WorkOrderProduct> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WorkOrderProduct>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new WorkOrderProduct.fromJson(value));
    }
    return map;
  }
}
