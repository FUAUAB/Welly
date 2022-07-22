part of swagger.api;

class WmsStatusInformation {
  String interalTransportCode = null;

  int logisticOccupancyCode = null;

  WmsStatusInformation();

  @override
  String toString() {
    return 'WmsStatusInformation[interalTransportCode=$interalTransportCode, logisticOccupancyCode=$logisticOccupancyCode, ]';
  }

  WmsStatusInformation.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    interalTransportCode = json['interalTransportCode'];
    logisticOccupancyCode = json['logisticOccupancyCode'];
  }

  Map<String, dynamic> toJson() {
    return {
      'interalTransportCode': interalTransportCode,
      'logisticOccupancyCode': logisticOccupancyCode
    };
  }

  static List<WmsStatusInformation> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<WmsStatusInformation>()
        : json
            .map((value) => new WmsStatusInformation.fromJson(value))
            .toList();
  }

  static Map<String, WmsStatusInformation> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WmsStatusInformation>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new WmsStatusInformation.fromJson(value));
    }
    return map;
  }
}
