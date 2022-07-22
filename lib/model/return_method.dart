part of swagger.api;

class ReturnMethod {
  int id = null;

  int erpId = null;

  bool isDefault = null;

  String description = null;

  int deliveryCode = null;

  ReturnMethod();

  @override
  String toString() {
    return 'ReturnMethod[id=$id, erpId=$erpId, isDefault=$isDefault, description=$description, deliveryCode=$deliveryCode, ]';
  }

  ReturnMethod.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    erpId = json['erpId'];
    isDefault = json['isDefault'];
    description = json['description'];
    deliveryCode = json['deliveryCode'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'erpId': erpId,
      'isDefault': isDefault,
      'description': description,
      'deliveryCode': deliveryCode
    };
  }

  static List<ReturnMethod> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<ReturnMethod>()
        : json.map((value) => new ReturnMethod.fromJson(value)).toList();
  }

  static Map<String, ReturnMethod> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ReturnMethod>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new ReturnMethod.fromJson(value));
    }
    return map;
  }
}
