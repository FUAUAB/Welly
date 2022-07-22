part of swagger.api;

class V12RelatedProduct {
  /* Id of Store, as retrievable from <a href=\"?filter=Webshop\">/api/Webshop</a> */
  int storeId = null;

/* Id of product, as retrievable from <a href=\"?filter=Product\">/api/Product/Product</a> */
  String productId = null;

/* List of related products, as retrievable from <a href=\"?filter=Product\">/api/Product/RelatedProduct</a> */
  List<V12ProductRelation> relatedProducts = [];

  V12RelatedProduct();

  @override
  String toString() {
    return 'V12RelatedProduct[storeId=$storeId, productId=$productId, relatedProducts=$relatedProducts, ]';
  }

  V12RelatedProduct.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    storeId = json['storeId'];
    productId = json['productId'];
    relatedProducts = V12ProductRelation.listFromJson(json['relatedProducts']);
  }

  Map<String, dynamic> toJson() {
    return {
      'storeId': storeId,
      'productId': productId,
      'relatedProducts': relatedProducts
    };
  }

  static List<V12RelatedProduct> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<V12RelatedProduct>()
        : json.map((value) => new V12RelatedProduct.fromJson(value)).toList();
  }

  static Map<String, V12RelatedProduct> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, V12RelatedProduct>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new V12RelatedProduct.fromJson(value));
    }
    return map;
  }
}
