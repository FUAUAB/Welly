part of swagger.api;

class Customer {
  int customerId = null;

  String searchKey = null;

  String name = null;

  String secondName = null;

  Address address = null;

  PostOfficeBox postOfficeBox = null;

  ContactInformation contactInformation = null;

  String gln = null;

/* currencyCode as received from <a href=\"?filter=Currency\">/api/Currency</a> */
  int currencyCode = null;

  int debtorMonitoringCode = null;
  //enum debtorMonitoringCodeEnum {  none,  blocked,  debtCollector,  };

  String debtorMonitoringText = null;

  Customer();

  @override
  String toString() {
    return 'Customer[customerId=$customerId, searchKey=$searchKey, name=$name, secondName=$secondName, address=$address, postOfficeBox=$postOfficeBox, contactInformation=$contactInformation, gln=$gln, currencyCode=$currencyCode, debtorMonitoringCode=$debtorMonitoringCode, debtorMonitoringText=$debtorMonitoringText, ]';
  }

  Customer.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    customerId = json['customerId'];
    searchKey = json['searchKey'];
    name = json['name'];
    secondName = json['secondName'];
    address = new Address.fromJson(json['address']);
    postOfficeBox = new PostOfficeBox.fromJson(json['postOfficeBox']);
    contactInformation =
        new ContactInformation.fromJson(json['contactInformation']);
    gln = json['gln'];
    currencyCode = json['currencyCode'];
    debtorMonitoringCode = json['debtorMonitoringCode'];
    debtorMonitoringText = json['debtorMonitoringText'];
  }

  Map<String, dynamic> toJson() {
    return {
      'customerId': customerId,
      'searchKey': searchKey,
      'name': name,
      'secondName': secondName,
      'address': address,
      'postOfficeBox': postOfficeBox,
      'contactInformation': contactInformation,
      'gln': gln,
      'currencyCode': currencyCode,
      'debtorMonitoringCode': debtorMonitoringCode,
      'debtorMonitoringText': debtorMonitoringText
    };
  }

  static List<Customer> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<Customer>()
        : json.map((value) => new Customer.fromJson(value)).toList();
  }

  static Map<String, Customer> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Customer>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new Customer.fromJson(value));
    }
    return map;
  }
}
