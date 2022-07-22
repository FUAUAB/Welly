part of swagger.api;

class PurchaseInvoiceApi {
  final ApiClient apiClient;

  PurchaseInvoiceApi([ApiClient apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  /// Set purchaseinvoice procuration block by invoice externalId.
  ///
  ///
  Future<bool> paymentOnHoldById(
      String externalId, bool procurationBlock) async {
    Object postBody = null;

    // verify required params are set
    if (externalId == null) {
      throw new ApiException(400, "Missing required param: externalId");
    }
    if (procurationBlock == null) {
      throw new ApiException(400, "Missing required param: procurationBlock");
    }

    // create path and map variables
    String path =
        "/api/PurchaseInvoice/PaymentOnHoldById/{ExternalId}/{ProcurationBlock}"
            .replaceAll("{format}", "json")
            .replaceAll("{" + "ExternalId" + "}", externalId.toString())
            .replaceAll(
                "{" + "ProcurationBlock" + "}", procurationBlock.toString());

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

    var response = await apiClient.invokeAPI(path, 'POST', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'bool') as bool;
    } else {
      return null;
    }
  }

  /// Set purchaseinvoice procuration block by invoiceId.
  ///
  ///
  Future<bool> paymentOnHoldByIdByInvoice(
      int companyId, int invoiceId, bool procurationBlock) async {
    Object postBody = null;

    // verify required params are set
    if (companyId == null) {
      throw new ApiException(400, "Missing required param: companyId");
    }
    if (invoiceId == null) {
      throw new ApiException(400, "Missing required param: invoiceId");
    }
    if (procurationBlock == null) {
      throw new ApiException(400, "Missing required param: procurationBlock");
    }

    // create path and map variables
    String path =
        "/api/PurchaseInvoice/PaymentOnHoldBy/{companyId}/{invoiceId}/{ProcurationBlock}"
            .replaceAll("{format}", "json")
            .replaceAll("{" + "companyId" + "}", companyId.toString())
            .replaceAll("{" + "invoiceId" + "}", invoiceId.toString())
            .replaceAll(
                "{" + "ProcurationBlock" + "}", procurationBlock.toString());

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

    var response = await apiClient.invokeAPI(path, 'POST', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'bool') as bool;
    } else {
      return null;
    }
  }

  /// Get outstanding amout for specified purchase invoice by invoiceId
  ///
  ///
  Future<PurchaseInvoiceOutstandingAmount> purchaseInvoice(
      int companyId, int invoiceId) async {
    Object postBody = null;

    // verify required params are set
    if (companyId == null) {
      throw new ApiException(400, "Missing required param: companyId");
    }
    if (invoiceId == null) {
      throw new ApiException(400, "Missing required param: invoiceId");
    }

    // create path and map variables
    String path =
        "/api/PurchaseInvoice/PurchaseInvoiceOutstandingAmount/{companyId}/{invoiceId}"
            .replaceAll("{format}", "json")
            .replaceAll("{" + "companyId" + "}", companyId.toString())
            .replaceAll("{" + "invoiceId" + "}", invoiceId.toString());

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
              response.body, 'PurchaseInvoiceOutstandingAmount')
          as PurchaseInvoiceOutstandingAmount;
    } else {
      return null;
    }
  }

  /// Get outstanding amout for specified purchase invoice by external id
  ///
  ///
  Future<PurchaseInvoiceOutstandingAmount> purchaseInvoiceById(
      String externalId) async {
    Object postBody = null;

    // verify required params are set
    if (externalId == null) {
      throw new ApiException(400, "Missing required param: externalId");
    }

    // create path and map variables
    String path =
        "/api/PurchaseInvoice/PurchaseInvoiceOutstandingAmountById/{ExternalId}"
            .replaceAll("{format}", "json")
            .replaceAll("{" + "ExternalId" + "}", externalId.toString());

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
              response.body, 'PurchaseInvoiceOutstandingAmount')
          as PurchaseInvoiceOutstandingAmount;
    } else {
      return null;
    }
  }

  /// Create purchase invoice  (All amounts must be provided in foreign currency)
  ///
  ///
  Future<int> uploadPurchaseInvoice({PurchaseInvoice purchaseInvoice}) async {
    Object postBody = purchaseInvoice;

    // verify required params are set

    // create path and map variables
    String path =
        "/api/PurchaseInvoice/PurchaseInvoice".replaceAll("{format}", "json");

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

    var response = await apiClient.invokeAPI(path, 'POST', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'int') as int;
    } else {
      return null;
    }
  }
}
