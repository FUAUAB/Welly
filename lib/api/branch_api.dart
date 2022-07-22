part of swagger.api;

class BranchApi {
  final ApiClient apiClient;

  BranchApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Get a list of all branches.
  ///
  ///
  Future<List<BranchInformation>> getAllBranches() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/Branch".replaceAll("{format}", "json");

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
      return (apiClient.deserialize(response.body, 'List<BranchInformation>')
              as List)
          .map((item) => item as BranchInformation)
          .toList();
    } else {
      return null;
    }
  }

  /// Get branch by company/branch id.
  ///
  ///
  Future<BranchInformation> getBranchById(int companyId, int branchId) async {
    Object postBody = null;

    // verify required params are set
    if (companyId == null) {
      throw new ApiException(400, "Missing required param: companyId");
    }
    if (branchId == null) {
      throw new ApiException(400, "Missing required param: branchId");
    }

    // create path and map variables
    String path = "/api/Branch/{companyId}/{branchId}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "companyId" + "}", companyId.toString())
        .replaceAll("{" + "branchId" + "}", branchId.toString());

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
      "application/json;v=1.4",
      "application/json;v=1.3"
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
      return apiClient.deserialize(response.body, 'BranchInformation')
          as BranchInformation;
    } else {
      return null;
    }
  }

  /// Get a list of all branches for a specified companyId.
  ///
  ///
  Future<List<BranchInformation>> getBranchesForCompany(int companyId) async {
    Object postBody = null;

    // verify required params are set
    if (companyId == null) {
      throw new ApiException(400, "Missing required param: companyId");
    }

    // create path and map variables
    String path = "/api/Branch/{companyId}"
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
      return (apiClient.deserialize(response.body, 'List<BranchInformation>')
              as List)
          .map((item) => item as BranchInformation)
          .toList();
    } else {
      return null;
    }
  }
}
