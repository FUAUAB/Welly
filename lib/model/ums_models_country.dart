part of swagger.api;

class UmsModelsCountry {
  /* Landnummer */
  int id = null;

/* Naam */
  String name = null;

  UmsModelsCountry();

  @override
  String toString() {
    return 'UmsModelsCountry[id=$id, name=$name, ]';
  }

  UmsModelsCountry.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'name': name};
  }

  static List<UmsModelsCountry> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<UmsModelsCountry>()
        : json.map((value) => new UmsModelsCountry.fromJson(value)).toList();
  }

  static Map<String, UmsModelsCountry> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UmsModelsCountry>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new UmsModelsCountry.fromJson(value));
    }
    return map;
  }
}
