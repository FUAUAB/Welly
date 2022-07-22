part of swagger.api;

class WorkOrderClass {
  /* Work order classification Id */
  int id = null;

/* Work order type (0=External, 1=Maintenance, 2=Inspection, 3=Internal) */
  int type = null;
  //enum typeEnum {  External,  Maintenance,  Inspection,  Internal,  };
/* Description of classification */
  String description = null;

/* Percentage of discount or surcharge, where a negative number indicates a surcharge */
  double percentage = null;

  WorkOrderClass();

  @override
  String toString() {
    return 'WorkOrderClass[id=$id, type=$type, description=$description, percentage=$percentage, ]';
  }

  WorkOrderClass.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    type = json['type'];
    description = json['description'];
    percentage =
        json['percentage'] == null ? null : json['percentage'].toDouble();
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type': type,
      'description': description,
      'percentage': percentage
    };
  }

  static List<WorkOrderClass> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<WorkOrderClass>()
        : json.map((value) => new WorkOrderClass.fromJson(value)).toList();
  }

  static Map<String, WorkOrderClass> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WorkOrderClass>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new WorkOrderClass.fromJson(value));
    }
    return map;
  }
}
