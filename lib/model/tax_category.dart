part of swagger.api;

class TaxCategory {
  /* Tax category id */
  int taxCategoryId = null;

/* Tax category description */
  String description = null;

/* Tax category percentage */
  double percentage = null;

  TaxCategory();

  @override
  String toString() {
    return 'TaxCategory[taxCategoryId=$taxCategoryId, description=$description, percentage=$percentage, ]';
  }

  TaxCategory.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    taxCategoryId = json['taxCategoryId'];
    description = json['description'];
    percentage =
        json['percentage'] == null ? null : json['percentage'].toDouble();
  }

  Map<String, dynamic> toJson() {
    return {
      'taxCategoryId': taxCategoryId,
      'description': description,
      'percentage': percentage
    };
  }

  static List<TaxCategory> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<TaxCategory>()
        : json.map((value) => new TaxCategory.fromJson(value)).toList();
  }

  static Map<String, TaxCategory> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TaxCategory>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new TaxCategory.fromJson(value));
    }
    return map;
  }
}
