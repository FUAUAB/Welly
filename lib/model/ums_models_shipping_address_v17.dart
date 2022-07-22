part of swagger.api;

class UmsModelsShippingAddressV17 {
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

  UmsModelsShippingAddressV17();

  @override
  String toString() {
    return 'UmsModelsShippingAddressV17[id=$id, addressLine=$addressLine, zipCode=$zipCode, city=$city, country=$country, ]';
  }

  UmsModelsShippingAddressV17.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    addressLine = json['addressLine'];
    zipCode = json['zipCode'];
    city = json['city'];
    country = new UmsModelsCountry.fromJson(json['country']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'addressLine': addressLine,
      'zipCode': zipCode,
      'city': city,
      'country': country
    };
  }

  static List<UmsModelsShippingAddressV17> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<UmsModelsShippingAddressV17>()
        : json
            .map((value) => new UmsModelsShippingAddressV17.fromJson(value))
            .toList();
  }

  static Map<String, UmsModelsShippingAddressV17> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UmsModelsShippingAddressV17>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new UmsModelsShippingAddressV17.fromJson(value));
    }
    return map;
  }
}
