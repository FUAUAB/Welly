part of swagger.api;

class V19Project {
  /* Customer ID, as retrievable from <a href=\"?deepLinking=true#/Customer/GetAllCustomers\">/api/Customer</a> */
  int customerId = null;

/* Project ID as retrievable from <a href=\"?deepLinking=true#/Project/GetAllProjects\">/api/Project</a> */
  String projectId = null;

/* Project's name */
  String name = null;

/* Project's second name */
  String secondName = null;

/* Address of project */
  V19Address address = null;

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

/* Shipping addresses for project */
  List<V19ShippingAddress> shippingAddresses = [];

  V19Project();

  @override
  String toString() {
    return 'V19Project[customerId=$customerId, projectId=$projectId, name=$name, secondName=$secondName, address=$address, contactInformation=$contactInformation, gln=$gln, startDate=$startDate, endDate=$endDate, active=$active, status=$status, shippingAddresses=$shippingAddresses, ]';
  }

  V19Project.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    customerId = json['customerId'];
    projectId = json['projectId'];
    name = json['name'];
    secondName = json['secondName'];
    address = new V19Address.fromJson(json['address']);
    contactInformation =
        new ContactInformation.fromJson(json['contactInformation']);
    gln = json['gln'];
    startDate =
        json['startDate'] == null ? null : DateTime.parse(json['startDate']);
    endDate = json['endDate'] == null ? null : DateTime.parse(json['endDate']);
    active = json['active'];
    status = json['status'];
    shippingAddresses =
        V19ShippingAddress.listFromJson(json['shippingAddresses']);
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
      'status': status,
      'shippingAddresses': shippingAddresses
    };
  }

  static List<V19Project> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<V19Project>()
        : json.map((value) => new V19Project.fromJson(value)).toList();
  }

  static Map<String, V19Project> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, V19Project>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new V19Project.fromJson(value));
    }
    return map;
  }
}
