part of swagger.api;

class Period {
  DateTime date = null;

  String week = null;

  String quarter = null;

  Period();

  @override
  String toString() {
    return 'Period[date=$date, week=$week, quarter=$quarter, ]';
  }

  Period.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    date = json['date'] == null ? null : DateTime.parse(json['date']);
    week = json['week'];
    quarter = json['quarter'];
  }

  Map<String, dynamic> toJson() {
    return {
      'date': date == null ? '' : date.toIso8601String(),
      'week': week,
      'quarter': quarter
    };
  }

  static List<Period> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<Period>()
        : json.map((value) => new Period.fromJson(value)).toList();
  }

  static Map<String, Period> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Period>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new Period.fromJson(value));
    }
    return map;
  }
}
