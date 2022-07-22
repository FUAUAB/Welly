part of swagger.api;

class AccountInfo {
  int employeeId = null;

  int defaultCompanyId = null;

  AccountInfo();

  @override
  String toString() {
    return 'AccountInfo[employeeId=$employeeId, defaultCompanyId=$defaultCompanyId, ]';
  }

  AccountInfo.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    employeeId = json['employeeId'];
    defaultCompanyId = json['defaultCompanyId'];
  }

  Map<String, dynamic> toJson() {
    return {'employeeId': employeeId, 'defaultCompanyId': defaultCompanyId};
  }

  static List<AccountInfo> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<AccountInfo>()
        : json.map((value) => new AccountInfo.fromJson(value)).toList();
  }

  static Map<String, AccountInfo> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AccountInfo>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new AccountInfo.fromJson(value));
    }
    return map;
  }
}
