part of swagger.api;

class Language {
  int number = null;

  String name = null;

  String iso = null;

  Language();

  @override
  String toString() {
    return 'Language[number=$number, name=$name, iso=$iso, ]';
  }

  Language.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    number = json['number'];
    name = json['name'];
    iso = json['iso'];
  }

  Map<String, dynamic> toJson() {
    return {'number': number, 'name': name, 'iso': iso};
  }

  static List<Language> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<Language>()
        : json.map((value) => new Language.fromJson(value)).toList();
  }

  static Map<String, Language> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Language>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new Language.fromJson(value));
    }
    return map;
  }
}
