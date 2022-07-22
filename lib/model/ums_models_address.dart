part of swagger.api;

class UmsModelsAddress {
  int id = null;

  String addressLine = null;

  String zipCode = null;

  String city = null;

  UmsModelsCountry country = null;

  UmsModelsAddress();

  @override
  String toString() {
    return 'UmsModelsAddress[id=$id, addressLine=$addressLine, zipCode=$zipCode, city=$city, country=$country, ]';
  }

  UmsModelsAddress.fromJson(Map<String, dynamic> json) {
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

  static List<UmsModelsAddress> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<UmsModelsAddress>()
        : json.map((value) => new UmsModelsAddress.fromJson(value)).toList();
  }

  static Map<String, UmsModelsAddress> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UmsModelsAddress>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new UmsModelsAddress.fromJson(value));
    }
    return map;
  }
}
