part of swagger.api;

class GeneralLedgerAccount {
  /* General ledger account number, as retrievable from <a href=\"?deepLinking=true#/Ledger/GeneralLedgerAccount\">/api/Ledger</a> */
  int legerAccountNumber = null;

/* Description of general ledger account */
  String description = null;

/* Kind of account: 0 = Normal account, 1 = VAT account, 2 = Manual entries allowed */
  int accountKind = null;

/* Entries on this account should be allocated to cost centres */
  bool splitToCostCentres = null;

/* Allocation to cost centre level 1 is required for this account */
  bool constCentre1Required = null;

/* Allocation to cost centre level 2 is required for this account */
  bool constCentre2Required = null;

/* Allocation to cost centre level 3 is required for this account */
  bool constCentre3Required = null;

/* Allocation to cost centre level 4 is required for this account */
  bool constCentre4Required = null;

/* Allocation to cost centre level 5 is required for this account */
  bool constCentre5Required = null;

  GeneralLedgerAccount();

  @override
  String toString() {
    return 'GeneralLedgerAccount[legerAccountNumber=$legerAccountNumber, description=$description, accountKind=$accountKind, splitToCostCentres=$splitToCostCentres, constCentre1Required=$constCentre1Required, constCentre2Required=$constCentre2Required, constCentre3Required=$constCentre3Required, constCentre4Required=$constCentre4Required, constCentre5Required=$constCentre5Required, ]';
  }

  GeneralLedgerAccount.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    legerAccountNumber = json['legerAccountNumber'];
    description = json['description'];
    accountKind = json['accountKind'];
    splitToCostCentres = json['splitToCostCentres'];
    constCentre1Required = json['constCentre1Required'];
    constCentre2Required = json['constCentre2Required'];
    constCentre3Required = json['constCentre3Required'];
    constCentre4Required = json['constCentre4Required'];
    constCentre5Required = json['constCentre5Required'];
  }

  Map<String, dynamic> toJson() {
    return {
      'legerAccountNumber': legerAccountNumber,
      'description': description,
      'accountKind': accountKind,
      'splitToCostCentres': splitToCostCentres,
      'constCentre1Required': constCentre1Required,
      'constCentre2Required': constCentre2Required,
      'constCentre3Required': constCentre3Required,
      'constCentre4Required': constCentre4Required,
      'constCentre5Required': constCentre5Required
    };
  }

  static List<GeneralLedgerAccount> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<GeneralLedgerAccount>()
        : json
            .map((value) => new GeneralLedgerAccount.fromJson(value))
            .toList();
  }

  static Map<String, GeneralLedgerAccount> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GeneralLedgerAccount>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new GeneralLedgerAccount.fromJson(value));
    }
    return map;
  }
}
