part of swagger.api;

class V13CategoryRequest {
  /* Store ID where category is showed, as retrievable from <a href=\"?filter=Webshop\">/api/Webshop</a> */
  int storeId = null;

/* Language Id, as retrievable from <a href=\"?deepLinking=true#/Language/Get\">/api/Language</a> */
  int languageId = null;

/* Hash data for retrieval of categories */
  List<ShopHash> hashData = [];

  V13CategoryRequest();

  @override
  String toString() {
    return 'V13CategoryRequest[storeId=$storeId, languageId=$languageId, hashData=$hashData, ]';
  }

  V13CategoryRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    storeId = json['storeId'];
    languageId = json['languageId'];
    hashData = ShopHash.listFromJson(json['hashData']);
  }

  Map<String, dynamic> toJson() {
    return {'storeId': storeId, 'languageId': languageId, 'hashData': hashData};
  }

  static List<V13CategoryRequest> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<V13CategoryRequest>()
        : json.map((value) => new V13CategoryRequest.fromJson(value)).toList();
  }

  static Map<String, V13CategoryRequest> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, V13CategoryRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new V13CategoryRequest.fromJson(value));
    }
    return map;
  }
}
