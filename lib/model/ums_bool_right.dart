part of swagger.api;

class UMSBoolRight {
  bool defaultValue = null;

  bool locked = null;

  UMSBoolRight();

  @override
  String toString() {
    return 'UMSBoolRight[defaultValue=$defaultValue, locked=$locked, ]';
  }

  UMSBoolRight.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    defaultValue = json['defaultValue'];
    locked = json['locked'];
  }

  Map<String, dynamic> toJson() {
    return {'defaultValue': defaultValue, 'locked': locked};
  }

  static List<UMSBoolRight> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<UMSBoolRight>()
        : json.map((value) => new UMSBoolRight.fromJson(value)).toList();
  }

  static Map<String, UMSBoolRight> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UMSBoolRight>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new UMSBoolRight.fromJson(value));
    }
    return map;
  }
}
