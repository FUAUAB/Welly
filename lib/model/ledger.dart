part of swagger.api;

class Ledger {
  int ledgerNumber = null;

  String description = null;

  Ledger();

  @override
  String toString() {
    return 'Ledger[ledgerNumber=$ledgerNumber, description=$description, ]';
  }

  Ledger.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    ledgerNumber = json['ledgerNumber'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    return {'ledgerNumber': ledgerNumber, 'description': description};
  }

  static List<Ledger> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<Ledger>()
        : json.map((value) => new Ledger.fromJson(value)).toList();
  }

  static Map<String, Ledger> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Ledger>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new Ledger.fromJson(value));
    }
    return map;
  }
}
