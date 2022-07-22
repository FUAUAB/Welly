part of swagger.api;

class V12Employee {
  /* Id of employee, as retrievable from <a href=\"?deepLinking=true&amp;urls.primaryName=v1.2#/Employee/Get\">/api/Employee</a> */
  int id = null;

/* Name of employee */
  String name = null;

/* Second name of employee */
  String secondName = null;

/* Contact information for employee */
  V12ContactInformation contactInformation = null;

/* Employee is purchaser */
  bool purchaser = null;

/* Employee is salesperson */
  bool salesPerson = null;

/* Employee is sales representative */
  bool salesRepresentative = null;

/* Employee is market segment leader */
  bool marketSegmentLeader = null;

/* Employee is inspector */
  bool inspector = null;

/* Employee is order picker */
  bool orderPicker = null;

/* Employee is service employee */
  bool mechanic = null;

/* Employee is goods receiver */
  bool goodsReceiver = null;

/* Employee works at the counter */
  bool counterEmployee = null;

/* Employee is responsible for stock */
  bool stockResponsible = null;

/* Default company for employee, as retrievable from <a href=\"?deepLinking=true#/Company/GetAllCompanies\">/api/Company</a> */
  int defaultCompany = null;

/* Default branch for employee, as retrievable from <a href=\"?deepLinking=true#/Branch/GetAllBranches\">/api/Branch</a> */
  int defaultBranch = null;

/* External identifcation at partners */
  List<V13ExternalId> externalId = [];

  V12Employee();

  @override
  String toString() {
    return 'V12Employee[id=$id, name=$name, secondName=$secondName, contactInformation=$contactInformation, purchaser=$purchaser, salesPerson=$salesPerson, salesRepresentative=$salesRepresentative, marketSegmentLeader=$marketSegmentLeader, inspector=$inspector, orderPicker=$orderPicker, mechanic=$mechanic, goodsReceiver=$goodsReceiver, counterEmployee=$counterEmployee, stockResponsible=$stockResponsible, defaultCompany=$defaultCompany, defaultBranch=$defaultBranch, externalId=$externalId, ]';
  }

  V12Employee.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    name = json['name'];
    secondName = json['secondName'];
    contactInformation =
        new V12ContactInformation.fromJson(json['contactInformation']);
    purchaser = json['purchaser'];
    salesPerson = json['salesPerson'];
    salesRepresentative = json['salesRepresentative'];
    marketSegmentLeader = json['marketSegmentLeader'];
    inspector = json['inspector'];
    orderPicker = json['orderPicker'];
    mechanic = json['mechanic'];
    goodsReceiver = json['goodsReceiver'];
    counterEmployee = json['counterEmployee'];
    stockResponsible = json['stockResponsible'];
    defaultCompany = json['defaultCompany'];
    defaultBranch = json['defaultBranch'];
    externalId = V13ExternalId.listFromJson(json['externalId']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'secondName': secondName,
      'contactInformation': contactInformation,
      'purchaser': purchaser,
      'salesPerson': salesPerson,
      'salesRepresentative': salesRepresentative,
      'marketSegmentLeader': marketSegmentLeader,
      'inspector': inspector,
      'orderPicker': orderPicker,
      'mechanic': mechanic,
      'goodsReceiver': goodsReceiver,
      'counterEmployee': counterEmployee,
      'stockResponsible': stockResponsible,
      'defaultCompany': defaultCompany,
      'defaultBranch': defaultBranch,
      'externalId': externalId
    };
  }

  static List<V12Employee> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<V12Employee>()
        : json.map((value) => new V12Employee.fromJson(value)).toList();
  }

  static Map<String, V12Employee> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, V12Employee>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new V12Employee.fromJson(value));
    }
    return map;
  }
}
