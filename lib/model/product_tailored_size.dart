part of swagger.api;

class ProductTailoredSize {
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

/* Is size required for webshop user? */
  bool required = null;

  ProductTailoredSize();

  @override
  String toString() {
    return 'ProductTailoredSize[productId=$productId, productGroupId=$productGroupId, sizeAttributeId=$sizeAttributeId, sizeId=$sizeId, sizeDescription=$sizeDescription, required=$required, ]';
  }

  ProductTailoredSize.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    productId = json['productId'];
    productGroupId = json['productGroupId'];
    sizeAttributeId = json['sizeAttributeId'];
    sizeId = json['sizeId'];
    sizeDescription = json['sizeDescription'];
    required = json['required'];
  }

  Map<String, dynamic> toJson() {
    return {
      'productId': productId,
      'productGroupId': productGroupId,
      'sizeAttributeId': sizeAttributeId,
      'sizeId': sizeId,
      'sizeDescription': sizeDescription,
      'required': required
    };
  }

  static List<ProductTailoredSize> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<ProductTailoredSize>()
        : json.map((value) => new ProductTailoredSize.fromJson(value)).toList();
  }

  static Map<String, ProductTailoredSize> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ProductTailoredSize>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new ProductTailoredSize.fromJson(value));
    }
    return map;
  }
}
