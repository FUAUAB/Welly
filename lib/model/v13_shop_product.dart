part of swagger.api;

class V13ShopProduct {
  /* Product ID, as retrievable from <a href=\"?deepLinking=true#/Product/Get\">/api/Product</a> */
  String productId = null;

/* Comprehensive product data */
  V13ShopProductData productData = null;

/* Value of datahash */
  String dataHash = null;

  V13ShopProduct();

  @override
  String toString() {
    return 'V13ShopProduct[productId=$productId, productData=$productData, dataHash=$dataHash, ]';
  }

  V13ShopProduct.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    productId = json['productId'];
    productData = new V13ShopProductData.fromJson(json['productData']);
    dataHash = json['dataHash'];
  }

  Map<String, dynamic> toJson() {
    return {
      'productId': productId,
      'productData': productData,
      'dataHash': dataHash
    };
  }

  static List<V13ShopProduct> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<V13ShopProduct>()
        : json.map((value) => new V13ShopProduct.fromJson(value)).toList();
  }

  static Map<String, V13ShopProduct> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, V13ShopProduct>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new V13ShopProduct.fromJson(value));
    }
    return map;
  }
}
