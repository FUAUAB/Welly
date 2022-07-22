part of swagger.api;

class UMSUserMangerRights {
  UMSModifyRight email = null;

  UMSModifyRight nameAndGender = null;

  UMSModifyRight address = null;

  UMSModifyRight phone = null;

  UMSModifyRight project = null;

  UMSModifyRight shippingAddress = null;

  UMSModifyRight expiredEmployee = null;

  UMSModifyAddRight budget = null;

  UMSModifyAddRight productRange = null;

  UMSModifyAddRight authorizer = null;

  UMSAddRight employee = null;

  UMSUserMangerRights();

  @override
  String toString() {
    return 'UMSUserMangerRights[email=$email, nameAndGender=$nameAndGender, address=$address, phone=$phone, project=$project, shippingAddress=$shippingAddress, expiredEmployee=$expiredEmployee, budget=$budget, productRange=$productRange, authorizer=$authorizer, employee=$employee, ]';
  }

  UMSUserMangerRights.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    email = new UMSModifyRight.fromJson(json['email']);
    nameAndGender = new UMSModifyRight.fromJson(json['nameAndGender']);
    address = new UMSModifyRight.fromJson(json['address']);
    phone = new UMSModifyRight.fromJson(json['phone']);
    project = new UMSModifyRight.fromJson(json['project']);
    shippingAddress = new UMSModifyRight.fromJson(json['shippingAddress']);
    expiredEmployee = new UMSModifyRight.fromJson(json['expiredEmployee']);
    budget = new UMSModifyAddRight.fromJson(json['budget']);
    productRange = new UMSModifyAddRight.fromJson(json['productRange']);
    authorizer = new UMSModifyAddRight.fromJson(json['authorizer']);
    employee = new UMSAddRight.fromJson(json['employee']);
  }

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'nameAndGender': nameAndGender,
      'address': address,
      'phone': phone,
      'project': project,
      'shippingAddress': shippingAddress,
      'expiredEmployee': expiredEmployee,
      'budget': budget,
      'productRange': productRange,
      'authorizer': authorizer,
      'employee': employee
    };
  }

  static List<UMSUserMangerRights> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<UMSUserMangerRights>()
        : json.map((value) => new UMSUserMangerRights.fromJson(value)).toList();
  }

  static Map<String, UMSUserMangerRights> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UMSUserMangerRights>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new UMSUserMangerRights.fromJson(value));
    }
    return map;
  }
}
