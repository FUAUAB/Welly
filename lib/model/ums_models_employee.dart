part of swagger.api;

class UmsModelsEmployee {
  int id = null;

  String username = null;

  String email = null;

  String userEmail = null;

  String ccEmails = null;

  String firstName = null;

  String lastName = null;

  String gender = null;

  UmsModelsAddress employeeAddress = null;

  String telephone = null;

  String mobile = null;

  bool disabled = null;

  UmsModelsEmployee();

  @override
  String toString() {
    return 'UmsModelsEmployee[id=$id, username=$username, email=$email, userEmail=$userEmail, ccEmails=$ccEmails, firstName=$firstName, lastName=$lastName, gender=$gender, employeeAddress=$employeeAddress, telephone=$telephone, mobile=$mobile, disabled=$disabled, ]';
  }

  UmsModelsEmployee.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    username = json['username'];
    email = json['email'];
    userEmail = json['userEmail'];
    ccEmails = json['ccEmails'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    gender = json['gender'];
    employeeAddress = new UmsModelsAddress.fromJson(json['employeeAddress']);
    telephone = json['telephone'];
    mobile = json['mobile'];
    disabled = json['disabled'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'username': username,
      'email': email,
      'userEmail': userEmail,
      'ccEmails': ccEmails,
      'firstName': firstName,
      'lastName': lastName,
      'gender': gender,
      'employeeAddress': employeeAddress,
      'telephone': telephone,
      'mobile': mobile,
      'disabled': disabled
    };
  }

  static List<UmsModelsEmployee> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<UmsModelsEmployee>()
        : json.map((value) => new UmsModelsEmployee.fromJson(value)).toList();
  }

  static Map<String, UmsModelsEmployee> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UmsModelsEmployee>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new UmsModelsEmployee.fromJson(value));
    }
    return map;
  }
}
