part of swagger.api;

class SpecificProduct {
  /* Product ID as registered in ERP,  as retrievable from <a href=\"?deepLinking=true#/Product/ShopProductInformation\">/api/Product/ShopProducts</a> */
  String productId = null;

/* Name of product */
  String description = null;

  SpecificProduct();

  @override
  String toString() {
    return 'SpecificProduct[productId=$productId, description=$description, ]';
  }

  SpecificProduct.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    productId = json['productId'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    return {'productId': productId, 'description': description};
  }

  static List<SpecificProduct> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<SpecificProduct>()
        : json.map((value) => new SpecificProduct.fromJson(value)).toList();
  }

  static Map<String, SpecificProduct> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, SpecificProduct>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new SpecificProduct.fromJson(value));
    }
    return map;
  }
}
