part of swagger.api;

class ProductIdentification {
  String productId = null;

  String ean = null;

/* Optional set supplier ean, can be used in combination with SupplierProductId */
  String supplierEan = null;

  String supplierProductId = null;

  ProductIdentification();

  @override
  String toString() {
    return 'ProductIdentification[productId=$productId, ean=$ean, supplierEan=$supplierEan, supplierProductId=$supplierProductId, ]';
  }

  ProductIdentification.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    productId = json['productId'];
    ean = json['ean'];
    supplierEan = json['supplierEan'];
    supplierProductId = json['supplierProductId'];
  }

  Map<String, dynamic> toJson() {
    return {
      'productId': productId,
      'ean': ean,
      'supplierEan': supplierEan,
      'supplierProductId': supplierProductId
    };
  }

  static List<ProductIdentification> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<ProductIdentification>()
        : json
            .map((value) => new ProductIdentification.fromJson(value))
            .toList();
  }

  static Map<String, ProductIdentification> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ProductIdentification>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new ProductIdentification.fromJson(value));
    }
    return map;
  }
}
