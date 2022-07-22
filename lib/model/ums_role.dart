part of swagger.api;

class UMSRole {
  int customerId = null;

  int storeId = null;

  int id = null;

  String description = null;

  UMSUserMangerRights userMangerRights = null;

  UMSEmployeeRights employeeRights = null;

  UMSRole();

  @override
  String toString() {
    return 'UMSRole[customerId=$customerId, storeId=$storeId, id=$id, description=$description, userMangerRights=$userMangerRights, employeeRights=$employeeRights, ]';
  }

  UMSRole.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    customerId = json['customerId'];
    storeId = json['storeId'];
    id = json['id'];
    description = json['description'];
    userMangerRights =
        new UMSUserMangerRights.fromJson(json['userMangerRights']);
    employeeRights = new UMSEmployeeRights.fromJson(json['employeeRights']);
  }

  Map<String, dynamic> toJson() {
    return {
      'customerId': customerId,
      'storeId': storeId,
      'id': id,
      'description': description,
      'userMangerRights': userMangerRights,
      'employeeRights': employeeRights
    };
  }

  static List<UMSRole> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<UMSRole>()
        : json.map((value) => new UMSRole.fromJson(value)).toList();
  }

  static Map<String, UMSRole> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UMSRole>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new UMSRole.fromJson(value));
    }
    return map;
  }
}
