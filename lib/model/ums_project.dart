part of swagger.api;

class UmsProject {
  /* Project ID, as retrievable from <a href=\"?deepLinking=true#/Project/Get\"></a> */
  String id = null;

/* Project name */
  String name = null;

/* List of shippingaddresses for project */
  List<UmsModelsShippingAddress> address = [];

/* Project status Id, as retrievable from  <a href=\"?deepLinking=true&amp;urls.primaryName=v1.3#/Shipping/ShippingAddressStatus\">/api/Shipping</a> */
  int status = null;

  UmsProject();

  @override
  String toString() {
    return 'UmsProject[id=$id, name=$name, address=$address, status=$status, ]';
  }

  UmsProject.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    name = json['name'];
    address = UmsModelsShippingAddress.listFromJson(json['address']);
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'name': name, 'address': address, 'status': status};
  }

  static List<UmsProject> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<UmsProject>()
        : json.map((value) => new UmsProject.fromJson(value)).toList();
  }

  static Map<String, UmsProject> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UmsProject>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new UmsProject.fromJson(value));
    }
    return map;
  }
}
