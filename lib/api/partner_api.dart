part of swagger.api;

class PartnerApi {
  final ApiClient apiClient;

  PartnerApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Delete partner ID for Mavis entity, for example account, order, invoice or contact
  ///
  ///
  Future<bool> deletePartnerObject(
      {int companyId,
      int erpId,
      String partnerId,
      String objectType,
      String objectId}) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/Partner".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (companyId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "companyId", companyId));
    }
    if (erpId != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "erpId", erpId));
    }
    if (partnerId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "partnerId", partnerId));
    }
    if (objectType != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "objectType", objectType));
    }
    if (objectId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "objectId", objectId));
    }

    List<String> contentTypes = [
      "application/json;v=1.13",
      "application/json;v=1.12",
      "application/json;v=1.11",
      "application/json;v=1.10",
      "application/json;v=1.9",
      "application/json;v=1.8",
      "application/json;v=1.7"
    ];

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

  /// Register partner object ID for Mavis entity, for example account, order, invoice or contact
  ///
  ///
  Future<bool> registerPartnerObject(
      {int companyId,
      int erpId,
      String partnerId,
      String objectType,
      String objectId}) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/Partner/Register".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (companyId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "companyId", companyId));
    }
    if (erpId != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "erpId", erpId));
    }
    if (partnerId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "partnerId", partnerId));
    }
    if (objectType != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "objectType", objectType));
    }
    if (objectId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "objectId", objectId));
    }

    List<String> contentTypes = [
      "application/json;v=1.13",
      "application/json;v=1.12",
      "application/json;v=1.11",
      "application/json;v=1.10",
      "application/json;v=1.9",
      "application/json;v=1.8",
      "application/json;v=1.7"
    ];

    String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["Bearer"];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);

      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'PUT', queryParams, postBody,
        headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'bool') as bool;
    } else {
      return null;
    }
  }
}
