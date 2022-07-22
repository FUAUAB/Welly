part of swagger.api;

class ProductAvailabilityResult {
  /* List of product availability changes */
  List<Company> availability = [];

  ProductAvailabilityResult();

  @override
  String toString() {
    return 'ProductAvailabilityResult[availability=$availability, ]';
  }

  ProductAvailabilityResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    availability = Company.listFromJson(json['availability']);
  }

  Map<String, dynamic> toJson() {
    return {'availability': availability};
  }

  static List<ProductAvailabilityResult> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<ProductAvailabilityResult>()
        : json
            .map((value) => new ProductAvailabilityResult.fromJson(value))
            .toList();
  }

  static Map<String, ProductAvailabilityResult> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ProductAvailabilityResult>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new ProductAvailabilityResult.fromJson(value));
    }
    return map;
  }
}
