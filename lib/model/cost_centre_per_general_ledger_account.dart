part of swagger.api;

class CostCentrePerGeneralLedgerAccount {
  GeneralLedgerAccount generalLedgerAccount = null;

  List<CostCentreLevel> costCentreLevels = [];

  CostCentrePerGeneralLedgerAccount();

  @override
  String toString() {
    return 'CostCentrePerGeneralLedgerAccount[generalLedgerAccount=$generalLedgerAccount, costCentreLevels=$costCentreLevels, ]';
  }

  CostCentrePerGeneralLedgerAccount.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    generalLedgerAccount =
        new GeneralLedgerAccount.fromJson(json['generalLedgerAccount']);
    costCentreLevels = CostCentreLevel.listFromJson(json['costCentreLevels']);
  }

  Map<String, dynamic> toJson() {
    return {
      'generalLedgerAccount': generalLedgerAccount,
      'costCentreLevels': costCentreLevels
    };
  }

  static List<CostCentrePerGeneralLedgerAccount> listFromJson(
      List<dynamic> json) {
    return json == null
        ? new List<CostCentrePerGeneralLedgerAccount>()
        : json
            .map((value) =>
                new CostCentrePerGeneralLedgerAccount.fromJson(value))
            .toList();
  }

  static Map<String, CostCentrePerGeneralLedgerAccount> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CostCentrePerGeneralLedgerAccount>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new CostCentrePerGeneralLedgerAccount.fromJson(value));
    }
    return map;
  }
}
