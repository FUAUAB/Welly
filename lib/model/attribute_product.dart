part of swagger.api;

class AttributeProduct {
  /* Product ID, as retrievable from <a href=\"?deepLinking=true#/Product/Get\">/api/Product</a> */
  String productId = null;

/* Attributes for product */
  List<ProductAttribute> attributes = [];

/* Value of datahash */
  String datahash = null;

  AttributeProduct();

  @override
  String toString() {
    return 'AttributeProduct[productId=$productId, attributes=$attributes, datahash=$datahash, ]';
  }

  AttributeProduct.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    productId = json['productId'];
    attributes = ProductAttribute.listFromJson(json['attributes']);
    datahash = json['datahash'];
  }

  Map<String, dynamic> toJson() {
    return {
      'productId': productId,
      'attributes': attributes,
      'datahash': datahash
    };
  }

  static List<AttributeProduct> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<AttributeProduct>()
        : json.map((value) => new AttributeProduct.fromJson(value)).toList();
  }

  static Map<String, AttributeProduct> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AttributeProduct>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new AttributeProduct.fromJson(value));
    }
    return map;
  }
}
