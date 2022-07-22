part of swagger.api;

class Specification {
  /* Store ID, as retrievable from <a href=\"?deepLinking=true#/Webshop/Store\">/api/Webshop</a> */
  int storeId = null;

/* Language ID, as retrievable from <a href=\"?deepLinking=true#/Language/GetAllLanguages\">/api/Language</a> */
  int languageId = null;

/* Attribute ID, as retrievable from <a href=\"?deepLinking=true#/Product/ProductAttributesForShopProducts\">/api/Webshop</a> */
  int attributeId = null;

/* Filtering is allowed for specfication */
  bool allowFiltering = null;

  Specification();

  @override
  String toString() {
    return 'Specification[storeId=$storeId, languageId=$languageId, attributeId=$attributeId, allowFiltering=$allowFiltering, ]';
  }

  Specification.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    storeId = json['storeId'];
    languageId = json['languageId'];
    attributeId = json['attributeId'];
    allowFiltering = json['allowFiltering'];
  }

  Map<String, dynamic> toJson() {
    return {
      'storeId': storeId,
      'languageId': languageId,
      'attributeId': attributeId,
      'allowFiltering': allowFiltering
    };
  }

  static List<Specification> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<Specification>()
        : json.map((value) => new Specification.fromJson(value)).toList();
  }

  static Map<String, Specification> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Specification>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new Specification.fromJson(value));
    }
    return map;
  }
}
