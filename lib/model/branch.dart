part of swagger.api;

class Branch {
  int branchId = null;

  String branchName = null;

  List<ProductAvailability> productAvailibility = [];

  Branch();

  @override
  String toString() {
    return 'Branch[branchId=$branchId, branchName=$branchName, productAvailibility=$productAvailibility, ]';
  }

  Branch.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    branchId = json['branchId'];
    branchName = json['branchName'];
    productAvailibility =
        ProductAvailability.listFromJson(json['productAvailibility']);
  }

  Map<String, dynamic> toJson() {
    return {
      'branchId': branchId,
      'branchName': branchName,
      'productAvailibility': productAvailibility
    };
  }

  static List<Branch> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<Branch>()
        : json.map((value) => new Branch.fromJson(value)).toList();
  }

  static Map<String, Branch> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Branch>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new Branch.fromJson(value));
    }
    return map;
  }
}
