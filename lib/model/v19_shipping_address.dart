part of swagger.api;

class V19ShippingAddress {
  /* Customer ID, as retrievable from <a href=\"?deepLinking=true#/Customer/GetAllCustomers\">/api/Customer</a> */
  int customerId = null;

/* Shipping address ID, as retrievable from <a href=\"?deepLinking=true#/Shipping/Get\">/api/Shipping</a> */
  int id = null;

/* Shipping address name */
  String name = null;

/* Shipping address extended name */
  String secondName = null;

/* Address lines for shipping address */
  V19Address address = null;

/* Global Location Number of shipping address */
  String gln = null;

/* Contact information for shipping address */
  ContactInformation contactInformation = null;

/* Status of shipping address */
  V12ShippingAddressStatus shippingStatus = null;

/* Route identification */
  String route = null;

/* Shipping method ID, as retrievable from <a href=\"?deepLinking=true#/Shipping/Methods\">/api/Shipping</a> */
  int shippingMethodId = null;

/* Rayon ID for shipping address, as retrievable from <a href=\"?deepLinking=true#/Rayon/Get\">/api/Customer</a> */
  int rayonId = null;

/* Shipping address is default address */
  bool isDefault = null;

  V19ShippingAddress();

  @override
  String toString() {
    return 'V19ShippingAddress[customerId=$customerId, id=$id, name=$name, secondName=$secondName, address=$address, gln=$gln, contactInformation=$contactInformation, shippingStatus=$shippingStatus, route=$route, shippingMethodId=$shippingMethodId, rayonId=$rayonId, isDefault=$isDefault, ]';
  }

  V19ShippingAddress.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    customerId = json['customerId'];
    id = json['id'];
    name = json['name'];
    secondName = json['secondName'];
    address = new V19Address.fromJson(json['address']);
    gln = json['gln'];
    contactInformation =
        new ContactInformation.fromJson(json['contactInformation']);
    shippingStatus =
        new V12ShippingAddressStatus.fromJson(json['shippingStatus']);
    route = json['route'];
    shippingMethodId = json['shippingMethodId'];
    rayonId = json['rayonId'];
    isDefault = json['isDefault'];
  }

  Map<String, dynamic> toJson() {
    return {
      'customerId': customerId,
      'id': id,
      'name': name,
      'secondName': secondName,
      'address': address,
      'gln': gln,
      'contactInformation': contactInformation,
      'shippingStatus': shippingStatus,
      'route': route,
      'shippingMethodId': shippingMethodId,
      'rayonId': rayonId,
      'isDefault': isDefault
    };
  }

  static List<V19ShippingAddress> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<V19ShippingAddress>()
        : json.map((value) => new V19ShippingAddress.fromJson(value)).toList();
  }

  static Map<String, V19ShippingAddress> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, V19ShippingAddress>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new V19ShippingAddress.fromJson(value));
    }
    return map;
  }
}
