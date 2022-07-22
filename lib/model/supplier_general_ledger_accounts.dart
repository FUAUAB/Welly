part of swagger.api;

class SupplierGeneralLedgerAccounts {
  int supplierId = null;

  List<GeneralLedgerAccount> generalLedgerAccounts = [];

  SupplierGeneralLedgerAccounts();

  @override
  String toString() {
    return 'SupplierGeneralLedgerAccounts[supplierId=$supplierId, generalLedgerAccounts=$generalLedgerAccounts, ]';
  }

  SupplierGeneralLedgerAccounts.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    supplierId = json['supplierId'];
    generalLedgerAccounts =
        GeneralLedgerAccount.listFromJson(json['generalLedgerAccounts']);
  }

  Map<String, dynamic> toJson() {
    return {
      'supplierId': supplierId,
      'generalLedgerAccounts': generalLedgerAccounts
    };
  }

  static List<SupplierGeneralLedgerAccounts> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<SupplierGeneralLedgerAccounts>()
        : json
            .map((value) => new SupplierGeneralLedgerAccounts.fromJson(value))
            .toList();
  }

  static Map<String, SupplierGeneralLedgerAccounts> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, SupplierGeneralLedgerAccounts>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new SupplierGeneralLedgerAccounts.fromJson(value));
    }
    return map;
  }
}
