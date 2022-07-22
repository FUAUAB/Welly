part of swagger.api;

class AddressApi {
  final ApiClient apiClient;

  AddressApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Validate dutch address
  ///
  ///
  Future<CheckedAddress> checkPostalcode(
      {String postalCode,
      String houseNumber,
      String houseNumberAddition}) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/Address/CheckPostalcode".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (postalCode != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "postalCode", postalCode));
    }
    if (houseNumber != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "houseNumber", houseNumber));
    }
    if (houseNumberAddition != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "houseNumberAddition", houseNumberAddition));
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
      "application/json;v=1.4",
      "application/json;v=1.3",
      "application/json;v=1.2",
      "application/json;v=1.1",
      "application/json;v=1.0"
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
      return apiClient.deserialize(response.body, 'CheckedAddress')
          as CheckedAddress;
    } else {
      return null;
    }
  }

  /// Validate belgian address
  ///
  ///
  Future<CheckedAddress> checkPostalcodeBE(
      {String postalArea, String streetName, String houseNumber}) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path =
        "/api/Address/CheckPostalcodeBE".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (postalArea != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "postalArea", postalArea));
    }
    if (streetName != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "streetName", streetName));
    }
    if (houseNumber != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "houseNumber", houseNumber));
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
      "application/json;v=1.4",
      "application/json;v=1.3",
      "application/json;v=1.2",
      "application/json;v=1.1",
      "application/json;v=1.0"
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
      return apiClient.deserialize(response.body, 'CheckedAddress')
          as CheckedAddress;
    } else {
      return null;
    }
  }
}
