part of swagger.api;

class UmsModelsProductSelectionCategoryBudgets {
  int id = null;

  List<UmsModelsCategory> categories = [];

  UmsModelsProductSelectionCategoryBudgets();

  @override
  String toString() {
    return 'UmsModelsProductSelectionCategoryBudgets[id=$id, categories=$categories, ]';
  }

  UmsModelsProductSelectionCategoryBudgets.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    categories = UmsModelsCategory.listFromJson(json['categories']);
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'categories': categories};
  }

  static List<UmsModelsProductSelectionCategoryBudgets> listFromJson(
      List<dynamic> json) {
    return json == null
        ? new List<UmsModelsProductSelectionCategoryBudgets>()
        : json
            .map((value) =>
                new UmsModelsProductSelectionCategoryBudgets.fromJson(value))
            .toList();
  }

  static Map<String, UmsModelsProductSelectionCategoryBudgets> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UmsModelsProductSelectionCategoryBudgets>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] =
          new UmsModelsProductSelectionCategoryBudgets.fromJson(value));
    }
    return map;
  }
}
