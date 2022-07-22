part of swagger.api;

class Appointment {
  DateTime start = null;

  DateTime end = null;

  String subject = null;

  String body = null;

  int status = null;

  int categoryId = null;

  String category = null;

  String location = null;

  String exchangeID = null;

  String erpID = null;

  Appointment();

  @override
  String toString() {
    return 'Appointment[start=$start, end=$end, subject=$subject, body=$body, status=$status, categoryId=$categoryId, category=$category, location=$location, exchangeID=$exchangeID, erpID=$erpID, ]';
  }

  Appointment.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    start = json['start'] == null ? null : DateTime.parse(json['start']);
    end = json['end'] == null ? null : DateTime.parse(json['end']);
    subject = json['subject'];
    body = json['body'];
    status = json['status'];
    categoryId = json['categoryId'];
    category = json['category'];
    location = json['location'];
    exchangeID = json['exchangeID'];
    erpID = json['erpID'];
  }

  Map<String, dynamic> toJson() {
    return {
      'start': start == null ? '' : start.toIso8601String(),
      'end': end == null ? '' : end.toIso8601String(),
      'subject': subject,
      'body': body,
      'status': status,
      'categoryId': categoryId,
      'category': category,
      'location': location,
      'exchangeID': exchangeID,
      'erpID': erpID
    };
  }

  static List<Appointment> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<Appointment>()
        : json.map((value) => new Appointment.fromJson(value)).toList();
  }

  static Map<String, Appointment> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Appointment>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new Appointment.fromJson(value));
    }
    return map;
  }
}
