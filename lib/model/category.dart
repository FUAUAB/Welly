part of swagger.api;

class Category {
  /* Store ID, as retrievable from <a href=\"?deepLinking=true#/Webshop/Store\">/api/Webshop/Store</a> */
  int storeId = null;

/* Language ID, as retrievable from <a href=\"?deepLinking=true#/Language/Get\">/api/Language</a> */
  int languageId = null;

/* Category ID, as retrievable from <a href=\"?deepLinking=true#/Webshop/Category/Get\">/api/Webshop/Category</a> */
  int categoryId = null;

/* Position of category in category order */
  int position = null;

/* Id of parent category, as retrievable from <a href=\"?deepLinking=true#/Webshop/Category/Get\">/api/Webshop/Category</a> */
  int parentId = null;

/* Name of category */
  String description = null;

/* Comprehensive description of category */
  String longDescription = null;

/* Metakeywords for category */
  List<String> metaKeywords = [];

/* Meta description for category */
  String metaDescription = null;

/* Is category shown on homepage? */
  bool showOnHomepage = null;

/* List of category's children, if applicable */
  List<int> children = [];

/* Id of attribute set for category */
  int attributeSetId = null;

/* Datahash of category */
  String dataHash = null;

/* Product IDs that are indexed in this level */
  List<String> productIds = [];

  Category();

  @override
  String toString() {
    return 'Category[storeId=$storeId, languageId=$languageId, categoryId=$categoryId, position=$position, parentId=$parentId, description=$description, longDescription=$longDescription, metaKeywords=$metaKeywords, metaDescription=$metaDescription, showOnHomepage=$showOnHomepage, children=$children, attributeSetId=$attributeSetId, dataHash=$dataHash, productIds=$productIds, ]';
  }

  Category.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    storeId = json['storeId'];
    languageId = json['languageId'];
    categoryId = json['categoryId'];
    position = json['position'];
    parentId = json['parentId'];
    description = json['description'];
    longDescription = json['longDescription'];
    metaKeywords =
        (json['metaKeywords'] as List).map((item) => item as String).toList();
    metaDescription = json['metaDescription'];
    showOnHomepage = json['showOnHomepage'];
    children = (json['children'] as List).map((item) => item as int).toList();
    attributeSetId = json['attributeSetId'];
    dataHash = json['dataHash'];
    productIds =
        (json['productIds'] as List).map((item) => item as String).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'storeId': storeId,
      'languageId': languageId,
      'categoryId': categoryId,
      'position': position,
      'parentId': parentId,
      'description': description,
      'longDescription': longDescription,
      'metaKeywords': metaKeywords,
      'metaDescription': metaDescription,
      'showOnHomepage': showOnHomepage,
      'children': children,
      'attributeSetId': attributeSetId,
      'dataHash': dataHash,
      'productIds': productIds
    };
  }

  static List<Category> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<Category>()
        : json.map((value) => new Category.fromJson(value)).toList();
  }

  static Map<String, Category> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Category>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new Category.fromJson(value));
    }
    return map;
  }
}
