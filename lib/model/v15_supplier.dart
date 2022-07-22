part of swagger.api;

class V15Supplier {
  int supplierId = null;

  String searchKey = null;

  String name = null;

  String secondName = null;

  V15Address address = null;

  Currency currency = null;

  String vatId = null;

  V12PaymentCondition paymentCondition = null;

  String bic = null;

  String iban = null;

  bool paymentAfterInternalInvoice = null;

  int taxCategoryId = null;

  String contactPerson = null;

  V12ContactInformation contactInformation = null;

  Employee purchaser = null;

  String gln = null;

  String chamberofCommerceId = null;

  V15Supplier();

  @override
  String toString() {
    return 'V15Supplier[supplierId=$supplierId, searchKey=$searchKey, name=$name, secondName=$secondName, address=$address, currency=$currency, vatId=$vatId, paymentCondition=$paymentCondition, bic=$bic, iban=$iban, paymentAfterInternalInvoice=$paymentAfterInternalInvoice, taxCategoryId=$taxCategoryId, contactPerson=$contactPerson, contactInformation=$contactInformation, purchaser=$purchaser, gln=$gln, chamberofCommerceId=$chamberofCommerceId, ]';
  }

  V15Supplier.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    supplierId = json['supplierId'];
    searchKey = json['searchKey'];
    name = json['name'];
    secondName = json['secondName'];
    address = new V15Address.fromJson(json['address']);
    currency = new Currency.fromJson(json['currency']);
    vatId = json['vatId'];
    paymentCondition =
        new V12PaymentCondition.fromJson(json['paymentCondition']);
    bic = json['bic'];
    iban = json['iban'];
    paymentAfterInternalInvoice = json['paymentAfterInternalInvoice'];
    taxCategoryId = json['taxCategoryId'];
    contactPerson = json['contactPerson'];
    contactInformation =
        new V12ContactInformation.fromJson(json['contactInformation']);
    purchaser = new Employee.fromJson(json['purchaser']);
    gln = json['gln'];
    chamberofCommerceId = json['chamberofCommerceId'];
  }

  Map<String, dynamic> toJson() {
    return {
      'supplierId': supplierId,
      'searchKey': searchKey,
      'name': name,
      'secondName': secondName,
      'address': address,
      'currency': currency,
      'vatId': vatId,
      'paymentCondition': paymentCondition,
      'bic': bic,
      'iban': iban,
      'paymentAfterInternalInvoice': paymentAfterInternalInvoice,
      'taxCategoryId': taxCategoryId,
      'contactPerson': contactPerson,
      'contactInformation': contactInformation,
      'purchaser': purchaser,
      'gln': gln,
      'chamberofCommerceId': chamberofCommerceId
    };
  }

  static List<V15Supplier> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<V15Supplier>()
        : json.map((value) => new V15Supplier.fromJson(value)).toList();
  }

  static Map<String, V15Supplier> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, V15Supplier>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new V15Supplier.fromJson(value));
    }
    return map;
  }
}
