part of swagger.api;

class CrmAppointment {
  /* ID of appointment, as retrievable from <a href=\"?deepLinking=true#/CRM/Appointment\">/api/CRM/Appointment</a> */
  int appointmentId = null;

/* Employee ID for sales representative for customer, as retrievable from <a href=\"?deepLinking=true#/Representative/Representative\">/api/Representative</a> */
  int salesRepresentativeId = null;

/* Employee name of sales representative */
  String salesRepresentativeName = null;

/* Customer ID, as retrievable from <a href=\"?deepLinking=true#Customer/GetAllCustomers\">/api/Customer</a> */
  int customerId = null;

/* Customer name */
  String customerName = null;

/* Project ID as retrievable from <a href=\"?deepLinking=true#Project/GetAllProjects\">/api/Project</a> */
  String projectId = null;

/* Project Name */
  String projectName = null;

/* Appointment status, 10 = scheduled, 20 = fixed, 97 = cancelled, 98 = finished */
  int statusId = null;
  //enum statusIdEnum {  Scheduled,  Fixed,  Cancelled,  Finished,  };
/* Description of appointment */
  String description = null;

/* Activity ID, as retrievable from */
  int activityId = null;

/* Start time of appointment */
  DateTime startTime = null;

/* End time of appointment */
  DateTime endTime = null;

/* Appointment ID of previous appointment, as retrievable from <a href=\"?deepLinking=true#/CRM/Appointment\">/api/CRM/Appointment</a> */
  int previousAppointmentId = null;

/* Free text */
  String freeText = null;

/* Is appointment scheduled? */
  bool scheduled = null;

/* Name of contact person at customer */
  String contactPerson = null;

/* ID of action result, as retrievable from */
  int actionResultId = null;

/* Order ID, as retrievable from <a href=\"?deepLinking=true#Order/OrderWithPaginationAndSearch\">/api/Order/Order</a> */
  int orderId = null;

/* ID of employee that scheduled this appointment, as retrievable from <a href=\"?deepLinking=true#/Employee/GetCompanyEmployee\">/api/Employee</a> */
  int plannerId = null;

/* Name of employee that scheduled this appointment */
  String plannerName = null;

  CrmAppointment();

  @override
  String toString() {
    return 'CrmAppointment[appointmentId=$appointmentId, salesRepresentativeId=$salesRepresentativeId, salesRepresentativeName=$salesRepresentativeName, customerId=$customerId, customerName=$customerName, projectId=$projectId, projectName=$projectName, statusId=$statusId, description=$description, activityId=$activityId, startTime=$startTime, endTime=$endTime, previousAppointmentId=$previousAppointmentId, freeText=$freeText, scheduled=$scheduled, contactPerson=$contactPerson, actionResultId=$actionResultId, orderId=$orderId, plannerId=$plannerId, plannerName=$plannerName, ]';
  }

  CrmAppointment.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    appointmentId = json['appointmentId'];
    salesRepresentativeId = json['salesRepresentativeId'];
    salesRepresentativeName = json['salesRepresentativeName'];
    customerId = json['customerId'];
    customerName = json['customerName'];
    projectId = json['projectId'];
    projectName = json['projectName'];
    statusId = json['statusId'];
    description = json['description'];
    activityId = json['activityId'];
    startTime =
        json['startTime'] == null ? null : DateTime.parse(json['startTime']);
    endTime = json['endTime'] == null ? null : DateTime.parse(json['endTime']);
    previousAppointmentId = json['previousAppointmentId'];
    freeText = json['freeText'];
    scheduled = json['scheduled'];
    contactPerson = json['contactPerson'];
    actionResultId = json['actionResultId'];
    orderId = json['orderId'];
    plannerId = json['plannerId'];
    plannerName = json['plannerName'];
  }

  Map<String, dynamic> toJson() {
    return {
      'appointmentId': appointmentId,
      'salesRepresentativeId': salesRepresentativeId,
      'salesRepresentativeName': salesRepresentativeName,
      'customerId': customerId,
      'customerName': customerName,
      'projectId': projectId,
      'projectName': projectName,
      'statusId': statusId,
      'description': description,
      'activityId': activityId,
      'startTime': startTime == null ? '' : startTime.toIso8601String(),
      'endTime': endTime == null ? '' : endTime.toIso8601String(),
      'previousAppointmentId': previousAppointmentId,
      'freeText': freeText,
      'scheduled': scheduled,
      'contactPerson': contactPerson,
      'actionResultId': actionResultId,
      'orderId': orderId,
      'plannerId': plannerId,
      'plannerName': plannerName
    };
  }

  static List<CrmAppointment> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<CrmAppointment>()
        : json.map((value) => new CrmAppointment.fromJson(value)).toList();
  }

  static Map<String, CrmAppointment> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CrmAppointment>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new CrmAppointment.fromJson(value));
    }
    return map;
  }
}
