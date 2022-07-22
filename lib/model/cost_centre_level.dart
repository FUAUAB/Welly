part of swagger.api;

class CostCentreLevel {
  int id = null;

  String description = null;

  List<CostCentre> costCentres = [];

  CostCentreLevel();

  @override
  String toString() {
    return 'CostCentreLevel[id=$id, description=$description, costCentres=$costCentres, ]';
  }

  CostCentreLevel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    description = json['description'];
    costCentres = CostCentre.listFromJson(json['costCentres']);
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'description': description, 'costCentres': costCentres};
  }

  static List<CostCentreLevel> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<CostCentreLevel>()
        : json.map((value) => new CostCentreLevel.fromJson(value)).toList();
  }

  static Map<String, CostCentreLevel> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CostCentreLevel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new CostCentreLevel.fromJson(value));
    }
    return map;
  }
}
