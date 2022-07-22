part of swagger.api;

class Brand {
  /* Brand ID, as retrievable from <a href=\"?deepLinking=true#/Product/Brands\">/api/Product/Brand</a> */
  int brandId = null;

/* Description of brand */
  String description = null;

  Brand();

  @override
  String toString() {
    return 'Brand[brandId=$brandId, description=$description, ]';
  }

  Brand.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    brandId = json['brandId'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    return {'brandId': brandId, 'description': description};
  }

  static List<Brand> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<Brand>()
        : json.map((value) => new Brand.fromJson(value)).toList();
  }

  static Map<String, Brand> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Brand>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new Brand.fromJson(value));
    }
    return map;
  }
}
