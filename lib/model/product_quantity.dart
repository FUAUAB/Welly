part of swagger.api;

class ProductQuantity {
  /* productId as received from <a href=\"?filter=Product\">/api/Product/Product</a> */
  String productId = null;

/* Specify quantity for this product. */
  double quantity = null;

  ProductQuantity();

  @override
  String toString() {
    return 'ProductQuantity[productId=$productId, quantity=$quantity, ]';
  }

  ProductQuantity.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    productId = json['productId'];
    quantity = json['quantity'] == null ? null : json['quantity'].toDouble();
  }

  Map<String, dynamic> toJson() {
    return {'productId': productId, 'quantity': quantity};
  }

  static List<ProductQuantity> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<ProductQuantity>()
        : json.map((value) => new ProductQuantity.fromJson(value)).toList();
  }

  static Map<String, ProductQuantity> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ProductQuantity>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new ProductQuantity.fromJson(value));
    }
    return map;
  }
}
