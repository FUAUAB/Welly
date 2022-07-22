part of swagger.api;

class Currency {
  /* Id for Currency as retrievable from <a href=\"?filter=Currency\">/api/Currency</a> */
  int currencyId = null;

/* Currency description */
  String description = null;

/* Short currency description */
  String shortDescription = null;

/* Exchange rate */
  double rate = null;

/* ISO identification for currency */
  String isoCode = null;

/* Symbol for this currency */
  String symbol = null;

  Currency();

  @override
  String toString() {
    return 'Currency[currencyId=$currencyId, description=$description, shortDescription=$shortDescription, rate=$rate, isoCode=$isoCode, symbol=$symbol, ]';
  }

  Currency.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    currencyId = json['currencyId'];
    description = json['description'];
    shortDescription = json['shortDescription'];
    rate = json['rate'] == null ? null : json['rate'].toDouble();
    isoCode = json['isoCode'];
    symbol = json['symbol'];
  }

  Map<String, dynamic> toJson() {
    return {
      'currencyId': currencyId,
      'description': description,
      'shortDescription': shortDescription,
      'rate': rate,
      'isoCode': isoCode,
      'symbol': symbol
    };
  }

  static List<Currency> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<Currency>()
        : json.map((value) => new Currency.fromJson(value)).toList();
  }

  static Map<String, Currency> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Currency>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new Currency.fromJson(value));
    }
    return map;
  }
}
