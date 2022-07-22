part of swagger.api;

class InvoiceApi {
  final ApiClient apiClient;

  InvoiceApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Get invoice by invoice number
  ///
  ///
  Future<V12Invoice> detailedInvoice(int companyId, int invoiceNumber) async {
    Object postBody = null;

    // verify required params are set
    if (companyId == null) {
      throw new ApiException(400, "Missing required param: companyId");
    }
    if (invoiceNumber == null) {
      throw new ApiException(400, "Missing required param: invoiceNumber");
    }

    // create path and map variables
    String path = "/api/Invoice/Invoice/{companyId}/{invoiceNumber}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "companyId" + "}", companyId.toString())
        .replaceAll("{" + "invoiceNumber" + "}", invoiceNumber.toString());

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
      "application/json;v=1.2"
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
      return apiClient.deserialize(response.body, 'V12Invoice') as V12Invoice;
    } else {
      return null;
    }
  }

  /// Get payment conditions
  ///
  ///
  Future<V12PaymentCondition> getAllPaymentConditions() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path =
        "/api/Invoice/PaymentCondition".replaceAll("{format}", "json");

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
      return apiClient.deserialize(response.body, 'V12PaymentCondition')
          as V12PaymentCondition;
    } else {
      return null;
    }
  }

  /// Get payment condition by Id
  ///
  ///
  Future<V12PaymentCondition> getPaymentConditionById(
      int paymentConditionId) async {
    Object postBody = null;

    // verify required params are set
    if (paymentConditionId == null) {
      throw new ApiException(400, "Missing required param: paymentConditionId");
    }

    // create path and map variables
    String path = "/api/Invoice/PaymentCondition/{paymentConditionId}"
        .replaceAll("{format}", "json")
        .replaceAll(
            "{" + "paymentConditionId" + "}", paymentConditionId.toString());

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
      return apiClient.deserialize(response.body, 'V12PaymentCondition')
          as V12PaymentCondition;
    } else {
      return null;
    }
  }

  /// Create invoice.  (All amounts must be provided in the supplied currency)
  ///
  ///
  Future invoice({Invoice invoice}) async {
    Object postBody = invoice;

    // verify required params are set

    // create path and map variables
    String path = "/api/Invoice/Invoice".replaceAll("{format}", "json");

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

  /// Get invoice by delivery information (orderId and deliveryId)
  ///
  ///
  Future<Invoice> invoiceByDeliveryInformation(
      int companyId, int orderId, int deliveryId) async {
    Object postBody = null;

    // verify required params are set
    if (companyId == null) {
      throw new ApiException(400, "Missing required param: companyId");
    }
    if (orderId == null) {
      throw new ApiException(400, "Missing required param: orderId");
    }
    if (deliveryId == null) {
      throw new ApiException(400, "Missing required param: deliveryId");
    }

    // create path and map variables
    String path = "/api/Invoice/Invoice/{companyId}/{orderId}/{deliveryId}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "companyId" + "}", companyId.toString())
        .replaceAll("{" + "orderId" + "}", orderId.toString())
        .replaceAll("{" + "deliveryId" + "}", deliveryId.toString());

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
      return apiClient.deserialize(response.body, 'Invoice') as Invoice;
    } else {
      return null;
    }
  }

  /// Return Invoice pdf-stream
  ///
  ///
  Future<MultipartFile> invoicePDF(int companyId, int branchId, int invoiceId,
      {String userId}) async {
    Object postBody = null;

    // verify required params are set
    if (companyId == null) {
      throw new ApiException(400, "Missing required param: companyId");
    }
    if (branchId == null) {
      throw new ApiException(400, "Missing required param: branchId");
    }
    if (invoiceId == null) {
      throw new ApiException(400, "Missing required param: invoiceId");
    }

    // create path and map variables
    String path = "/api/Invoice/InvoicePDF/{companyId}/{branchId}/{invoiceId}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "companyId" + "}", companyId.toString())
        .replaceAll("{" + "branchId" + "}", branchId.toString())
        .replaceAll("{" + "invoiceId" + "}", invoiceId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (userId != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "userId", userId));
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
      return apiClient.deserialize(response.body, 'MultipartFile')
          as MultipartFile;
    } else {
      return null;
    }
  }

  /// Return invoice pdf-stream, based on weborderId
  ///
  ///
  Future<MultipartFile> invoicePDFByWeborderId(
      {int companyId,
      int branchId,
      int customerId,
      String weborderId,
      String userId}) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/Invoice/InvoicePDF".replaceAll("{format}", "json");

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
    if (customerId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "customerId", customerId));
    }
    if (weborderId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "weborderId", weborderId));
    }
    if (userId != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "userId", userId));
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
      return apiClient.deserialize(response.body, 'MultipartFile')
          as MultipartFile;
    } else {
      return null;
    }
  }

  /// Create multiple invoices in one transaction.  (All amounts must be provided in the supplied currency)
  ///
  ///
  Future invoices({List<Invoice> invoices}) async {
    Object postBody = invoices;

    // verify required params are set

    // create path and map variables
    String path = "/api/Invoice/Invoices".replaceAll("{format}", "json");

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

  /// Get invoices of customer, optional based on search parameter
  ///
  ///
  Future<List<Invoice>> invoicesForCustomerWithSearch(
      DateTime startDate, DateTime endDate,
      {int pageNumber,
      int pageSize,
      int storeId,
      int companyId,
      int customerId,
      int employeeId,
      String wLogin,
      bool showOnlyOwnData,
      String searchType,
      String searchString}) async {
    Object postBody = null;

    // verify required params are set
    if (startDate == null) {
      throw new ApiException(400, "Missing required param: startDate");
    }
    if (endDate == null) {
      throw new ApiException(400, "Missing required param: endDate");
    }

    // create path and map variables
    String path = "/api/Invoice/Invoice".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (pageNumber != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "PageNumber", pageNumber));
    }
    if (pageSize != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "PageSize", pageSize));
    }
    if (storeId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "storeId", storeId));
    }
    if (companyId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "companyId", companyId));
    }
    if (customerId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "customerId", customerId));
    }
    if (employeeId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "employeeId", employeeId));
    }
    if (wLogin != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "wLogin", wLogin));
    }
    if (showOnlyOwnData != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "showOnlyOwnData", showOnlyOwnData));
    }
    queryParams.addAll(
        _convertParametersForCollectionFormat("", "startDate", startDate));
    queryParams
        .addAll(_convertParametersForCollectionFormat("", "endDate", endDate));
    if (searchType != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "SearchType", searchType));
    }
    if (searchString != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "SearchString", searchString));
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
      return (apiClient.deserialize(response.body, 'List<Invoice>') as List)
          .map((item) => item as Invoice)
          .toList();
    } else {
      return null;
    }
  }
}
