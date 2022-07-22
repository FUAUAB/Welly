part of swagger.api;

class ProductAttributeOption {
  /* Option Id */
  int id = null;

/* Product Attribute ID, as retrievable from */
  int productAttributeId = null;

/* Opion name */
  String description = null;

/* Minimum value for option */
  double minValue = null;

/* Max value for option */
  double maxValue = null;

  ProductAttributeOption();

  @override
  String toString() {
    return 'ProductAttributeOption[id=$id, productAttributeId=$productAttributeId, description=$description, minValue=$minValue, maxValue=$maxValue, ]';
  }

  ProductAttributeOption.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    productAttributeId = json['productAttributeId'];
    description = json['description'];
    minValue = json['minValue'] == null ? null : json['minValue'].toDouble();
    maxValue = json['maxValue'] == null ? null : json['maxValue'].toDouble();
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'productAttributeId': productAttributeId,
      'description': description,
      'minValue': minValue,
      'maxValue': maxValue
    };
  }

  static List<ProductAttributeOption> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<ProductAttributeOption>()
        : json
            .map((value) => new ProductAttributeOption.fromJson(value))
            .toList();
  }

  static Map<String, ProductAttributeOption> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ProductAttributeOption>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new ProductAttributeOption.fromJson(value));
    }
    return map;
  }
}
