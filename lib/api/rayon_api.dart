part of swagger.api;

class RayonApi {
  final ApiClient apiClient;

  RayonApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Get Rayon
  ///
  ///
  Future<V12Rayon> getRayonById(int rayonId, {int languageId}) async {
    Object postBody = null;

    // verify required params are set
    if (rayonId == null) {
      throw new ApiException(400, "Missing required param: rayonId");
    }

    // create path and map variables
    String path = "/api/Rayon/{rayonId}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "rayonId" + "}", rayonId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (languageId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "languageId", languageId));
    }

    List<String> contentTypes = [
      "application/json;v=1.13",
      "application/json;v=1.12",
      "application/json;v=1.11",
      "application/json;v=1.10",
      "application/json;v=1.9",
      "application/json;v=1.8",
      "application/json;v=1.7",
      "application/json;v=1.6",
      "application/json;v=1.5",
      "application/json;v=1.4"
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
      return apiClient.deserialize(response.body, 'V12Rayon') as V12Rayon;
    } else {
      return null;
    }
  }

  /// Get Rayons
  ///
  ///
  Future<List<V12Rayon>> getRayons({int languageId}) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/Rayon".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (languageId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "languageId", languageId));
    }

    List<String> contentTypes = [
      "application/json;v=1.13",
      "application/json;v=1.12",
      "application/json;v=1.11",
      "application/json;v=1.10",
      "application/json;v=1.9",
      "application/json;v=1.8",
      "application/json;v=1.7",
      "application/json;v=1.6",
      "application/json;v=1.5",
      "application/json;v=1.4"
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
      return (apiClient.deserialize(response.body, 'List<V12Rayon>') as List)
          .map((item) => item as V12Rayon)
          .toList();
    } else {
      return null;
    }
  }
}
