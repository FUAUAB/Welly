part of swagger.api;

class ShippingMethod {
  int id = null;

  int languageId = null;

  String description = null;

  bool deliveryOnMonday = null;

  bool deliveryOnTuesday = null;

  bool deliveryOnWednesday = null;

  bool deliveryOnThursday = null;

  bool deliveryOnFriday = null;

  bool deliveryOnSaturday = null;

  bool deliveryOnSunday = null;

  bool zipcodeRequired = null;

  bool checkZipcode = null;

  bool weightRequired = null;

  String trackAndTraceURL = null;

  ShippingMethod();

  @override
  String toString() {
    return 'ShippingMethod[id=$id, languageId=$languageId, description=$description, deliveryOnMonday=$deliveryOnMonday, deliveryOnTuesday=$deliveryOnTuesday, deliveryOnWednesday=$deliveryOnWednesday, deliveryOnThursday=$deliveryOnThursday, deliveryOnFriday=$deliveryOnFriday, deliveryOnSaturday=$deliveryOnSaturday, deliveryOnSunday=$deliveryOnSunday, zipcodeRequired=$zipcodeRequired, checkZipcode=$checkZipcode, weightRequired=$weightRequired, trackAndTraceURL=$trackAndTraceURL, ]';
  }

  ShippingMethod.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    languageId = json['languageId'];
    description = json['description'];
    deliveryOnMonday = json['deliveryOnMonday'];
    deliveryOnTuesday = json['deliveryOnTuesday'];
    deliveryOnWednesday = json['deliveryOnWednesday'];
    deliveryOnThursday = json['deliveryOnThursday'];
    deliveryOnFriday = json['deliveryOnFriday'];
    deliveryOnSaturday = json['deliveryOnSaturday'];
    deliveryOnSunday = json['deliveryOnSunday'];
    zipcodeRequired = json['zipcodeRequired'];
    checkZipcode = json['checkZipcode'];
    weightRequired = json['weightRequired'];
    trackAndTraceURL = json['trackAndTraceURL'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'languageId': languageId,
      'description': description,
      'deliveryOnMonday': deliveryOnMonday,
      'deliveryOnTuesday': deliveryOnTuesday,
      'deliveryOnWednesday': deliveryOnWednesday,
      'deliveryOnThursday': deliveryOnThursday,
      'deliveryOnFriday': deliveryOnFriday,
      'deliveryOnSaturday': deliveryOnSaturday,
      'deliveryOnSunday': deliveryOnSunday,
      'zipcodeRequired': zipcodeRequired,
      'checkZipcode': checkZipcode,
      'weightRequired': weightRequired,
      'trackAndTraceURL': trackAndTraceURL
    };
  }

  static List<ShippingMethod> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<ShippingMethod>()
        : json.map((value) => new ShippingMethod.fromJson(value)).toList();
  }

  static Map<String, ShippingMethod> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ShippingMethod>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new ShippingMethod.fromJson(value));
    }
    return map;
  }
}
