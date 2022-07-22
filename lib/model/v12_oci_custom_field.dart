part of swagger.api;

class V12OciCustomField {
  /* Product ID for which oci fields are applicable, as retrievable from <a href=\"?filter=Product\">/api/Product/Product</a> */
  String productId = null;

/* OCI Field Name */
  String fieldName = null;

/* Result that is generated for filling OCI custom field */
  String result = null;

  V12OciCustomField();

  @override
  String toString() {
    return 'V12OciCustomField[productId=$productId, fieldName=$fieldName, result=$result, ]';
  }

  V12OciCustomField.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    productId = json['productId'];
    fieldName = json['fieldName'];
    result = json['result'];
  }

  Map<String, dynamic> toJson() {
    return {'productId': productId, 'fieldName': fieldName, 'result': result};
  }

  static List<V12OciCustomField> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<V12OciCustomField>()
        : json.map((value) => new V12OciCustomField.fromJson(value)).toList();
  }

  static Map<String, V12OciCustomField> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, V12OciCustomField>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new V12OciCustomField.fromJson(value));
    }
    return map;
  }
}
