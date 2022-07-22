part of swagger.api;

class UmsModelsProjectV17 {
  /* Project ID, as retrievable from <a href=\"?deepLinking=true#/Project/Get\"></a> */
  String id = null;

/* Project name */
  String name = null;

/* List of shippingaddresses for project */
  UmsModelsProjectShippingAddress address = null;

/* Project status Id, as retrievable from  <a href=\"?deepLinking=true&amp;urls.primaryName=v1.3#/Shipping/ShippingAddressStatus\">/api/Shipping</a> */
  int status = null;

  UmsModelsProjectV17();

  @override
  String toString() {
    return 'UmsModelsProjectV17[id=$id, name=$name, address=$address, status=$status, ]';
  }

  UmsModelsProjectV17.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    name = json['name'];
    address = new UmsModelsProjectShippingAddress.fromJson(json['address']);
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'name': name, 'address': address, 'status': status};
  }

  static List<UmsModelsProjectV17> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<UmsModelsProjectV17>()
        : json.map((value) => new UmsModelsProjectV17.fromJson(value)).toList();
  }

  static Map<String, UmsModelsProjectV17> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UmsModelsProjectV17>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new UmsModelsProjectV17.fromJson(value));
    }
    return map;
  }
}
