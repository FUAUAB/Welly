part of swagger.api;

class CostCentreApi {
  final ApiClient apiClient;

  CostCentreApi([ApiClient apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  /// Get a list of active cost centres.
  ///
  ///
  Future<List<CostCentreLevel>> getCostCentreLevel(
      {int companyId, int branchId}) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/CostCentre".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (companyId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "companyId", companyId));
    }
    if (branchId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "branchId", branchId));
    }

    List<String> contentTypes = [
      "application/json;v=1.13",
      "application/json;v=1.12",
      "application/json;v=1.11",
      "application/json;v=1.10"
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
      return (apiClient.deserialize(response.body, 'List<CostCentreLevel>')
              as List)
          .map((item) => item as CostCentreLevel)
          .toList();
    } else {
      return null;
    }
  }

  /// Get a list of all cost centres by costcentre level.
  ///
  ///
  Future<CostCentreLevel> getCostCentreLevelById(
      int companyId, int costCentreLevelId) async {
    Object postBody = null;

    // verify required params are set
    if (companyId == null) {
      throw new ApiException(400, "Missing required param: companyId");
    }
    if (costCentreLevelId == null) {
      throw new ApiException(400, "Missing required param: costCentreLevelId");
    }

    // create path and map variables
    String path = "/api/CostCentre/{CompanyId}/{CostCentreLevelId}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "CompanyId" + "}", companyId.toString())
        .replaceAll(
            "{" + "CostCentreLevelId" + "}", costCentreLevelId.toString());

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
      "application/json;v=1.5"
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
      return apiClient.deserialize(response.body, 'CostCentreLevel')
          as CostCentreLevel;
    } else {
      return null;
    }
  }

  /// Get a list of all required costcentres per general ledger account.
  ///
  ///
  Future<CostCentrePerGeneralLedgerAccount> perGeneralLedgerAccount(
      int companyId, int ledgerAccountNumber) async {
    Object postBody = null;

    // verify required params are set
    if (companyId == null) {
      throw new ApiException(400, "Missing required param: companyId");
    }
    if (ledgerAccountNumber == null) {
      throw new ApiException(
          400, "Missing required param: ledgerAccountNumber");
    }

    // create path and map variables
    String path =
        "/api/CostCentre/PerGeneralLedgerAccount/{CompanyId}/{LedgerAccountNumber}"
            .replaceAll("{format}", "json")
            .replaceAll("{" + "CompanyId" + "}", companyId.toString())
            .replaceAll("{" + "LedgerAccountNumber" + "}",
                ledgerAccountNumber.toString());

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
      "application/json;v=1.5"
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
      return apiClient.deserialize(
              response.body, 'CostCentrePerGeneralLedgerAccount')
          as CostCentrePerGeneralLedgerAccount;
    } else {
      return null;
    }
  }
}
