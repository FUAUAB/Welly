part of swagger.api;

class CostCentreValue {
  int costCentreLevelId = null;

  int costCentreId = null;

  CostCentreValue();

  @override
  String toString() {
    return 'CostCentreValue[costCentreLevelId=$costCentreLevelId, costCentreId=$costCentreId, ]';
  }

  CostCentreValue.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    costCentreLevelId = json['costCentreLevelId'];
    costCentreId = json['costCentreId'];
  }

  Map<String, dynamic> toJson() {
    return {
      'costCentreLevelId': costCentreLevelId,
      'costCentreId': costCentreId
    };
  }

  static List<CostCentreValue> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<CostCentreValue>()
        : json.map((value) => new CostCentreValue.fromJson(value)).toList();
  }

  static Map<String, CostCentreValue> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CostCentreValue>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new CostCentreValue.fromJson(value));
    }
    return map;
  }
}
