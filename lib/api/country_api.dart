part of swagger.api;

class CountryApi {
  final ApiClient apiClient;

  CountryApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Get a list of all countries.
  ///
  ///
  Future<List<Country>> getAllCountries() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/Country".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

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
      return (apiClient.deserialize(response.body, 'List<Country>') as List)
          .map((item) => item as Country)
          .toList();
    } else {
      return null;
    }
  }

  /// Get country by id.
  ///
  ///
  Future<V19Country> getCountryDetails(int countryId) async {
    Object postBody = null;

    // verify required params are set
    if (countryId == null) {
      throw new ApiException(400, "Missing required param: countryId");
    }

    // create path and map variables
    String path = "/api/Country/{countryId}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "countryId" + "}", countryId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [
      "application/json;v=1.13",
      "application/json;v=1.12",
      "application/json;v=1.11",
      "application/json;v=1.10",
      "application/json;v=1.9"
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
      return apiClient.deserialize(response.body, 'V19Country') as V19Country;
    } else {
      return null;
    }
  }

  /// Get country by ISO3166 code.
  ///
  ///
  Future<V19Country> getDetailsByIso3166(String iSO3166) async {
    Object postBody = null;

    // verify required params are set
    if (iSO3166 == null) {
      throw new ApiException(400, "Missing required param: iSO3166");
    }

    // create path and map variables
    String path = "/api/Country/{ISO3166}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "ISO3166" + "}", iSO3166.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [
      "application/json;v=1.13",
      "application/json;v=1.12",
      "application/json;v=1.11",
      "application/json;v=1.10",
      "application/json;v=1.9"
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
      return apiClient.deserialize(response.body, 'V19Country') as V19Country;
    } else {
      return null;
    }
  }
}
