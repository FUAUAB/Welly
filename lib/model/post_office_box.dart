part of swagger.api;

class PostOfficeBox {
  String boxNumber = null;

  String postalCode = null;

  String city = null;

  PostOfficeBox();

  @override
  String toString() {
    return 'PostOfficeBox[boxNumber=$boxNumber, postalCode=$postalCode, city=$city, ]';
  }

  PostOfficeBox.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    boxNumber = json['boxNumber'];
    postalCode = json['postalCode'];
    city = json['city'];
  }

  Map<String, dynamic> toJson() {
    return {'boxNumber': boxNumber, 'postalCode': postalCode, 'city': city};
  }

  static List<PostOfficeBox> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<PostOfficeBox>()
        : json.map((value) => new PostOfficeBox.fromJson(value)).toList();
  }

  static Map<String, PostOfficeBox> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PostOfficeBox>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new PostOfficeBox.fromJson(value));
    }
    return map;
  }
}
