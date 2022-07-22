part of swagger.api;

class ProjectRequest {
  /* Customer ID, as retrievable from <a href=\"?deepLinking=true#/Customer/GetAllCustomers\">/api/Customer</a> */
  int customerId = null;

/* Project ID, as retrievable from <a href=\"?deepLinking=true#/Project/GetAllProjects\">/api/Project</a> */
  String projectId = null;

/* Project's name */
  String name = null;

/* Address of project */
  V19Address address = null;

/* Contact information for project */
  ContactInformationRequest contactInformation = null;

/* Project status Id */
  int status = null;
  // range from 0 to 99//
/* Start date of project */
  DateTime startDate = null;

/* End date of project */
  DateTime endDate = null;

/* Shipping address for project, as retrievable from <a href=\"?deepLinking=true#/Customer/ShippingAddresses\">/api/Customer/ShippingAddress</a> */
  V19ShippingAddress shippingAddress = null;

  ProjectRequest();

  @override
  String toString() {
    return 'ProjectRequest[customerId=$customerId, projectId=$projectId, name=$name, address=$address, contactInformation=$contactInformation, status=$status, startDate=$startDate, endDate=$endDate, shippingAddress=$shippingAddress, ]';
  }

  ProjectRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    customerId = json['customerId'];
    projectId = json['projectId'];
    name = json['name'];
    address = new V19Address.fromJson(json['address']);
    contactInformation =
        new ContactInformationRequest.fromJson(json['contactInformation']);
    status = json['status'];
    startDate =
        json['startDate'] == null ? null : DateTime.parse(json['startDate']);
    endDate = json['endDate'] == null ? null : DateTime.parse(json['endDate']);
    shippingAddress = new V19ShippingAddress.fromJson(json['shippingAddress']);
  }

  Map<String, dynamic> toJson() {
    return {
      'customerId': customerId,
      'projectId': projectId,
      'name': name,
      'address': address,
      'contactInformation': contactInformation,
      'status': status,
      'startDate': startDate == null ? '' : startDate.toIso8601String(),
      'endDate': endDate == null ? '' : endDate.toIso8601String(),
      'shippingAddress': shippingAddress
    };
  }

  static List<ProjectRequest> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<ProjectRequest>()
        : json.map((value) => new ProjectRequest.fromJson(value)).toList();
  }

  static Map<String, ProjectRequest> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ProjectRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new ProjectRequest.fromJson(value));
    }
    return map;
  }
}
