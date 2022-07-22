part of swagger.api;

class UMSStringRight {
  String defaultValue = null;

  bool locked = null;

  UMSStringRight();

  @override
  String toString() {
    return 'UMSStringRight[defaultValue=$defaultValue, locked=$locked, ]';
  }

  UMSStringRight.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    defaultValue = json['defaultValue'];
    locked = json['locked'];
  }

  Map<String, dynamic> toJson() {
    return {'defaultValue': defaultValue, 'locked': locked};
  }

  static List<UMSStringRight> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<UMSStringRight>()
        : json.map((value) => new UMSStringRight.fromJson(value)).toList();
  }

  static Map<String, UMSStringRight> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UMSStringRight>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new UMSStringRight.fromJson(value));
    }
    return map;
  }
}
