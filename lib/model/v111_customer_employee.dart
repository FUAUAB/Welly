part of swagger.api;

class V111CustomerEmployee {
  /* Customer ID, as retrievable from <a href=\"?deepLinking=true#/Customer/Get\">/api/Customer</a> */
  int customerId = null;

/* Employee ID, as retrievable from <a href=\"?deepLinking=true#/Employee/Get\">/api/Employee</a> */
  int employeeId = null;

/* First name of employee */
  String firstName = null;

/* Surname of employee */
  String lastName = null;

/* Initials of employee */
  String initials = null;

/* Address of employee */
  V19Address employeeAddress = null;

/* Gender of employee, such as M(ale), F(emale) or N.A. */
  String gender = null;

/* Employee's title ID, as retrievable from <a href=\"?deepLinking=true#/Titles/Get\">/api/Employee</a> */
  int titleId = null;

/* Employees Position Id, as retrievable from <a href=\"?deepLinking=true#/Position/Get\">/api/Employee</a> */
  int positionId = null;

/* Contact information for employee */
  V12ContactInformation contactInformation = null;

/* Employee is employed by customer */
  bool isEmployed = null;

/* Employee may receive digital newsletters */
  bool newslettersAllowed = null;

/* External identifcation at partners */
  List<V13ExternalId> externalId = [];

/* Id of partner that submits request: 0 = Salesforce, 1 = Centix, 2 = Other */
  int appId = null;
  //enum appIdEnum {  Salesforce,  Centix,  Other,  };
  V111CustomerEmployee();

  @override
  String toString() {
    return 'V111CustomerEmployee[customerId=$customerId, employeeId=$employeeId, firstName=$firstName, lastName=$lastName, initials=$initials, employeeAddress=$employeeAddress, gender=$gender, titleId=$titleId, positionId=$positionId, contactInformation=$contactInformation, isEmployed=$isEmployed, newslettersAllowed=$newslettersAllowed, externalId=$externalId, appId=$appId, ]';
  }

  V111CustomerEmployee.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    customerId = json['customerId'];
    employeeId = json['employeeId'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    initials = json['initials'];
    employeeAddress = new V19Address.fromJson(json['employeeAddress']);
    gender = json['gender'];
    titleId = json['titleId'];
    positionId = json['positionId'];
    contactInformation =
        new V12ContactInformation.fromJson(json['contactInformation']);
    isEmployed = json['isEmployed'];
    newslettersAllowed = json['newslettersAllowed'];
    externalId = V13ExternalId.listFromJson(json['externalId']);
    appId = json['appId'];
  }

  Map<String, dynamic> toJson() {
    return {
      'customerId': customerId,
      'employeeId': employeeId,
      'firstName': firstName,
      'lastName': lastName,
      'initials': initials,
      'employeeAddress': employeeAddress,
      'gender': gender,
      'titleId': titleId,
      'positionId': positionId,
      'contactInformation': contactInformation,
      'isEmployed': isEmployed,
      'newslettersAllowed': newslettersAllowed,
      'externalId': externalId,
      'appId': appId
    };
  }

  static List<V111CustomerEmployee> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<V111CustomerEmployee>()
        : json
            .map((value) => new V111CustomerEmployee.fromJson(value))
            .toList();
  }

  static Map<String, V111CustomerEmployee> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, V111CustomerEmployee>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new V111CustomerEmployee.fromJson(value));
    }
    return map;
  }
}
