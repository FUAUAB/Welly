part of swagger.api;

class V12Sector {
  /* Company Id, as retrievable from <a href=\"?deepLinking=true#/Company/Get\">/api/Company</a> */
  int companyId = null;

/* Sector Id, as retrievable from <a href=\"?deepLinking=true#/Sector/Get\">/api/Sector</a> */
  int id = null;

/* Name of sector */
  String description = null;

  V12Sector();

  @override
  String toString() {
    return 'V12Sector[companyId=$companyId, id=$id, description=$description, ]';
  }

  V12Sector.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    companyId = json['companyId'];
    id = json['id'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    return {'companyId': companyId, 'id': id, 'description': description};
  }

  static List<V12Sector> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<V12Sector>()
        : json.map((value) => new V12Sector.fromJson(value)).toList();
  }

  static Map<String, V12Sector> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, V12Sector>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new V12Sector.fromJson(value));
    }
    return map;
  }
}
