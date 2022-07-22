part of swagger.api;

class V19Address {
  /* Street name */
  String street = "";

/* House number of address */
  String houseNumber = "";

/* House number addition of Address */
  String houseNumberAddition = "";

/* Postal Code */
  String postalCode = "";

/* City name */
  String city = "";

/* Country where company is located. */
  V19Country country;

  V19Address();

  @override
  String toString() {
    return 'V19Address[street=$street, houseNumber=$houseNumber, houseNumberAddition=$houseNumberAddition, postalCode=$postalCode, city=$city, country=$country, ]';
  }

  V19Address.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    street = json['street'];
    houseNumber = json['houseNumber'];
    houseNumberAddition =
        json['houseNumberAddition'] == null ? "" : json['houseNumberAddition'];
    postalCode = json['postalCode'];
    city = json['city'];
    country = new V19Country.fromJson(json['country']);
  }

  Map<String, dynamic> toJson() {
    return {
      'street': street,
      'houseNumber': houseNumber,
      'houseNumberAddition': houseNumberAddition,
      'postalCode': postalCode,
      'city': city,
      'country': country
    };
  }

  static List<V19Address> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<V19Address>()
        : json.map((value) => new V19Address.fromJson(value)).toList();
  }

  static Map<String, V19Address> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, V19Address>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new V19Address.fromJson(value));
    }
    return map;
  }
}
