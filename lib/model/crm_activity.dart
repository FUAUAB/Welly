part of swagger.api;

class CrmActivity {
  /* Activity ID, as retrievable from <a href=\"?deepLinking=true#/CRM/GetActivities\">/api/CRM/Activity</a> */
  int id = null;

/* Description of activity */
  String description = null;

/* 32-bit ARGB color value attributed to activity */
  int color = null;

  CrmActivity();

  @override
  String toString() {
    return 'CrmActivity[id=$id, description=$description, color=$color, ]';
  }

  CrmActivity.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    description = json['description'];
    color = json['color'];
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'description': description, 'color': color};
  }

  static List<CrmActivity> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<CrmActivity>()
        : json.map((value) => new CrmActivity.fromJson(value)).toList();
  }

  static Map<String, CrmActivity> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CrmActivity>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new CrmActivity.fromJson(value));
    }
    return map;
  }
}
