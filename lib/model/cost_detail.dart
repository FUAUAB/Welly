part of swagger.api;

class CostDetail {
  /* Cost Id, as retrievable from <a href=\"?deepLinking=true#/CostType/GetAllCostTypes\">/api/CostType</a> */
  int costId = null;

  Amount amount = null;

  CostDetail();

  @override
  String toString() {
    return 'CostDetail[costId=$costId, amount=$amount, ]';
  }

  CostDetail.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    costId = json['costId'];
    amount = new Amount.fromJson(json['amount']);
  }

  Map<String, dynamic> toJson() {
    return {'costId': costId, 'amount': amount};
  }

  static List<CostDetail> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<CostDetail>()
        : json.map((value) => new CostDetail.fromJson(value)).toList();
  }

  static Map<String, CostDetail> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CostDetail>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new CostDetail.fromJson(value));
    }
    return map;
  }
}
