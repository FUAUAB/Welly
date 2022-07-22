part of swagger.api;

class ProjectStatus {
  /* Project status ID, as retrievable from <a href=\"?deepLinking=true#/Project/Status\">/api/Project</a> */
  int id = null;

/* Description of shipping address status */
  String description = null;

  ProjectStatus();

  @override
  String toString() {
    return 'ProjectStatus[id=$id, description=$description, ]';
  }

  ProjectStatus.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'description': description};
  }

  static List<ProjectStatus> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<ProjectStatus>()
        : json.map((value) => new ProjectStatus.fromJson(value)).toList();
  }

  static Map<String, ProjectStatus> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ProjectStatus>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new ProjectStatus.fromJson(value));
    }
    return map;
  }
}
