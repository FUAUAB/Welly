part of swagger.api;

class CrmAppointmentRequest {
  /* Employee ID for sales representative for customer, as retrievable from <a href=\"?deepLinking=true#/Representative/Representative\">/api/Representative</a> */
  int salesRepresentativeId = null;

/* Customer ID, as retrievable from <a href=\"?deepLinking=true#Customer/GetAllCustomers\">/api/Customer</a> */
  int customerId = null;

/* Project ID as retrievable from <a href=\"?deepLinking=true#Project/GetAllProjects\">/api/Project</a> */
  String projectId = null;

/* Appointment status, 10 = scheduled, 20 = fixed, 97 = cancelled, 98 = finished */
  String statusId = null;
  //enum statusIdEnum {  Scheduled,  Fixed,  Cancelled,  Finished,  };
/* Description of appointment */
  String description = null;

/* Activity ID, as retrievable from */
  int activityId = null;

/* Start time of appointment */
  DateTime startTime = null;

/* End time of appointment */
  DateTime endTime = null;

/* Appointment ID of previous appointment, as retrievable from */
  int previousAppointmentId = null;

/* Free text */
  String freeText = null;

/* Employee ID of customer's contact person, as retrievable from <a href=\"?deepLinking=true#Employee/GetCustomerEmployeesV111\">/api/Employee/CustomerEmployee/{customerId}</a> */
  String contactPerson = null;

/* ID of action result, as retrievable from */
  int actionResultId = null;

/* Order ID, as retrievable from <a href=\"?deepLinking=true#Order/OrderWithPaginationAndSearch\">/api/Order/Order</a> */
  int orderId = null;

/* Employee ID that scheduled this appointment, as retrievable from <a href=\"?deepLinking=true#/Employee/GetCompanyEmployee\">/api/Employee</a> */
  int plannerId = null;

  CrmAppointmentRequest();

  @override
  String toString() {
    return 'CrmAppointmentRequest[salesRepresentativeId=$salesRepresentativeId, customerId=$customerId, projectId=$projectId, statusId=$statusId, description=$description, activityId=$activityId, startTime=$startTime, endTime=$endTime, previousAppointmentId=$previousAppointmentId, freeText=$freeText, contactPerson=$contactPerson, actionResultId=$actionResultId, orderId=$orderId, plannerId=$plannerId, ]';
  }

  CrmAppointmentRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    salesRepresentativeId = json['salesRepresentativeId'];
    customerId = json['customerId'];
    projectId = json['projectId'];
    statusId = json['statusId'];
    description = json['description'];
    activityId = json['activityId'];
    startTime =
        json['startTime'] == null ? null : DateTime.parse(json['startTime']);
    endTime = json['endTime'] == null ? null : DateTime.parse(json['endTime']);
    previousAppointmentId = json['previousAppointmentId'];
    freeText = json['freeText'];
    contactPerson = json['contactPerson'];
    actionResultId = json['actionResultId'];
    orderId = json['orderId'];
    plannerId = json['plannerId'];
  }

  Map<String, dynamic> toJson() {
    return {
      'salesRepresentativeId': salesRepresentativeId,
      'customerId': customerId,
      'projectId': projectId,
      'statusId': statusId,
      'description': description,
      'activityId': activityId,
      'startTime': startTime == null ? '' : startTime.toIso8601String(),
      'endTime': endTime == null ? '' : endTime.toIso8601String(),
      'previousAppointmentId': previousAppointmentId,
      'freeText': freeText,
      'contactPerson': contactPerson,
      'actionResultId': actionResultId,
      'orderId': orderId,
      'plannerId': plannerId
    };
  }

  static List<CrmAppointmentRequest> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<CrmAppointmentRequest>()
        : json
            .map((value) => new CrmAppointmentRequest.fromJson(value))
            .toList();
  }

  static Map<String, CrmAppointmentRequest> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CrmAppointmentRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new CrmAppointmentRequest.fromJson(value));
    }
    return map;
  }
}
