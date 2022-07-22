part of swagger.api;

class V12SalesEmployee {
  /* Sales person ID for customer, as retrievable from <a href=\"?deepLinking=true#/Employees\">/api/Employee</a> */
  int salesPersonId = null;

/* Sales representative ID for customer, as retrievable from <a href=\"?deepLinking=true#/Representative/Representative\">/api/Representative</a> */
  int salesRepresentativeId = null;

/* Sales person ID according to external account */
  String salesPersonExternalId = null;

/* Sales representative ID according to external account */
  String salesRepresentativeExternalId = null;

  V12SalesEmployee();

  @override
  String toString() {
    return 'V12SalesEmployee[salesPersonId=$salesPersonId, salesRepresentativeId=$salesRepresentativeId, salesPersonExternalId=$salesPersonExternalId, salesRepresentativeExternalId=$salesRepresentativeExternalId, ]';
  }

  V12SalesEmployee.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    salesPersonId = json['salesPersonId'];
    salesRepresentativeId = json['salesRepresentativeId'];
    salesPersonExternalId = json['salesPersonExternalId'];
    salesRepresentativeExternalId = json['salesRepresentativeExternalId'];
  }

  Map<String, dynamic> toJson() {
    return {
      'salesPersonId': salesPersonId,
      'salesRepresentativeId': salesRepresentativeId,
      'salesPersonExternalId': salesPersonExternalId,
      'salesRepresentativeExternalId': salesRepresentativeExternalId
    };
  }

  static List<V12SalesEmployee> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<V12SalesEmployee>()
        : json.map((value) => new V12SalesEmployee.fromJson(value)).toList();
  }

  static Map<String, V12SalesEmployee> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, V12SalesEmployee>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new V12SalesEmployee.fromJson(value));
    }
    return map;
  }
}
