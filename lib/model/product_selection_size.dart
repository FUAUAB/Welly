part of swagger.api;

class ProductSelectionSize {
  int productSelectionId = null;

  List<ProductGroup> productGroups = [];

  ProductSelectionSize();

  @override
  String toString() {
    return 'ProductSelectionSize[productSelectionId=$productSelectionId, productGroups=$productGroups, ]';
  }

  ProductSelectionSize.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    productSelectionId = json['productSelectionId'];
    productGroups = ProductGroup.listFromJson(json['productGroups']);
  }

  Map<String, dynamic> toJson() {
    return {
      'productSelectionId': productSelectionId,
      'productGroups': productGroups
    };
  }

  static List<ProductSelectionSize> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<ProductSelectionSize>()
        : json
            .map((value) => new ProductSelectionSize.fromJson(value))
            .toList();
  }

  static Map<String, ProductSelectionSize> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ProductSelectionSize>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new ProductSelectionSize.fromJson(value));
    }
    return map;
  }
}
