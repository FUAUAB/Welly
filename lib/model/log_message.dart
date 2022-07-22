part of swagger.api;

class LogMessage {
  String errorMessage = null;

  int errorType = null;
  //enum errorTypeEnum {  FileErrors,  MySQLUpdate,  ProgramErrors,  WebshopUpdate,  MailErrors,  ServerErrors,  Debug,  UnhandledException,  SendMail,  Wms,  };

  String extendedMessage = null;

  int priority = null;
  //enum priorityEnum {  Unknown,  Low,  Medium,  High,  };
  LogMessage();

  @override
  String toString() {
    return 'LogMessage[errorMessage=$errorMessage, errorType=$errorType, extendedMessage=$extendedMessage, priority=$priority, ]';
  }

  LogMessage.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    errorMessage = json['errorMessage'];
    errorType = json['errorType'];
    extendedMessage = json['extendedMessage'];
    priority = json['priority'];
  }

  Map<String, dynamic> toJson() {
    return {
      'errorMessage': errorMessage,
      'errorType': errorType,
      'extendedMessage': extendedMessage,
      'priority': priority
    };
  }

  static List<LogMessage> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<LogMessage>()
        : json.map((value) => new LogMessage.fromJson(value)).toList();
  }

  static Map<String, LogMessage> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, LogMessage>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new LogMessage.fromJson(value));
    }
    return map;
  }
}
