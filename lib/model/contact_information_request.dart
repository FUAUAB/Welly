part of swagger.api;

class ContactInformationRequest {
  /* Phone number */
  String phone = null;

/* Email address */
  String email = null;

  ContactInformationRequest();

  @override
  String toString() {
    return 'ContactInformationRequest[phone=$phone, email=$email, ]';
  }

  ContactInformationRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    phone = json['phone'];
    email = json['email'];
  }

  Map<String, dynamic> toJson() {
    return {'phone': phone, 'email': email};
  }

  static List<ContactInformationRequest> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<ContactInformationRequest>()
        : json
            .map((value) => new ContactInformationRequest.fromJson(value))
            .toList();
  }

  static Map<String, ContactInformationRequest> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ContactInformationRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new ContactInformationRequest.fromJson(value));
    }
    return map;
  }
}
