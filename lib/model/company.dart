part of swagger.api;

class Company {
  int companyId = null;

  String companyName = null;

  List<Branch> branches = [];

  Company();

  @override
  String toString() {
    return 'Company[companyId=$companyId, companyName=$companyName, branches=$branches, ]';
  }

  Company.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    companyId = json['companyId'];
    companyName = json['companyName'];
    branches = Branch.listFromJson(json['branches']);
  }

  Map<String, dynamic> toJson() {
    return {
      'companyId': companyId,
      'companyName': companyName,
      'branches': branches
    };
  }

  static List<Company> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<Company>()
        : json.map((value) => new Company.fromJson(value)).toList();
  }

  static Map<String, Company> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Company>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new Company.fromJson(value));
    }
    return map;
  }
}
