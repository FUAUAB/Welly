part of swagger.api;

class CreditRestrictionSurcharge {
  /* Credit restriction surcharge percentage */
  double percentage = null;

/* Credit restriction term in days */
  int term = null;

/* Credit restriction surcharge amount */
  double amount = null;

  CreditRestrictionSurcharge();

  @override
  String toString() {
    return 'CreditRestrictionSurcharge[percentage=$percentage, term=$term, amount=$amount, ]';
  }

  CreditRestrictionSurcharge.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    percentage =
        json['percentage'] == null ? null : json['percentage'].toDouble();
    term = json['term'];
    amount = json['amount'] == null ? null : json['amount'].toDouble();
  }

  Map<String, dynamic> toJson() {
    return {'percentage': percentage, 'term': term, 'amount': amount};
  }

  static List<CreditRestrictionSurcharge> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<CreditRestrictionSurcharge>()
        : json
            .map((value) => new CreditRestrictionSurcharge.fromJson(value))
            .toList();
  }

  static Map<String, CreditRestrictionSurcharge> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreditRestrictionSurcharge>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new CreditRestrictionSurcharge.fromJson(value));
    }
    return map;
  }
}
