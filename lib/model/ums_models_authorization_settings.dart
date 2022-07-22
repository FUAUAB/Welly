part of swagger.api;

class UmsModelsAuthorizationSettings {
  bool authorizableByEveryone = null;

  bool canAuthorize = null;

  int daysBeforeAuthorizationReminder = null;

  bool sendCCToNextAuthorizer = null;

  List<UmsModelsAuthorizer> authorizers = [];

  UmsModelsAuthorizationSettings();

  @override
  String toString() {
    return 'UmsModelsAuthorizationSettings[authorizableByEveryone=$authorizableByEveryone, canAuthorize=$canAuthorize, daysBeforeAuthorizationReminder=$daysBeforeAuthorizationReminder, sendCCToNextAuthorizer=$sendCCToNextAuthorizer, authorizers=$authorizers, ]';
  }

  UmsModelsAuthorizationSettings.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    authorizableByEveryone = json['authorizableByEveryone'];
    canAuthorize = json['canAuthorize'];
    daysBeforeAuthorizationReminder = json['daysBeforeAuthorizationReminder'];
    sendCCToNextAuthorizer = json['sendCCToNextAuthorizer'];
    authorizers = UmsModelsAuthorizer.listFromJson(json['authorizers']);
  }

  Map<String, dynamic> toJson() {
    return {
      'authorizableByEveryone': authorizableByEveryone,
      'canAuthorize': canAuthorize,
      'daysBeforeAuthorizationReminder': daysBeforeAuthorizationReminder,
      'sendCCToNextAuthorizer': sendCCToNextAuthorizer,
      'authorizers': authorizers
    };
  }

  static List<UmsModelsAuthorizationSettings> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<UmsModelsAuthorizationSettings>()
        : json
            .map((value) => new UmsModelsAuthorizationSettings.fromJson(value))
            .toList();
  }

  static Map<String, UmsModelsAuthorizationSettings> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UmsModelsAuthorizationSettings>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new UmsModelsAuthorizationSettings.fromJson(value));
    }
    return map;
  }
}
