part of swagger.api;

class Project {
  /* Customer ID as retrievable from <a href=\"?deepLinking=true#Customer/GetAllCustomers\">/api/Customer</a> */
  int customerId = null;

/* Project ID as retrievable from <a href=\"?deepLinking=true#Project/GetAllProjects\">/api/Project</a> */
  String projectId = null;

/* Project's name */
  String name = null;

/* Project's second name */
  String secondName = null;

/* Address of project */
  Address address = null;

/* Contact information for project */
  ContactInformation contactInformation = null;

/* Global Location Number of project */
  String gln = null;

/* Start date of project */
  DateTime startDate = null;

/* End date of project */
  DateTime endDate = null;

/* Project active status */
  bool active = null;

/* Project status Id */
  int status = null;

  Project();

  @override
  String toString() {
    return 'Project[customerId=$customerId, projectId=$projectId, name=$name, secondName=$secondName, address=$address, contactInformation=$contactInformation, gln=$gln, startDate=$startDate, endDate=$endDate, active=$active, status=$status, ]';
  }

  Project.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    customerId = json['customerId'];
    projectId = json['projectId'];
    name = json['name'];
    secondName = json['secondName'];
    address = new Address.fromJson(json['address']);
    contactInformation =
        new ContactInformation.fromJson(json['contactInformation']);
    gln = json['gln'];
    startDate =
        json['startDate'] == null ? null : DateTime.parse(json['startDate']);
    endDate = json['endDate'] == null ? null : DateTime.parse(json['endDate']);
    active = json['active'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    return {
      'customerId': customerId,
      'projectId': projectId,
      'name': name,
      'secondName': secondName,
      'address': address,
      'contactInformation': contactInformation,
      'gln': gln,
      'startDate': startDate == null ? '' : startDate.toIso8601String(),
      'endDate': endDate == null ? '' : endDate.toIso8601String(),
      'active': active,
      'status': status
    };
  }

  static List<Project> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<Project>()
        : json.map((value) => new Project.fromJson(value)).toList();
  }

  static Map<String, Project> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Project>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new Project.fromJson(value));
    }
    return map;
  }
}
