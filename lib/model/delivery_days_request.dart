part of swagger.api;

class DeliveryDaysRequest {
  /* Store ID, as retrievable from <a href=\"?deepLinking=true#/Webshop/Store\">/api/Webshop</a> */
  int storeId = null;

/* List of product IDs, as retrievable from <a href=\"?deepLinking=true#/Product/ShopProductInformation\">/api/Product</a> */
  List<String> productId = [];

  DeliveryDaysRequest();

  @override
  String toString() {
    return 'DeliveryDaysRequest[storeId=$storeId, productId=$productId, ]';
  }

  DeliveryDaysRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    storeId = json['storeId'];
    productId =
        (json['productId'] as List).map((item) => item as String).toList();
  }

  Map<String, dynamic> toJson() {
    return {'storeId': storeId, 'productId': productId};
  }

  static List<DeliveryDaysRequest> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<DeliveryDaysRequest>()
        : json.map((value) => new DeliveryDaysRequest.fromJson(value)).toList();
  }

  static Map<String, DeliveryDaysRequest> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DeliveryDaysRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new DeliveryDaysRequest.fromJson(value));
    }
    return map;
  }
}
