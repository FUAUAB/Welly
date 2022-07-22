part of swagger.api;

class ShopProductHash {
  /* Product ID, as retrievable from <a href=\"?deepLinking=true#/Product/Get\">/api/Product</a> */
  String productId = null;

/* Value of datahash */
  String dataHash = null;

  ShopProductHash();

  @override
  String toString() {
    return 'ShopProductHash[productId=$productId, dataHash=$dataHash, ]';
  }

  ShopProductHash.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    productId = json['productId'];
    dataHash = json['dataHash'];
  }

  Map<String, dynamic> toJson() {
    return {'productId': productId, 'dataHash': dataHash};
  }

  static List<ShopProductHash> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<ShopProductHash>()
        : json.map((value) => new ShopProductHash.fromJson(value)).toList();
  }

  static Map<String, ShopProductHash> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ShopProductHash>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new ShopProductHash.fromJson(value));
    }
    return map;
  }
}
