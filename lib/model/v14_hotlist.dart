part of swagger.api;

class V14Hotlist {
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

  V14Hotlist();

  @override
  String toString() {
    return 'V14Hotlist[storeId=$storeId, hotlistId=$hotlistId, description=$description, customerId=$customerId, webshopLogin=$webshopLogin, ]';
  }

  V14Hotlist.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    storeId = json['storeId'];
    hotlistId = json['hotlistId'];
    description = json['description'];
    customerId = json['customerId'];
    webshopLogin = json['webshopLogin'];
  }

  Map<String, dynamic> toJson() {
    return {
      'storeId': storeId,
      'hotlistId': hotlistId,
      'description': description,
      'customerId': customerId,
      'webshopLogin': webshopLogin
    };
  }

  static List<V14Hotlist> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<V14Hotlist>()
        : json.map((value) => new V14Hotlist.fromJson(value)).toList();
  }

  static Map<String, V14Hotlist> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, V14Hotlist>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new V14Hotlist.fromJson(value));
    }
    return map;
  }
}
