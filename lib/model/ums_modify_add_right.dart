part of swagger.api;

class UMSModifyAddRight {
  bool canModify = null;

  bool canAdd = null;

  UMSModifyAddRight();

  @override
  String toString() {
    return 'UMSModifyAddRight[canModify=$canModify, canAdd=$canAdd, ]';
  }

  UMSModifyAddRight.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    canModify = json['canModify'];
    canAdd = json['canAdd'];
  }

  Map<String, dynamic> toJson() {
    return {'canModify': canModify, 'canAdd': canAdd};
  }

  static List<UMSModifyAddRight> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<UMSModifyAddRight>()
        : json.map((value) => new UMSModifyAddRight.fromJson(value)).toList();
  }

  static Map<String, UMSModifyAddRight> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UMSModifyAddRight>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new UMSModifyAddRight.fromJson(value));
    }
    return map;
  }
}
