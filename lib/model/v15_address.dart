part of swagger.api;

class V15Address {
  /* Street name */
  String street = null;

/* Postal Code */
  String postalCode = null;

/* City name */
  String city = null;

/* Country Id as retrievable from <a href=\"?deepLinking=true#/Country/Get\">/api/Country</a> */
  Country country = null;

  V15Address();

  @override
  String toString() {
    return 'V15Address[street=$street, postalCode=$postalCode, city=$city, country=$country, ]';
  }

  V15Address.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    street = json['street'];
    postalCode = json['postalCode'];
    city = json['city'];
    country = new Country.fromJson(json['country']);
  }

  Map<String, dynamic> toJson() {
    return {
      'street': street,
      'postalCode': postalCode,
      'city': city,
      'country': country
    };
  }

  static List<V15Address> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<V15Address>()
        : json.map((value) => new V15Address.fromJson(value)).toList();
  }

  static Map<String, V15Address> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, V15Address>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new V15Address.fromJson(value));
    }
    return map;
  }
}
