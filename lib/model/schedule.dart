part of swagger.api;

class Schedule {
  /* Starting time of schedule item */
  DateTime startTime = null;

/* End time of schedule item */
  DateTime endTime = null;

  Schedule();

  @override
  String toString() {
    return 'Schedule[startTime=$startTime, endTime=$endTime, ]';
  }

  Schedule.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    startTime =
        json['startTime'] == null ? null : DateTime.parse(json['startTime']);
    endTime = json['endTime'] == null ? null : DateTime.parse(json['endTime']);
  }

  Map<String, dynamic> toJson() {
    return {
      'startTime': startTime == null ? '' : startTime.toIso8601String(),
      'endTime': endTime == null ? '' : endTime.toIso8601String()
    };
  }

  static List<Schedule> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<Schedule>()
        : json.map((value) => new Schedule.fromJson(value)).toList();
  }

  static Map<String, Schedule> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Schedule>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new Schedule.fromJson(value));
    }
    return map;
  }
}
