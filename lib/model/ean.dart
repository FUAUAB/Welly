part of swagger.api;

class Ean {
  /* Product ID, as retrievable from <a href=\"?deepLinking=true#/Product/ShopProductsV1_3\">/api/Product</a> */
  String productId = null;

/* European Article Number (EAN) for product */
  String productEan = null;

/* Conversion factor that indicates how many items are included in the EAN */
  double factor = null;

/* Description of EAN */
  String description = null;

  Ean();

  @override
  String toString() {
    return 'Ean[productId=$productId, productEan=$productEan, factor=$factor, description=$description, ]';
  }

  Ean.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    productId = json['productId'];
    productEan = json['productEan'];
    factor = json['factor'] == null ? null : json['factor'].toDouble();
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    return {
      'productId': productId,
      'productEan': productEan,
      'factor': factor,
      'description': description
    };
  }

  static List<Ean> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<Ean>()
        : json.map((value) => new Ean.fromJson(value)).toList();
  }

  static Map<String, Ean> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Ean>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new Ean.fromJson(value));
    }
    return map;
  }
}
