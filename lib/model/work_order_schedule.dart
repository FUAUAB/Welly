part of swagger.api;

class WorkOrderSchedule {
  /* Schedule ID, as retrievable from <a href=\"?deepLinking=true#/WorkOrder/GetSchedule\">/api/WorkOrder/Schedule</a> */
  int scheduleId = null;

/* Company ID, as retrievable from <a href=\"?deepLinking=true#/Company/GetAllCompanies\">/api/Company</a> */
  int companyId = null;

/* Branch ID, as retrievable from <a href=\"?deepLinking=true#/Branch/GetAllBranches\">/api/Branch</a> */
  int branchId = null;

/* Order ID, as retrievable from <a href=\"?deepLinking=true#/WorkOrder/GetAllWorkOrdersV112\">/api/WorkOrder</a> */
  int workOrderId = null;

/* ID of employee assigned to this workorder, retrievable from <a href=\"?deepLinking=true#/Employee/GetAllCustomerEmployeesV111\">/api/Employee</a> */
  int employeeId = null;

/* Name of employee assigned to this workorder */
  String employeeName = null;

/* Starting time of schedule item */
  DateTime startTime = null;

/* End time of schedule item */
  DateTime endTime = null;

/* Job ID, as retrievable from <a href=\"?deepLinking=true#/WorkOrder/GetJobs \">/api/WorkOrder/Job</a> */
  int jobId = null;

/* Job description. Please note: this description may differ from the default retrieved via  <a href=\"?deepLinking=true#/WorkOrder/GetJobs \">/api/WorkOrder/Job</a>, since the   description can be manually modified in ERP. */
  String jobDescription = null;

/* Scheduled job is binding and cannot be rescheduled */
  bool binding = null;

/* ID of first scheduled job */
  int firstScheduleId = null;

  WorkOrderSchedule();

  @override
  String toString() {
    return 'WorkOrderSchedule[scheduleId=$scheduleId, companyId=$companyId, branchId=$branchId, workOrderId=$workOrderId, employeeId=$employeeId, employeeName=$employeeName, startTime=$startTime, endTime=$endTime, jobId=$jobId, jobDescription=$jobDescription, binding=$binding, firstScheduleId=$firstScheduleId, ]';
  }

  WorkOrderSchedule.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    scheduleId = json['scheduleId'];
    companyId = json['companyId'];
    branchId = json['branchId'];
    workOrderId = json['workOrderId'];
    employeeId = json['employeeId'];
    employeeName = json['employeeName'];
    startTime =
        json['startTime'] == null ? null : DateTime.parse(json['startTime']);
    endTime = json['endTime'] == null ? null : DateTime.parse(json['endTime']);
    jobId = json['jobId'];
    jobDescription = json['jobDescription'];
    binding = json['binding'];
    firstScheduleId = json['firstScheduleId'];
  }

  Map<String, dynamic> toJson() {
    return {
      'scheduleId': scheduleId,
      'companyId': companyId,
      'branchId': branchId,
      'workOrderId': workOrderId,
      'employeeId': employeeId,
      'employeeName': employeeName,
      'startTime': startTime == null ? '' : startTime.toIso8601String(),
      'endTime': endTime == null ? '' : endTime.toIso8601String(),
      'jobId': jobId,
      'jobDescription': jobDescription,
      'binding': binding,
      'firstScheduleId': firstScheduleId
    };
  }

  static List<WorkOrderSchedule> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<WorkOrderSchedule>()
        : json.map((value) => new WorkOrderSchedule.fromJson(value)).toList();
  }

  static Map<String, WorkOrderSchedule> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WorkOrderSchedule>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new WorkOrderSchedule.fromJson(value));
    }
    return map;
  }
}
