part of swagger.api;

class V12ContactInformation {
  /* Phone number */
  String phone = null;

/* Mobile phone number */
  String mobile = null;

/* Secondary phone number */
  String secondPhone = null;

/* Facsimile number */
  String fax = null;

/* Email address */
  String email = null;

/* Website URL */
  String website = null;

  V12ContactInformation();

  @override
  String toString() {
    return 'V12ContactInformation[phone=$phone, mobile=$mobile, secondPhone=$secondPhone, fax=$fax, email=$email, website=$website, ]';
  }

  V12ContactInformation.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    phone = json['phone'];
    mobile = json['mobile'];
    secondPhone = json['secondPhone'];
    fax = json['fax'];
    email = json['email'];
    website = json['website'];
  }

  Map<String, dynamic> toJson() {
    return {
      'phone': phone,
      'mobile': mobile,
      'secondPhone': secondPhone,
      'fax': fax,
      'email': email,
      'website': website
    };
  }

  static List<V12ContactInformation> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<V12ContactInformation>()
        : json
            .map((value) => new V12ContactInformation.fromJson(value))
            .toList();
  }

  static Map<String, V12ContactInformation> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, V12ContactInformation>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new V12ContactInformation.fromJson(value));
    }
    return map;
  }
}
