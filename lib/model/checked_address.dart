part of swagger.api;

class CheckedAddress {
  String street = null;

  String houseNumber = null;

  String houseNumberAddition = null;

  String postalCode = null;

  String city = null;

  String province = null;

  bool residential = null;

  bool validated = null;

  CheckedAddress();

  @override
  String toString() {
    return 'CheckedAddress[street=$street, houseNumber=$houseNumber, houseNumberAddition=$houseNumberAddition, postalCode=$postalCode, city=$city, province=$province, residential=$residential, validated=$validated, ]';
  }

  CheckedAddress.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    street = json['street'];
    houseNumber = json['houseNumber'];
    houseNumberAddition = json['houseNumberAddition'];
    postalCode = json['postalCode'];
    city = json['city'];
    province = json['province'];
    residential = json['residential'];
    validated = json['validated'];
  }

  Map<String, dynamic> toJson() {
    return {
      'street': street,
      'houseNumber': houseNumber,
      'houseNumberAddition': houseNumberAddition,
      'postalCode': postalCode,
      'city': city,
      'province': province,
      'residential': residential,
      'validated': validated
    };
  }

  static List<CheckedAddress> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<CheckedAddress>()
        : json.map((value) => new CheckedAddress.fromJson(value)).toList();
  }

  static Map<String, CheckedAddress> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CheckedAddress>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new CheckedAddress.fromJson(value));
    }
    return map;
  }
}
