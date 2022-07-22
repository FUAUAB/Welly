part of swagger.api;

class UmsModelsAuthorizer {
  int id = null;

  String username = null;

  String firstName = null;

  String lastName = null;

  int displayOrder = null;

  UmsModelsAuthorizer();

  @override
  String toString() {
    return 'UmsModelsAuthorizer[id=$id, username=$username, firstName=$firstName, lastName=$lastName, displayOrder=$displayOrder, ]';
  }

  UmsModelsAuthorizer.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    username = json['username'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    displayOrder = json['displayOrder'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'username': username,
      'firstName': firstName,
      'lastName': lastName,
      'displayOrder': displayOrder
    };
  }

  static List<UmsModelsAuthorizer> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<UmsModelsAuthorizer>()
        : json.map((value) => new UmsModelsAuthorizer.fromJson(value)).toList();
  }

  static Map<String, UmsModelsAuthorizer> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UmsModelsAuthorizer>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new UmsModelsAuthorizer.fromJson(value));
    }
    return map;
  }
}
