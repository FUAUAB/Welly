part of swagger.api;

class CostType {
  int id = null;

  String description = null;

  String invoiceDescription = null;

  int purchaseLedger = null;

  int saleLegder = null;

  double amount = null;

  int type;
  //enum typeEnum {  other,  deposit,  disposalFee,  };
  CostType();

  @override
  String toString() {
    return 'CostType[id=$id, description=$description, invoiceDescription=$invoiceDescription, purchaseLedger=$purchaseLedger, saleLegder=$saleLegder, amount=$amount, type=$type, ]';
  }

  CostType.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    description = json['description'];
    invoiceDescription = json['invoiceDescription'];
    purchaseLedger = json['purchaseLedger'];
    saleLegder = json['saleLegder'];
    amount = json['amount'] == null ? null : json['amount'].toDouble();
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'description': description,
      'invoiceDescription': invoiceDescription,
      'purchaseLedger': purchaseLedger,
      'saleLegder': saleLegder,
      'amount': amount,
      'type': type
    };
  }

  static List<CostType> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<CostType>()
        : json.map((value) => new CostType.fromJson(value)).toList();
  }

  static Map<String, CostType> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CostType>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new CostType.fromJson(value));
    }
    return map;
  }
}
