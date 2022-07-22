part of swagger.api;

class HotlistDetailed {
  /* StoreId where hotlist is applicable, as retrieved from <a href=\"?filter=Webshop\">/api/Webshop</a> */
  int storeId = null;

/* User login for which hotlist is applicable, as retrieved from <a href=\"?filter=Webshopuser\">/api/Webshopuser</a> */
  int hotlistId = null;

/* Description of hotlist */
  String description = null;

/* CustomerId as retrieved from <a href=\"?filter=Customer\">/api/Customer</a> */
  int customerId = null;

/* StoreId where order is placed, as retrieved from <a href=\"?filter=Hotlist\">/api/Hotlist</a> */
  String webshopLogin = null;

/* List of productIds from Erp as retrieved from <a href=\"?filter=Product\">/api/Product</a> */
  List<String> products = [];

  HotlistDetailed();

  @override
  String toString() {
    return 'HotlistDetailed[storeId=$storeId, hotlistId=$hotlistId, description=$description, customerId=$customerId, webshopLogin=$webshopLogin, products=$products, ]';
  }

  HotlistDetailed.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    storeId = json['storeId'];
    hotlistId = json['hotlistId'];
    description = json['description'];
    customerId = json['customerId'];
    webshopLogin = json['webshopLogin'];
    products =
        (json['products'] as List).map((item) => item as String).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'storeId': storeId,
      'hotlistId': hotlistId,
      'description': description,
      'customerId': customerId,
      'webshopLogin': webshopLogin,
      'products': products
    };
  }

  static List<HotlistDetailed> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<HotlistDetailed>()
        : json.map((value) => new HotlistDetailed.fromJson(value)).toList();
  }

  static Map<String, HotlistDetailed> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, HotlistDetailed>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new HotlistDetailed.fromJson(value));
    }
    return map;
  }
}
