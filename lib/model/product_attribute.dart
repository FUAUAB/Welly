part of swagger.api;

class ProductAttribute {
  /* Product Attribute ID, as retrievable from <a href=\"?deepLinking=true#/Product/ProductAttributes\">/api/Product/ProductAttribute</a> */
  int id = null;

/* Product attribute name */
  String description = null;

/* Shop can filter on option */
  bool allowFiltering = null;

/* Attribute value */
  String value = null;

/* Attribute unit description */
  String unit = null;

/* Product attribute options */
  List<ProductAttributeOption> options = [];

/* Value of datahash */
  String datahash = null;

  ProductAttribute();

  @override
  String toString() {
    return 'ProductAttribute[id=$id, description=$description, allowFiltering=$allowFiltering, value=$value, unit=$unit, options=$options, datahash=$datahash, ]';
  }

  ProductAttribute.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    description = json['description'];
    allowFiltering = json['allowFiltering'];
    value = json['value'];
    unit = json['unit'];
    options = ProductAttributeOption.listFromJson(json['options']);
    datahash = json['datahash'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'description': description,
      'allowFiltering': allowFiltering,
      'value': value,
      'unit': unit,
      'options': options,
      'datahash': datahash
    };
  }

  static List<ProductAttribute> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<ProductAttribute>()
        : json.map((value) => new ProductAttribute.fromJson(value)).toList();
  }

  static Map<String, ProductAttribute> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ProductAttribute>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new ProductAttribute.fromJson(value));
    }
    return map;
  }
}
