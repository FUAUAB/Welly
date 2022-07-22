part of swagger.api;

class UMSModifyRight {
  bool canModify = null;

  UMSModifyRight();

  @override
  String toString() {
    return 'UMSModifyRight[canModify=$canModify, ]';
  }

  UMSModifyRight.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    canModify = json['canModify'];
  }

  Map<String, dynamic> toJson() {
    return {'canModify': canModify};
  }

  static List<UMSModifyRight> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<UMSModifyRight>()
        : json.map((value) => new UMSModifyRight.fromJson(value)).toList();
  }

  static Map<String, UMSModifyRight> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UMSModifyRight>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new UMSModifyRight.fromJson(value));
    }
    return map;
  }
}
