part of swagger.api;

class ProductGroup {
  /* Product group ID */
  String id = null;

/* Product group name */
  String description = null;

/* Underlying products of group */
  List<ProductSize> groupedProducts = [];

  ProductGroup();

  @override
  String toString() {
    return 'ProductGroup[id=$id, description=$description, groupedProducts=$groupedProducts, ]';
  }

  ProductGroup.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    description = json['description'];
    groupedProducts = ProductSize.listFromJson(json['groupedProducts']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'description': description,
      'groupedProducts': groupedProducts
    };
  }

  static List<ProductGroup> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<ProductGroup>()
        : json.map((value) => new ProductGroup.fromJson(value)).toList();
  }

  static Map<String, ProductGroup> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ProductGroup>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new ProductGroup.fromJson(value));
    }
    return map;
  }
}
