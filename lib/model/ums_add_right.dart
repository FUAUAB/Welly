part of swagger.api;

class UMSAddRight {
  bool canAdd = null;

  UMSAddRight();

  @override
  String toString() {
    return 'UMSAddRight[canAdd=$canAdd, ]';
  }

  UMSAddRight.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    canAdd = json['canAdd'];
  }

  Map<String, dynamic> toJson() {
    return {'canAdd': canAdd};
  }

  static List<UMSAddRight> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<UMSAddRight>()
        : json.map((value) => new UMSAddRight.fromJson(value)).toList();
  }

  static Map<String, UMSAddRight> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UMSAddRight>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new UMSAddRight.fromJson(value));
    }
    return map;
  }
}
