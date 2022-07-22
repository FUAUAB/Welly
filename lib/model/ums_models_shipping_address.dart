part of swagger.api;

class UmsModelsShippingAddress {
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

  UmsModelsShippingAddress();

  @override
  String toString() {
    return 'UmsModelsShippingAddress[id=$id, addressLine=$addressLine, zipCode=$zipCode, city=$city, country=$country, isDefault=$isDefault, ]';
  }

  UmsModelsShippingAddress.fromJson(Map<String, dynamic> json) {
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

  static List<UmsModelsShippingAddress> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<UmsModelsShippingAddress>()
        : json
            .map((value) => new UmsModelsShippingAddress.fromJson(value))
            .toList();
  }

  static Map<String, UmsModelsShippingAddress> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UmsModelsShippingAddress>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new UmsModelsShippingAddress.fromJson(value));
    }
    return map;
  }
}
