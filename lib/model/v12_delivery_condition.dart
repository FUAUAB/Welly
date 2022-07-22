part of swagger.api;

class V12DeliveryCondition {
  /* Delivery condition ID, as retrievable from <a href=\"?deepLinking=true&amp;urls.primaryName=v1.2#/Delivery/DeliveryCondition\">/api/Delivery</a> */
  int id = null;

/* Name of delivery condition */
  String description = null;

/* Production type of delivery: NoProduction = 0, ExternalProductionIncludingComponents = 4, InternalProduction = 6, InternalProductionWarehouseReceipt = 7, ExternalProduction = 8, ExternalProductionWarehouseReceipt = 9 */
  int productionType = null;
  //enum productionTypeEnum {  GeenProductie,  ExterneProductieMetComponenten,  InterneProductie,  InterneProductieMagazijnbon,  ExterneProductie,  ExterneProductieMagazijnbon,  };
/* ID of production branch, as retrievable from <a href=\"?deepLinking=true#/Branch/Get\">/api/Branch</a> */
  int productionBranche = null;

/* ID of receiving branch, as retrievable from <a href=\"?deepLinking=true#/Branch/Get\">/api/Branch</a> */
  int receivingBranche = null;

/* ID of production warehouse */
  int productionWarehouse = null;

/* ID of receiving warehouse */
  int receivingWarehouse = null;

/* To repack Ferney */
  bool repackingFerney = null;

  V12DeliveryCondition();

  @override
  String toString() {
    return 'V12DeliveryCondition[id=$id, description=$description, productionType=$productionType, productionBranche=$productionBranche, receivingBranche=$receivingBranche, productionWarehouse=$productionWarehouse, receivingWarehouse=$receivingWarehouse, repackingFerney=$repackingFerney, ]';
  }

  V12DeliveryCondition.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    description = json['description'];
    productionType = json['productionType'];
    productionBranche = json['productionBranche'];
    receivingBranche = json['receivingBranche'];
    productionWarehouse = json['productionWarehouse'];
    receivingWarehouse = json['receivingWarehouse'];
    repackingFerney = json['repackingFerney'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'description': description,
      'productionType': productionType,
      'productionBranche': productionBranche,
      'receivingBranche': receivingBranche,
      'productionWarehouse': productionWarehouse,
      'receivingWarehouse': receivingWarehouse,
      'repackingFerney': repackingFerney
    };
  }

  static List<V12DeliveryCondition> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<V12DeliveryCondition>()
        : json
            .map((value) => new V12DeliveryCondition.fromJson(value))
            .toList();
  }

  static Map<String, V12DeliveryCondition> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, V12DeliveryCondition>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new V12DeliveryCondition.fromJson(value));
    }
    return map;
  }
}
