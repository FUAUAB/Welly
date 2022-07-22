part of swagger.api;

class WorkOrderScheduleRequest {
  /* Company ID, as retrievable from <a href=\"?deepLinking=true#/Company/GetAllCompanies\">/api/Company</a> */
  int companyId = null;

/* Branch ID, as retrievable from <a href=\"?deepLinking=true#/Branch/GetAllBranches\">/api/Branch</a> */
  int branchId = null;

/* Order ID, as retrievable from <a href=\"?deepLinking=true#/WorkOrder/GetAllWorkOrdersV112\">/api/WorkOrder</a> */
  int workOrderId = null;

/* Schedule ID (only required when updating a schedule item), as retrievable from <a href=\"?deepLinking=true#/WorkOrder/GetSchedule\">/api/WorkOrder/Schedule</a> */
  int scheduleId = null;

/* ID of employee who is assigned to this workorder, retrievable from <a href=\"?deepLinking=true#/Employee/GetAllCustomerEmployeesV111\">/api/Employee</a> */
  int employeeId = null;

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

  WorkOrderScheduleRequest();

  @override
  String toString() {
    return 'WorkOrderScheduleRequest[companyId=$companyId, branchId=$branchId, workOrderId=$workOrderId, scheduleId=$scheduleId, employeeId=$employeeId, startTime=$startTime, endTime=$endTime, jobId=$jobId, jobDescription=$jobDescription, binding=$binding, ]';
  }

  WorkOrderScheduleRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    companyId = json['companyId'];
    branchId = json['branchId'];
    workOrderId = json['workOrderId'];
    scheduleId = json['scheduleId'];
    employeeId = json['employeeId'];
    startTime =
        json['startTime'] == null ? null : DateTime.parse(json['startTime']);
    endTime = json['endTime'] == null ? null : DateTime.parse(json['endTime']);
    jobId = json['jobId'];
    jobDescription = json['jobDescription'];
    binding = json['binding'];
  }

  Map<String, dynamic> toJson() {
    return {
      'companyId': companyId,
      'branchId': branchId,
      'workOrderId': workOrderId,
      'scheduleId': scheduleId,
      'employeeId': employeeId,
      'startTime': startTime == null ? '' : startTime.toIso8601String(),
      'endTime': endTime == null ? '' : endTime.toIso8601String(),
      'jobId': jobId,
      'jobDescription': jobDescription,
      'binding': binding
    };
  }

  static List<WorkOrderScheduleRequest> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<WorkOrderScheduleRequest>()
        : json
            .map((value) => new WorkOrderScheduleRequest.fromJson(value))
            .toList();
  }

  static Map<String, WorkOrderScheduleRequest> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WorkOrderScheduleRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new WorkOrderScheduleRequest.fromJson(value));
    }
    return map;
  }
}
