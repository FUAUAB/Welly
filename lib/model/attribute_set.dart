part of swagger.api;

class AttributeSet {
  /* Attribute set ID, as retrievable from <a href=\"?deepLinking=true#/Product/ProductAttributeSets\">/api/Product/ProductAttributeSet</a> */
  int id = null;

/* Description of attribute set */
  String description = null;

/* Product attributes assigned to attribute set */
  List<ProductAttribute> productAttributes = [];

  AttributeSet();

  @override
  String toString() {
    return 'AttributeSet[id=$id, description=$description, productAttributes=$productAttributes, ]';
  }

  AttributeSet.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    description = json['description'];
    productAttributes =
        ProductAttribute.listFromJson(json['productAttributes']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'description': description,
      'productAttributes': productAttributes
    };
  }

  static List<AttributeSet> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<AttributeSet>()
        : json.map((value) => new AttributeSet.fromJson(value)).toList();
  }

  static Map<String, AttributeSet> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AttributeSet>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new AttributeSet.fromJson(value));
    }
    return map;
  }
}
