part of swagger.api;

class Job {
  /* Job ID, as retrievable from <a href=\"?deepLinking=true#/WorkOrder/GetJobs \">/api/WorkOrder/Job</a> */
  int id = null;

/* Job description */
  String description = null;

/* Hourly rate for job */
  double hourlyRate = null;

  bool isSelected = false;

  Job();

  @override
  String toString() {
    return 'Job[id=$id, description=$description, hourlyRate=$hourlyRate, ]';
  }

  Job.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    description = json['description'];
    hourlyRate =
        json['hourlyRate'] == null ? null : json['hourlyRate'].toDouble();
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'description': description, 'hourlyRate': hourlyRate};
  }

  static List<Job> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<Job>()
        : json.map((value) => new Job.fromJson(value)).toList();
  }

  static Map<String, Job> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Job>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new Job.fromJson(value));
    }
    return map;
  }
}
