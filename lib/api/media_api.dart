part of swagger.api;

class MediaApi {
  final ApiClient apiClient;

  MediaApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Get media for products (may contain a large number of records)
  ///
  ///
  Future<List<MediaInformation>> media({int storeId}) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/Media".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (storeId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "storeId", storeId));
    }

    List<String> contentTypes = [
      "application/json;v=1.13",
      "application/json;v=1.12",
      "application/json;v=1.11",
      "application/json;v=1.10",
      "application/json;v=1.9",
      "application/json;v=1.8"
    ];

    String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["Bearer"];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);

      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'GET', queryParams, postBody,
        headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return (apiClient.deserialize(response.body, 'List<MediaInformation>')
              as List)
          .map((item) => item as MediaInformation)
          .toList();
    } else {
      return null;
    }
  }

  /// Get media for product
  ///
  ///
  Future<List<MediaInformation>> mediaById(String productId,
      {int storeId}) async {
    Object postBody = null;

    // verify required params are set
    if (productId == null) {
      throw new ApiException(400, "Missing required param: productId");
    }

    // create path and map variables
    String path = "/api/Media/{productId}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "productId" + "}", productId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (storeId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "storeId", storeId));
    }

    List<String> contentTypes = [
      "application/json;v=1.13",
      "application/json;v=1.12",
      "application/json;v=1.11",
      "application/json;v=1.10",
      "application/json;v=1.9",
      "application/json;v=1.8"
    ];

    String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["Bearer"];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);

      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'GET', queryParams, postBody,
        headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return (apiClient.deserialize(response.body, 'List<MediaInformation>')
              as List)
          .map((item) => item as MediaInformation)
          .toList();
    } else {
      return null;
    }
  }
}
