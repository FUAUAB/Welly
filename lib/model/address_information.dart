part of swagger.api;

class AddressInformation {
  String name = null;

  String secondName = null;

  Address address = null;

  ContactInformation contactInformation = null;

  AddressInformation();

  @override
  String toString() {
    return 'AddressInformation[name=$name, secondName=$secondName, address=$address, contactInformation=$contactInformation, ]';
  }

  AddressInformation.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    secondName = json['secondName'];
    address = new Address.fromJson(json['address']);
    contactInformation =
        new ContactInformation.fromJson(json['contactInformation']);
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'secondName': secondName,
      'address': address,
      'contactInformation': contactInformation
    };
  }

  static List<AddressInformation> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<AddressInformation>()
        : json.map((value) => new AddressInformation.fromJson(value)).toList();
  }

  static Map<String, AddressInformation> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AddressInformation>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new AddressInformation.fromJson(value));
    }
    return map;
  }
}
