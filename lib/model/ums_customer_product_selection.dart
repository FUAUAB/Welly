part of swagger.api;

class UmsCustomerProductSelection {
  /* ID of product selection, as retrievable from <a href=\"?deepLinking=true#/ProductSelection/GetByCustomerV1_6\">/api/ProductSelection</a> */
  int id = null;

/* Name of product selection */
  String name = null;

/* Is product selection the selected default? */
  bool default_ = null;

/* Budget details. */
  List<UmsBudgetDetail> budgetDetails = [];

  UmsCustomerProductSelection();

  @override
  String toString() {
    return 'UmsCustomerProductSelection[id=$id, name=$name, default_=$default_, budgetDetails=$budgetDetails, ]';
  }

  UmsCustomerProductSelection.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    name = json['name'];
    default_ = json['default'];
    budgetDetails = UmsBudgetDetail.listFromJson(json['budgetDetails']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'default': default_,
      'budgetDetails': budgetDetails
    };
  }

  static List<UmsCustomerProductSelection> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<UmsCustomerProductSelection>()
        : json
            .map((value) => new UmsCustomerProductSelection.fromJson(value))
            .toList();
  }

  static Map<String, UmsCustomerProductSelection> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UmsCustomerProductSelection>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new UmsCustomerProductSelection.fromJson(value));
    }
    return map;
  }
}
