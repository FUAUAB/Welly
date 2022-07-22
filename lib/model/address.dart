part of swagger.api;

class Address {
  /* Street (full details) */
  String street = null;

/* Name of street */
  String streetName = null;

/* House number of address */
  String houseNumber = null;

/* Addition to house number in address */
  String houseNumberAddition = null;

/* Postal Code */
  String postalCode = null;

/* City name */
  String city = null;

/* Country Id as retrievable from <a href=\"?deepLinking=true#/Country/Get\">/api/Country</a> */
  int countryId = null;

  Address();

  @override
  String toString() {
    return 'Address[street=$street, streetName=$streetName, houseNumber=$houseNumber, houseNumberAddition=$houseNumberAddition, postalCode=$postalCode, city=$city, countryId=$countryId, ]';
  }

  Address.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    street = json['street'];
    streetName = json['streetName'];
    houseNumber = json['houseNumber'];
    houseNumberAddition = json['houseNumberAddition'];
    postalCode = json['postalCode'];
    city = json['city'];
    countryId = json['countryId'];
  }

  Map<String, dynamic> toJson() {
    return {
      'street': street,
      'streetName': streetName,
      'houseNumber': houseNumber,
      'houseNumberAddition': houseNumberAddition,
      'postalCode': postalCode,
      'city': city,
      'countryId': countryId
    };
  }

  static List<Address> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<Address>()
        : json.map((value) => new Address.fromJson(value)).toList();
  }

  static Map<String, Address> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Address>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new Address.fromJson(value));
    }
    return map;
  }
}
