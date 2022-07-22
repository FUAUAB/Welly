part of swagger.api;

class WorkOrderHours {
  /* Start time of work order */
  DateTime startTime = null;

/* Time when work order is finished */
  DateTime endTime = null;

/* Id of employee to which work order hours are assigned, as retrievable from <a href=\"?deepLinking=true#/Employee/GetAllCustomerEmployeesV111\">/api/Employee</a> */
  int employeeId = null;

/* Name of employee to which work order hours are assigned */
  String employeeName = null;

/* Job undertaken during work order hours */
  Job job = null;

  WorkOrderHours();

  @override
  String toString() {
    return 'WorkOrderHours[startTime=$startTime, endTime=$endTime, employeeId=$employeeId, employeeName=$employeeName, job=$job, ]';
  }

  WorkOrderHours.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    startTime =
        json['startTime'] == null ? null : DateTime.parse(json['startTime']);
    endTime = json['endTime'] == null ? null : DateTime.parse(json['endTime']);
    employeeId = json['employeeId'];
    employeeName = json['employeeName'];
    job = new Job.fromJson(json['job']);
  }

  Map<String, dynamic> toJson() {
    return {
      'startTime': startTime == null ? '' : startTime.toIso8601String(),
      'endTime': endTime == null ? '' : endTime.toIso8601String(),
      'employeeId': employeeId,
      'employeeName': employeeName,
      'job': job
    };
  }

  static List<WorkOrderHours> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<WorkOrderHours>()
        : json.map((value) => new WorkOrderHours.fromJson(value)).toList();
  }

  static Map<String, WorkOrderHours> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WorkOrderHours>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new WorkOrderHours.fromJson(value));
    }
    return map;
  }
}
