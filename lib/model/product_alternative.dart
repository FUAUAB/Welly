part of swagger.api;

class ProductAlternative {
  /* Product ID, as retrievable from <a href=\"?deepLinking=true#/Product/ShopProductInformation\">/api/Product</a> */
  String productId = null;

/* Alternatives for product */
  List<Alternative> alternatives = [];

  ProductAlternative();

  @override
  String toString() {
    return 'ProductAlternative[productId=$productId, alternatives=$alternatives, ]';
  }

  ProductAlternative.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    productId = json['productId'];
    alternatives = Alternative.listFromJson(json['alternatives']);
  }

  Map<String, dynamic> toJson() {
    return {'productId': productId, 'alternatives': alternatives};
  }

  static List<ProductAlternative> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<ProductAlternative>()
        : json.map((value) => new ProductAlternative.fromJson(value)).toList();
  }

  static Map<String, ProductAlternative> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ProductAlternative>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new ProductAlternative.fromJson(value));
    }
    return map;
  }
}
