part of swagger.api;

class CostCentre {
  int costCentreId = null;

  String description = null;

  CostCentre();

  @override
  String toString() {
    return 'CostCentre[costCentreId=$costCentreId, description=$description, ]';
  }

  CostCentre.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    costCentreId = json['costCentreId'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    return {'costCentreId': costCentreId, 'description': description};
  }

  static List<CostCentre> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<CostCentre>()
        : json.map((value) => new CostCentre.fromJson(value)).toList();
  }

  static Map<String, CostCentre> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CostCentre>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new CostCentre.fromJson(value));
    }
    return map;
  }
}
