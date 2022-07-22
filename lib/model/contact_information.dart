part of swagger.api;

class ContactInformation {
  /* Phone number */
  String phone = null;

/* Mobile phone number */
  String mobile = null;

/* Facsimile number */
  String fax = null;

/* Email address */
  String email = null;

/* Website URL */
  String website = null;

  ContactInformation();

  @override
  String toString() {
    return 'ContactInformation[phone=$phone, mobile=$mobile, fax=$fax, email=$email, website=$website, ]';
  }

  ContactInformation.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    phone = json['phone'];
    mobile = json['mobile'];
    fax = json['fax'];
    email = json['email'];
    website = json['website'];
  }

  Map<String, dynamic> toJson() {
    return {
      'phone': phone,
      'mobile': mobile,
      'fax': fax,
      'email': email,
      'website': website
    };
  }

  static List<ContactInformation> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<ContactInformation>()
        : json.map((value) => new ContactInformation.fromJson(value)).toList();
  }

  static Map<String, ContactInformation> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ContactInformation>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new ContactInformation.fromJson(value));
    }
    return map;
  }
}
