part of swagger.api;

class V12ShippingAddressStatus {
  /* Id of Shipping address status, as retrievable from <a href=\"?deepLinking=true&amp;urls.primaryName=v1.2#/Shipping/ShippingAddressStatus/Get\">/api/Shipping/ShippingAddressStatus</a> */
  int id = null;

/* Description of shipping address status */
  String description = null;

/* Shipping address to be visited */
  bool toVisit = null;

  V12ShippingAddressStatus();

  @override
  String toString() {
    return 'V12ShippingAddressStatus[id=$id, description=$description, toVisit=$toVisit, ]';
  }

  V12ShippingAddressStatus.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    description = json['description'];
    toVisit = json['toVisit'];
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'description': description, 'toVisit': toVisit};
  }

  static List<V12ShippingAddressStatus> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<V12ShippingAddressStatus>()
        : json
            .map((value) => new V12ShippingAddressStatus.fromJson(value))
            .toList();
  }

  static Map<String, V12ShippingAddressStatus> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, V12ShippingAddressStatus>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new V12ShippingAddressStatus.fromJson(value));
    }
    return map;
  }
}
