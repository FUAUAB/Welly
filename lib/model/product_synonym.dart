part of swagger.api;

class ProductSynonym {
  /* Synonym Id, as retrievable from <a href=\"?deepLinking=true#/Product/Synonym\">/api/Product/Synonym</a> */
  int id = null;

/* Synonyms for product description */
  List<String> synonym = [];

  ProductSynonym();

  @override
  String toString() {
    return 'ProductSynonym[id=$id, synonym=$synonym, ]';
  }

  ProductSynonym.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    synonym = (json['synonym'] as List).map((item) => item as String).toList();
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'synonym': synonym};
  }

  static List<ProductSynonym> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<ProductSynonym>()
        : json.map((value) => new ProductSynonym.fromJson(value)).toList();
  }

  static Map<String, ProductSynonym> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ProductSynonym>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new ProductSynonym.fromJson(value));
    }
    return map;
  }
}
