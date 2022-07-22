part of swagger.api;

class Store {
  /* Store Id */
  int storeId = null;

/* Store description */
  String description = null;

/* Store Type (W = Webshop, O = Other) */
  String type = null;

/* Customer Id for orders from store */
  int customerOrdering = null;

/* Customer for prices in store */
  int customerPricing = null;

  Store();

  @override
  String toString() {
    return 'Store[storeId=$storeId, description=$description, type=$type, customerOrdering=$customerOrdering, customerPricing=$customerPricing, ]';
  }

  Store.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    storeId = json['storeId'];
    description = json['description'];
    type = json['type'];
    customerOrdering = json['customerOrdering'];
    customerPricing = json['customerPricing'];
  }

  Map<String, dynamic> toJson() {
    return {
      'storeId': storeId,
      'description': description,
      'type': type,
      'customerOrdering': customerOrdering,
      'customerPricing': customerPricing
    };
  }

  static List<Store> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<Store>()
        : json.map((value) => new Store.fromJson(value)).toList();
  }

  static Map<String, Store> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Store>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new Store.fromJson(value));
    }
    return map;
  }
}
