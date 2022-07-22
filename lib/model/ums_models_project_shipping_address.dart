part of swagger.api;

class UmsModelsProjectShippingAddress {
  /* Shipping Address Id, as retrievable from <a href=\"?deepLinking=true#/Shipping/Get\"></a> */
  int id = null;

/* Shipping Address Street, incl. house number and addition */
  String addressLine = null;

/* Shipping address Zip / Postal Code */
  String zipCode = null;

/* Shipping address City */
  String city = null;

/* Shipping address Country */
  UmsModelsCountry country = null;

/* Is default shipping address */
  bool isDefault = null;

  UmsModelsProjectShippingAddress();

  @override
  String toString() {
    return 'UmsModelsProjectShippingAddress[id=$id, addressLine=$addressLine, zipCode=$zipCode, city=$city, country=$country, isDefault=$isDefault, ]';
  }

  UmsModelsProjectShippingAddress.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    addressLine = json['addressLine'];
    zipCode = json['zipCode'];
    city = json['city'];
    country = new UmsModelsCountry.fromJson(json['country']);
    isDefault = json['isDefault'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'addressLine': addressLine,
      'zipCode': zipCode,
      'city': city,
      'country': country,
      'isDefault': isDefault
    };
  }

  static List<UmsModelsProjectShippingAddress> listFromJson(
      List<dynamic> json) {
    return json == null
        ? new List<UmsModelsProjectShippingAddress>()
        : json
            .map((value) => new UmsModelsProjectShippingAddress.fromJson(value))
            .toList();
  }

  static Map<String, UmsModelsProjectShippingAddress> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UmsModelsProjectShippingAddress>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new UmsModelsProjectShippingAddress.fromJson(value));
    }
    return map;
  }
}
