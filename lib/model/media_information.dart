part of swagger.api;

class MediaInformation {
  /* ID of Product for this media information, as retrievable from <a href=\"?deepLinking=true#/Product/ShopProductInformation\">/api/Product</a> */
  String productId = null;

/* Language Id where media will be attributed to, as retrievable from <a href=\"?deepLinking=true#/Language/Get\">/api/Language</a> */
  int languageId = null;

/* Store Id where media will be attributed to, as retrievable from <a href=\"?filter=Webshop\">/api/Webshop</a> */
  int storeId = null;

/* Id for media, as registered in ERP and as retrievable from <a href=\"?deepLinking=true#/Media/Media\">/api/Media/Media</a> */
  int mediaId = null;

/* Sequence Id of media */
  int sequenceId = null;

/* Media type, where \"AB\" = picture, \"DC\" = document, \"DP\" = Document of Performace (DoP), \"VB\" = safety data sheet, \"KM\" = certification, \"VD\" = video, \"EV\" = embedded video */
  String mediaType = null;

/* Source of media */
  String source = null;

/* Description of media */
  String description = null;

/* Hash code for media */
  int hashCode = null;

/* Extension of media file */
  String extension = null;

/* In case of media type picture, picture is default image. */
  bool isDefault = null;

/* Media will be updated */
  bool toUpdate = null;

  MediaInformation();

  @override
  String toString() {
    return 'MediaInformation[productId=$productId, languageId=$languageId, storeId=$storeId, mediaId=$mediaId, sequenceId=$sequenceId, mediaType=$mediaType, source=$source, description=$description, hashCode=$hashCode, extension=$extension, isDefault=$isDefault, toUpdate=$toUpdate, ]';
  }

  MediaInformation.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    productId = json['productId'];
    languageId = json['languageId'];
    storeId = json['storeId'];
    mediaId = json['mediaId'];
    sequenceId = json['sequenceId'];
    mediaType = json['mediaType'];
    source = json['source'];
    description = json['description'];
    hashCode = json['hashCode'];
    extension = json['extension'];
    isDefault = json['isDefault'];
    toUpdate = json['toUpdate'];
  }

  Map<String, dynamic> toJson() {
    return {
      'productId': productId,
      'languageId': languageId,
      'storeId': storeId,
      'mediaId': mediaId,
      'sequenceId': sequenceId,
      'mediaType': mediaType,
      'source': source,
      'description': description,
      'hashCode': hashCode,
      'extension': extension,
      'isDefault': isDefault,
      'toUpdate': toUpdate
    };
  }

  static List<MediaInformation> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<MediaInformation>()
        : json.map((value) => new MediaInformation.fromJson(value)).toList();
  }

  static Map<String, MediaInformation> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MediaInformation>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new MediaInformation.fromJson(value));
    }
    return map;
  }
}
