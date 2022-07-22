part of swagger.api;

class CustomerBranche {
  int customerId = null;

  int brancheId = null;

  CustomerBranche();

  @override
  String toString() {
    return 'CustomerBranche[customerId=$customerId, brancheId=$brancheId, ]';
  }

  CustomerBranche.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    customerId = json['customerId'];
    brancheId = json['brancheId'];
  }

  Map<String, dynamic> toJson() {
    return {'customerId': customerId, 'brancheId': brancheId};
  }

  static List<CustomerBranche> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<CustomerBranche>()
        : json.map((value) => new CustomerBranche.fromJson(value)).toList();
  }

  static Map<String, CustomerBranche> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CustomerBranche>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new CustomerBranche.fromJson(value));
    }
    return map;
  }
}
