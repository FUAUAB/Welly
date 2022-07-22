part of swagger.api;

class Country {
  /* Country ID in ERP, as retrievable from <a href=\"?deepLinking=true#/Country/GetAllCountries\">/api/Country</a> */
  int number = null;

/* Country name */
  String name = null;

/* ISO identification for country */
  String isO3166 = null;

  Country();

  @override
  String toString() {
    return 'Country[number=$number, name=$name, isO3166=$isO3166, ]';
  }

  Country.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    number = json['number'];
    name = json['name'];
    isO3166 = json['isO3166'];
  }

  Map<String, dynamic> toJson() {
    return {'number': number, 'name': name, 'isO3166': isO3166};
  }

  static List<Country> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<Country>()
        : json.map((value) => new Country.fromJson(value)).toList();
  }

  static Map<String, Country> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Country>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new Country.fromJson(value));
    }
    return map;
  }
}
