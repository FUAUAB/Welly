part of swagger.api;

class AttachmentApi {
  final ApiClient apiClient;

  AttachmentApi([ApiClient apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  /// Delete attachment file
  ///
  ///
  Future<bool> deleteAttachment(
      {int type, String reference, int sequenceId}) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/Attachment".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (type != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "type", type));
    }
    if (reference != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "reference", reference));
    }
    if (sequenceId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "sequenceId", sequenceId));
    }

    List<String> contentTypes = ["application/json;v=1.13"];

    String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["Bearer"];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);

      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'DELETE', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'bool') as bool;
    } else {
      return null;
    }
  }

  /// Get attached file for specified type, reference and sequenceId
  ///
  ///
  Future<Response> getAttachment(
      {int type, String reference, int sequenceId}) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/Attachment".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (type != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "type", type));
    }
    if (reference != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "reference", reference));
    }
    if (sequenceId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "sequenceId", sequenceId));
    }

    List<String> contentTypes = ["application/json;v=1.13"];

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
      return response;
    } else {
      return null;
    }
  }
}
