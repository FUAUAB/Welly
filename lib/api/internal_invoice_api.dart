part of swagger.api;

class InternalInvoiceApi {
  final ApiClient apiClient;

  InternalInvoiceApi([ApiClient apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  /// Get internal invoice
  ///
  ///
  Future<InternalInvoice> internalInvoice(int companyId, int branchId,
      int purchaseId, int deliverySequenceId) async {
    Object postBody = null;

    // verify required params are set
    if (companyId == null) {
      throw new ApiException(400, "Missing required param: companyId");
    }
    if (branchId == null) {
      throw new ApiException(400, "Missing required param: branchId");
    }
    if (purchaseId == null) {
      throw new ApiException(400, "Missing required param: purchaseId");
    }
    if (deliverySequenceId == null) {
      throw new ApiException(400, "Missing required param: deliverySequenceId");
    }

    // create path and map variables
    String path =
        "/api/InternalInvoice/InternalInvoice/{companyId}/{branchId}/{purchaseId}/{deliverySequenceId}"
            .replaceAll("{format}", "json")
            .replaceAll("{" + "companyId" + "}", companyId.toString())
            .replaceAll("{" + "branchId" + "}", branchId.toString())
            .replaceAll("{" + "purchaseId" + "}", purchaseId.toString())
            .replaceAll("{" + "deliverySequenceId" + "}",
                deliverySequenceId.toString());

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
      return apiClient.deserialize(response.body, 'InternalInvoice')
          as InternalInvoice;
    } else {
      return null;
    }
  }

  /// Match internal invoice lines with purchase invoice
  ///
  ///
  Future<List<MatchInternalInvoice>> matchInternalInvoice(
      {List<MatchInternalInvoice> internalInvoiceLines}) async {
    Object postBody = internalInvoiceLines;

    // verify required params are set

    // create path and map variables
    String path = "/api/InternalInvoice/MatchInternalInvoice"
        .replaceAll("{format}", "json");

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

    var response = await apiClient.invokeAPI(path, 'PUT', queryParams, postBody,
        headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return (apiClient.deserialize(response.body, 'List<MatchInternalInvoice>')
              as List)
          .map((item) => item as MatchInternalInvoice)
          .toList();
    } else {
      return null;
    }
  }

  /// Get all outstanding internal invoices
  ///
  ///
  Future<List<InternalInvoice>> outstandingInternalInvoices(
      int companyId, int branchId) async {
    Object postBody = null;

    // verify required params are set
    if (companyId == null) {
      throw new ApiException(400, "Missing required param: companyId");
    }
    if (branchId == null) {
      throw new ApiException(400, "Missing required param: branchId");
    }

    // create path and map variables
    String path =
        "/api/InternalInvoice/OutstandingInternalInvoices/{companyId}/{branchId}"
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
      return (apiClient.deserialize(response.body, 'List<InternalInvoice>')
              as List)
          .map((item) => item as InternalInvoice)
          .toList();
    } else {
      return null;
    }
  }
}
