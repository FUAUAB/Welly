part of swagger.api;

class ProductAvailability {
  /* Date and time of this change */
  DateTime dateModified = null;

/* ERP ProductID */
  String productId = null;

/* Quantity available for customers */
  double availability = null;

  ProductAvailability();

  @override
  String toString() {
    return 'ProductAvailability[dateModified=$dateModified, productId=$productId, availability=$availability, ]';
  }

  ProductAvailability.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    dateModified = json['dateModified'] == null
        ? null
        : DateTime.parse(json['dateModified']);
    productId = json['productId'];
    availability =
        json['availability'] == null ? null : json['availability'].toDouble();
  }

  Map<String, dynamic> toJson() {
    return {
      'dateModified':
          dateModified == null ? '' : dateModified.toIso8601String(),
      'productId': productId,
      'availability': availability
    };
  }

  static List<ProductAvailability> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<ProductAvailability>()
        : json.map((value) => new ProductAvailability.fromJson(value)).toList();
  }

  static Map<String, ProductAvailability> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ProductAvailability>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new ProductAvailability.fromJson(value));
    }
    return map;
  }
}
