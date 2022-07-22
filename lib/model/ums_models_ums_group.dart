part of swagger.api;

class UmsModelsUmsGroup {
  /* Group identification */
  int id = null;

  String description = null;

/* Optional subgroups if any for the current group */
  List<UmsModelsUmsGroup> subGroups = [];

  UmsModelsUmsGroup();

  @override
  String toString() {
    return 'UmsModelsUmsGroup[id=$id, description=$description, subGroups=$subGroups, ]';
  }

  UmsModelsUmsGroup.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    description = json['description'];
    subGroups = UmsModelsUmsGroup.listFromJson(json['subGroups']);
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'description': description, 'subGroups': subGroups};
  }

  static List<UmsModelsUmsGroup> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<UmsModelsUmsGroup>()
        : json.map((value) => new UmsModelsUmsGroup.fromJson(value)).toList();
  }

  static Map<String, UmsModelsUmsGroup> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UmsModelsUmsGroup>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new UmsModelsUmsGroup.fromJson(value));
    }
    return map;
  }
}
