part of swagger.api;

class V12CustomerGroup {
  /* Customer group Id, as retrievable from <a href=\"?deepLinking=true&amp;urls.primaryName=v1.2#/Customer/CustomerGroup\">/api/Customer</a> */
  int id = null;

/* Customer group name */
  String description = null;

/* Customer group is charged with a surcharge */
  bool calculateSurcharge = null;

/* Surchage in percent */
  double surchagePercentage = null;

/* Fixed annual price is used for customer group */
  bool fixedAnnualPrice = null;

/* Customer group is charged with a exchange rate surcharge */
  bool calculateExchangeRateSurcharge = null;

/* Margin alert, if false, customers will not appear on list of margin alerts */
  bool marginAlert = null;

/* Ledger account receivables for customer group */
  int ledgerAccount = null;

  V12CustomerGroup();

  @override
  String toString() {
    return 'V12CustomerGroup[id=$id, description=$description, calculateSurcharge=$calculateSurcharge, surchagePercentage=$surchagePercentage, fixedAnnualPrice=$fixedAnnualPrice, calculateExchangeRateSurcharge=$calculateExchangeRateSurcharge, marginAlert=$marginAlert, ledgerAccount=$ledgerAccount, ]';
  }

  V12CustomerGroup.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    description = json['description'];
    calculateSurcharge = json['calculateSurcharge'];
    surchagePercentage = json['surchagePercentage'] == null
        ? null
        : json['surchagePercentage'].toDouble();
    fixedAnnualPrice = json['fixedAnnualPrice'];
    calculateExchangeRateSurcharge = json['calculateExchangeRateSurcharge'];
    marginAlert = json['marginAlert'];
    ledgerAccount = json['ledgerAccount'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'description': description,
      'calculateSurcharge': calculateSurcharge,
      'surchagePercentage': surchagePercentage,
      'fixedAnnualPrice': fixedAnnualPrice,
      'calculateExchangeRateSurcharge': calculateExchangeRateSurcharge,
      'marginAlert': marginAlert,
      'ledgerAccount': ledgerAccount
    };
  }

  static List<V12CustomerGroup> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<V12CustomerGroup>()
        : json.map((value) => new V12CustomerGroup.fromJson(value)).toList();
  }

  static Map<String, V12CustomerGroup> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, V12CustomerGroup>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new V12CustomerGroup.fromJson(value));
    }
    return map;
  }
}
