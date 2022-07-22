part of swagger.api;

class AttachedFile {
  /* Attachment type */
  int type = null;

/* Reference for attached file for unique identification */
  String reference = null;

/* Sequence ID of attached file (in relation to object the file is attached) */
  int sequenceId = null;

/* File name of attached file */
  String name = null;

/* Description for attached file */
  String description = null;

/* Document type of file, as retrievable from <a href=\"?deepLinking=true#/DocumentType/GetAllDocumentTypes\">/api/DocumentType</a> */
  int documentType = null;

  AttachedFile();

  @override
  String toString() {
    return 'AttachedFile[type=$type, reference=$reference, sequenceId=$sequenceId, name=$name, description=$description, documentType=$documentType, ]';
  }

  AttachedFile.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['type'];
    reference = json['reference'];
    sequenceId = json['sequenceId'];
    name = json['name'];
    description = json['description'];
    documentType = json['documentType'];
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'reference': reference,
      'sequenceId': sequenceId,
      'name': name,
      'description': description,
      'documentType': documentType
    };
  }

  static List<AttachedFile> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<AttachedFile>()
        : json.map((value) => new AttachedFile.fromJson(value)).toList();
  }

  static Map<String, AttachedFile> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AttachedFile>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new AttachedFile.fromJson(value));
    }
    return map;
  }
}
