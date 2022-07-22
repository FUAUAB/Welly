part of swagger.api;

class ProductSize {
  /* Product ID with selected size for user, as retrievable from <a href=\"?deepLinking=true&amp;urls.primaryName=v1.4#/Product/ShopProductInformation\">/api/Product</a> */
  String productId = null;

/* Product Group (parent) ID for product */
  String productGroupId = null;

/* Attribute Id of size, as registered in ERP Suite */
  int sizeAttributeId = null;

/* Size id */
  int sizeId = null;

/* Size description */
  String sizeDescription = null;

  ProductSize();

  @override
  String toString() {
    return 'ProductSize[productId=$productId, productGroupId=$productGroupId, sizeAttributeId=$sizeAttributeId, sizeId=$sizeId, sizeDescription=$sizeDescription, ]';
  }

  ProductSize.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    productId = json['productId'];
    productGroupId = json['productGroupId'];
    sizeAttributeId = json['sizeAttributeId'];
    sizeId = json['sizeId'];
    sizeDescription = json['sizeDescription'];
  }

  Map<String, dynamic> toJson() {
    return {
      'productId': productId,
      'productGroupId': productGroupId,
      'sizeAttributeId': sizeAttributeId,
      'sizeId': sizeId,
      'sizeDescription': sizeDescription
    };
  }

  static List<ProductSize> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<ProductSize>()
        : json.map((value) => new ProductSize.fromJson(value)).toList();
  }

  static Map<String, ProductSize> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ProductSize>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new ProductSize.fromJson(value));
    }
    return map;
  }
}
