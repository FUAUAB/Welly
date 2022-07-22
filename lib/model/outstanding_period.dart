part of swagger.api;

class OutstandingPeriod {
  int companyId = null;

  DateTime closingDate = null;

  OutstandingPeriod();

  @override
  String toString() {
    return 'OutstandingPeriod[companyId=$companyId, closingDate=$closingDate, ]';
  }

  OutstandingPeriod.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    companyId = json['companyId'];
    closingDate = json['closingDate'] == null
        ? null
        : DateTime.parse(json['closingDate']);
  }

  Map<String, dynamic> toJson() {
    return {
      'companyId': companyId,
      'closingDate': closingDate == null ? '' : closingDate.toIso8601String()
    };
  }

  static List<OutstandingPeriod> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<OutstandingPeriod>()
        : json.map((value) => new OutstandingPeriod.fromJson(value)).toList();
  }

  static Map<String, OutstandingPeriod> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OutstandingPeriod>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new OutstandingPeriod.fromJson(value));
    }
    return map;
  }
}
