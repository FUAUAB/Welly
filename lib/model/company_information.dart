part of swagger.api;

class CompanyInformation {
  int companyId = null;

  String companyName = null;

  CompanyInformation();

  @override
  String toString() {
    return 'CompanyInformation[companyId=$companyId, companyName=$companyName, ]';
  }

  CompanyInformation.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    companyId = json['companyId'];
    companyName = json['companyName'];
  }

  Map<String, dynamic> toJson() {
    return {'companyId': companyId, 'companyName': companyName};
  }

  static List<CompanyInformation> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<CompanyInformation>()
        : json.map((value) => new CompanyInformation.fromJson(value)).toList();
  }

  static Map<String, CompanyInformation> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CompanyInformation>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new CompanyInformation.fromJson(value));
    }
    return map;
  }
}
