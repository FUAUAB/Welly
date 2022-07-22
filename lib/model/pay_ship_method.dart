part of swagger.api;

class PayShipMethod {
  /* Method Id, for shipping as retrievable from <a href=\"?deepLinking=true#/Shipping/Methods/Get\">/api/Shipping</a> */
  int method = null;

/* Amount charged */
  double cost = null;

/* Description of payment / shipping method */
  String description = null;

  PayShipMethod();

  @override
  String toString() {
    return 'PayShipMethod[method=$method, cost=$cost, description=$description, ]';
  }

  PayShipMethod.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    method = json['method'];
    cost = json['cost'] == null ? null : json['cost'].toDouble();
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    return {'method': method, 'cost': cost, 'description': description};
  }

  static List<PayShipMethod> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<PayShipMethod>()
        : json.map((value) => new PayShipMethod.fromJson(value)).toList();
  }

  static Map<String, PayShipMethod> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PayShipMethod>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new PayShipMethod.fromJson(value));
    }
    return map;
  }
}
