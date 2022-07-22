part of swagger.api;

class CustomerRevenue {
  DateTime invoiceDate = null;

  double revenueAmount = null;

  double purchaseAmount = null;

/* Id of article group,  as retrievable from <a href=\"?deepLinking=true#/Product/ArticleGroup\">/api/Product/ArticleGroup</a> */
  int articleGroupId = null;

/* ID of article sub group, as retrievable from <a href=\"?deepLinking=true#Product/ArticleSubGroup\">/api/Product/ArticleSubGroup</a> */
  int articleSubGroupId = null;

/* Project ID, as retrievable from <a href=\"?deepLinking=true#/Project/GetAllProjects\">/api/Project</a> */
  String projectId = null;

  CustomerRevenue();

  @override
  String toString() {
    return 'CustomerRevenue[invoiceDate=$invoiceDate, revenueAmount=$revenueAmount, purchaseAmount=$purchaseAmount, articleGroupId=$articleGroupId, articleSubGroupId=$articleSubGroupId, projectId=$projectId, ]';
  }

  CustomerRevenue.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    invoiceDate = json['invoiceDate'] == null
        ? null
        : DateTime.parse(json['invoiceDate']);
    revenueAmount =
        json['revenueAmount'] == null ? null : json['revenueAmount'].toDouble();
    purchaseAmount = json['purchaseAmount'] == null
        ? null
        : json['purchaseAmount'].toDouble();
    articleGroupId = json['articleGroupId'];
    articleSubGroupId = json['articleSubGroupId'];
    projectId = json['projectId'];
  }

  Map<String, dynamic> toJson() {
    return {
      'invoiceDate': invoiceDate == null ? '' : invoiceDate.toIso8601String(),
      'revenueAmount': revenueAmount,
      'purchaseAmount': purchaseAmount,
      'articleGroupId': articleGroupId,
      'articleSubGroupId': articleSubGroupId,
      'projectId': projectId
    };
  }

  static List<CustomerRevenue> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<CustomerRevenue>()
        : json.map((value) => new CustomerRevenue.fromJson(value)).toList();
  }

  static Map<String, CustomerRevenue> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CustomerRevenue>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new CustomerRevenue.fromJson(value));
    }
    return map;
  }
}
