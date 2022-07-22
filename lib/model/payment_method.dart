part of swagger.api;

class PaymentMethod {
  /* Payment Method Id, as retrievable from <a href=\"?deepLinking=true#/Customer/PaymentMethod\"> Customer/PaymentMethod</a> */
  int id = null;

  String description = null;

  bool isDefault = null;

  PaymentMethod();

  @override
  String toString() {
    return 'PaymentMethod[id=$id, description=$description, isDefault=$isDefault, ]';
  }

  PaymentMethod.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    description = json['description'];
    isDefault = json['isDefault'];
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'description': description, 'isDefault': isDefault};
  }

  static List<PaymentMethod> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<PaymentMethod>()
        : json.map((value) => new PaymentMethod.fromJson(value)).toList();
  }

  static Map<String, PaymentMethod> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PaymentMethod>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new PaymentMethod.fromJson(value));
    }
    return map;
  }
}
