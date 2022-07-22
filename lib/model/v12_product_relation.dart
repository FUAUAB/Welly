part of swagger.api;

class V12ProductRelation {
  /* Id of product, as retrievable from <a href=\"?filter=Product\">/api/Product/Product</a> */
  String productId = null;

/* Id where product is to appear in the sequence */
  int sequenceId = null;

/* Ratio between base product and related product */
  double ratio = null;

  V12ProductRelation();

  @override
  String toString() {
    return 'V12ProductRelation[productId=$productId, sequenceId=$sequenceId, ratio=$ratio, ]';
  }

  V12ProductRelation.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    productId = json['productId'];
    sequenceId = json['sequenceId'];
    ratio = json['ratio'] == null ? null : json['ratio'].toDouble();
  }

  Map<String, dynamic> toJson() {
    return {'productId': productId, 'sequenceId': sequenceId, 'ratio': ratio};
  }

  static List<V12ProductRelation> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<V12ProductRelation>()
        : json.map((value) => new V12ProductRelation.fromJson(value)).toList();
  }

  static Map<String, V12ProductRelation> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, V12ProductRelation>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new V12ProductRelation.fromJson(value));
    }
    return map;
  }
}
