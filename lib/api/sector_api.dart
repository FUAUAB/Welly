part of swagger.api;

class SectorApi {
  final ApiClient apiClient;

  SectorApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Get Sector
  ///
  ///
  Future<V12Sector> getSectorById(int companyId, int sectorId) async {
    Object postBody = null;

    // verify required params are set
    if (companyId == null) {
      throw new ApiException(400, "Missing required param: companyId");
    }
    if (sectorId == null) {
      throw new ApiException(400, "Missing required param: sectorId");
    }

    // create path and map variables
    String path = "/api/Sector/{companyId}/{sectorId}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "companyId" + "}", companyId.toString())
        .replaceAll("{" + "sectorId" + "}", sectorId.toString());

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
      return apiClient.deserialize(response.body, 'V12Sector') as V12Sector;
    } else {
      return null;
    }
  }

  /// Get Sectors from company
  ///
  ///
  Future<List<V12Sector>> getSectorsForCompany(int companyId) async {
    Object postBody = null;

    // verify required params are set
    if (companyId == null) {
      throw new ApiException(400, "Missing required param: companyId");
    }

    // create path and map variables
    String path = "/api/Sector/{companyId}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "companyId" + "}", companyId.toString());

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
      return (apiClient.deserialize(response.body, 'List<V12Sector>') as List)
          .map((item) => item as V12Sector)
          .toList();
    } else {
      return null;
    }
  }
}
