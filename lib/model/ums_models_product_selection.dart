part of swagger.api;

class UmsModelsProductSelection {
  int id = null;

  String name = null;

  bool default_ = null;

  UmsModelsProductSelection();

  @override
  String toString() {
    return 'UmsModelsProductSelection[id=$id, name=$name, default_=$default_, ]';
  }

  UmsModelsProductSelection.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    name = json['name'];
    default_ = json['default'];
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'name': name, 'default': default_};
  }

  static List<UmsModelsProductSelection> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<UmsModelsProductSelection>()
        : json
            .map((value) => new UmsModelsProductSelection.fromJson(value))
            .toList();
  }

  static Map<String, UmsModelsProductSelection> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UmsModelsProductSelection>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new UmsModelsProductSelection.fromJson(value));
    }
    return map;
  }
}
