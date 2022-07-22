part of swagger.api;

class Employee {
  int number = null;

  String name = null;

  bool purchaser = null;

  Employee();

  @override
  String toString() {
    return 'Employee[number=$number, name=$name, purchaser=$purchaser, ]';
  }

  Employee.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    number = json['number'];
    name = json['name'];
    purchaser = json['purchaser'];
  }

  Map<String, dynamic> toJson() {
    return {'number': number, 'name': name, 'purchaser': purchaser};
  }

  static List<Employee> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<Employee>()
        : json.map((value) => new Employee.fromJson(value)).toList();
  }

  static Map<String, Employee> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Employee>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new Employee.fromJson(value));
    }
    return map;
  }
}
