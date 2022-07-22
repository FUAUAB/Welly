part of swagger.api;

class UmsModelsCategory {
  int id = null;

  String name = null;

  bool canEdit = null;

  bool hasLimit = null;

  double limit = null;

  double used = null;

/* Type of budget (0 = Amount (in currency), 1 = Quantity) */
  int budgetType = null;
  //enum budgetTypeEnum {  Amount,  Quantity,  };

  List<UmsModelsCategory> subCategories = [];

  UmsModelsCategory();

  @override
  String toString() {
    return 'UmsModelsCategory[id=$id, name=$name, canEdit=$canEdit, hasLimit=$hasLimit, limit=$limit, used=$used, budgetType=$budgetType, subCategories=$subCategories, ]';
  }

  UmsModelsCategory.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    name = json['name'];
    canEdit = json['canEdit'];
    hasLimit = json['hasLimit'];
    limit = json['limit'] == null ? null : json['limit'].toDouble();
    used = json['used'] == null ? null : json['used'].toDouble();
    budgetType = json['budgetType'];
    subCategories = UmsModelsCategory.listFromJson(json['subCategories']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'canEdit': canEdit,
      'hasLimit': hasLimit,
      'limit': limit,
      'used': used,
      'budgetType': budgetType,
      'subCategories': subCategories
    };
  }

  static List<UmsModelsCategory> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<UmsModelsCategory>()
        : json.map((value) => new UmsModelsCategory.fromJson(value)).toList();
  }

  static Map<String, UmsModelsCategory> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UmsModelsCategory>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new UmsModelsCategory.fromJson(value));
    }
    return map;
  }
}
