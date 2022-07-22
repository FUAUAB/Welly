part of swagger.api;

class SyncAppointments {
  List<Appointment> appointments = [];

  String syncState = null;

  bool moreChangesAvailable = null;

  SyncAppointments();

  @override
  String toString() {
    return 'SyncAppointments[appointments=$appointments, syncState=$syncState, moreChangesAvailable=$moreChangesAvailable, ]';
  }

  SyncAppointments.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    appointments = Appointment.listFromJson(json['appointments']);
    syncState = json['syncState'];
    moreChangesAvailable = json['moreChangesAvailable'];
  }

  Map<String, dynamic> toJson() {
    return {
      'appointments': appointments,
      'syncState': syncState,
      'moreChangesAvailable': moreChangesAvailable
    };
  }

  static List<SyncAppointments> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<SyncAppointments>()
        : json.map((value) => new SyncAppointments.fromJson(value)).toList();
  }

  static Map<String, SyncAppointments> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, SyncAppointments>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new SyncAppointments.fromJson(value));
    }
    return map;
  }
}
