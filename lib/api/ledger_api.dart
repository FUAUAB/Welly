part of swagger.api;

class LedgerApi {
  final ApiClient apiClient;

  LedgerApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Get a list of all general ledger accounts.
  ///
  ///
  Future<List<GeneralLedgerAccount>> generalLedgerAccount() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path =
        "/api/Ledger/GeneralLedgerAccount".replaceAll("{format}", "json");

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
      return (apiClient.deserialize(response.body, 'List<GeneralLedgerAccount>')
              as List)
          .map((item) => item as GeneralLedgerAccount)
          .toList();
    } else {
      return null;
    }
  }

  /// Get general ledger account by LedgerAccountNumber.
  ///
  ///
  Future<List<GeneralLedgerAccount>> generalLedgerAccountById(
      int ledgerAccountNumber) async {
    Object postBody = null;

    // verify required params are set
    if (ledgerAccountNumber == null) {
      throw new ApiException(
          400, "Missing required param: ledgerAccountNumber");
    }

    // create path and map variables
    String path = "/api/Ledger/GeneralLedgerAccount/{LedgerAccountNumber}"
        .replaceAll("{format}", "json")
        .replaceAll(
            "{" + "LedgerAccountNumber" + "}", ledgerAccountNumber.toString());

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
      return (apiClient.deserialize(response.body, 'List<GeneralLedgerAccount>')
              as List)
          .map((item) => item as GeneralLedgerAccount)
          .toList();
    } else {
      return null;
    }
  }

  /// Create ledger journal.
  ///
  ///
  Future ledgerJournal({LedgerJournal ledgerJournal}) async {
    Object postBody = ledgerJournal;

    // verify required params are set

    // create path and map variables
    String path = "/api/Ledger/LedgerJournal".replaceAll("{format}", "json");

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

    var response = await apiClient.invokeAPI(path, 'POST', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return;
    } else {
      return;
    }
  }

  /// Get general ledger accounts per supplier
  ///
  ///
  Future<List<SupplierGeneralLedgerAccounts>> supplierGeneralLedgerAccounts(
      int companyId) async {
    Object postBody = null;

    // verify required params are set
    if (companyId == null) {
      throw new ApiException(400, "Missing required param: companyId");
    }

    // create path and map variables
    String path = "/api/Ledger/SupplierGeneralLedgerAccounts/{CompanyId}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "CompanyId" + "}", companyId.toString());

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
      return (apiClient.deserialize(
              response.body, 'List<SupplierGeneralLedgerAccounts>') as List)
          .map((item) => item as SupplierGeneralLedgerAccounts)
          .toList();
    } else {
      return null;
    }
  }

  /// Get general ledger accounts for specified SupplierId.
  ///
  ///
  Future<List<GeneralLedgerAccount>> supplierGeneralLedgerAccountsBySupplier(
      int companyId, int supplierId) async {
    Object postBody = null;

    // verify required params are set
    if (companyId == null) {
      throw new ApiException(400, "Missing required param: companyId");
    }
    if (supplierId == null) {
      throw new ApiException(400, "Missing required param: supplierId");
    }

    // create path and map variables
    String path =
        "/api/Ledger/SupplierGeneralLedgerAccounts/{CompanyId}/{SupplierId}"
            .replaceAll("{format}", "json")
            .replaceAll("{" + "CompanyId" + "}", companyId.toString())
            .replaceAll("{" + "SupplierId" + "}", supplierId.toString());

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
      return (apiClient.deserialize(response.body, 'List<GeneralLedgerAccount>')
              as List)
          .map((item) => item as GeneralLedgerAccount)
          .toList();
    } else {
      return null;
    }
  }
}
