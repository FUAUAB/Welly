part of swagger.api;

class PriceInformation {
  /* Sales price for product */
  double salesPrice = null;

/* Gross purchase price for product */
  double purchasePrice = null;

/* Special / promotional price */
  double specialPrice = null;

/* Starting date when special price is applicable */
  DateTime specialPriceStartDateTimeUtc = null;

/* End date after which special price is no longer applicable */
  DateTime specialPriceEndDateTimeUtc = null;

/* VAT category Id for product */
  int taxCategoryId = null;

  PriceInformation();

  @override
  String toString() {
    return 'PriceInformation[salesPrice=$salesPrice, purchasePrice=$purchasePrice, specialPrice=$specialPrice, specialPriceStartDateTimeUtc=$specialPriceStartDateTimeUtc, specialPriceEndDateTimeUtc=$specialPriceEndDateTimeUtc, taxCategoryId=$taxCategoryId, ]';
  }

  PriceInformation.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    salesPrice =
        json['salesPrice'] == null ? null : json['salesPrice'].toDouble();
    purchasePrice =
        json['purchasePrice'] == null ? null : json['purchasePrice'].toDouble();
    specialPrice =
        json['specialPrice'] == null ? null : json['specialPrice'].toDouble();
    specialPriceStartDateTimeUtc = json['specialPriceStartDateTimeUtc'] == null
        ? null
        : DateTime.parse(json['specialPriceStartDateTimeUtc']);
    specialPriceEndDateTimeUtc = json['specialPriceEndDateTimeUtc'] == null
        ? null
        : DateTime.parse(json['specialPriceEndDateTimeUtc']);
    taxCategoryId = json['taxCategoryId'];
  }

  Map<String, dynamic> toJson() {
    return {
      'salesPrice': salesPrice,
      'purchasePrice': purchasePrice,
      'specialPrice': specialPrice,
      'specialPriceStartDateTimeUtc': specialPriceStartDateTimeUtc == null
          ? ''
          : specialPriceStartDateTimeUtc.toIso8601String(),
      'specialPriceEndDateTimeUtc': specialPriceEndDateTimeUtc == null
          ? ''
          : specialPriceEndDateTimeUtc.toIso8601String(),
      'taxCategoryId': taxCategoryId
    };
  }

  static List<PriceInformation> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<PriceInformation>()
        : json.map((value) => new PriceInformation.fromJson(value)).toList();
  }

  static Map<String, PriceInformation> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PriceInformation>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new PriceInformation.fromJson(value));
    }
    return map;
  }
}
