part of swagger.api;

class OrderApi {
  final ApiClient apiClient;

  OrderApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Change order into delivery in parts and/or cancel specified order lines.
  ///
  ///
  Future<bool> changeOrder({ChangeOrderRequest request}) async {
    Object postBody = request;

    // verify required params are set

    // create path and map variables
    String path = "/api/Order/ChangeOrder".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [
      "application/json;v=1.13",
      "application/json;v=1.12",
      "application/json;v=1.11"
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

  /// Add Attachment to order
  ///
  ///
  Future<bool> orderAttachment(MultipartFile uploadedFile,
      {int companyId, int branchId, int orderId}) async {
    Object postBody = null;

    // verify required params are set
    if (uploadedFile == null) {
      throw new ApiException(400, "Missing required param: uploadedFile");
    }

    // create path and map variables
    String path = "/api/Order/OrderAttachment".replaceAll("{format}", "json");

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
    if (orderId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "orderId", orderId));
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
      "application/json;v=1.0",
      "multipart/form-data;v=1.13",
      "multipart/form-data;v=1.12",
      "multipart/form-data;v=1.11",
      "multipart/form-data;v=1.10",
      "multipart/form-data;v=1.9",
      "multipart/form-data;v=1.8",
      "multipart/form-data;v=1.7",
      "multipart/form-data;v=1.6",
      "multipart/form-data;v=1.5",
      "multipart/form-data;v=1.4",
      "multipart/form-data;v=1.3",
      "multipart/form-data;v=1.2",
      "multipart/form-data;v=1.1",
      "multipart/form-data;v=1.0"
    ];

    String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["Bearer"];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);

      if (uploadedFile != null) {
        hasFields = true;
        mp.fields['uploadedFile'] = uploadedFile.field;
        mp.files.add(uploadedFile);
      }

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

  /// Get Order changes
  ///
  ///
  Future<OrderChangeResult> orderChanges(
      {int storeId, DateTime fromDate}) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/Order/OrderChanges".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (storeId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "storeId", storeId));
    }
    if (fromDate != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "fromDate", fromDate));
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
      "application/json;v=1.1"
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
      return apiClient.deserialize(response.body, 'OrderChangeResult')
          as OrderChangeResult;
    } else {
      return null;
    }
  }

  /// Get collection of orders for customer, specified by a starting point (offset) and limit.
  ///
  ///
  Future<List<V12Order>> orderSelectionV17(
      int storeId,
      int companyId,
      int branchId,
      int customerId,
      bool quotationsOnly,
      DateTime startDate,
      DateTime endDate,
      {int employeeId,
      String wLogin,
      bool showOnlyOwnData,
      int offset,
      int limit}) async {
    Object postBody = null;

    // verify required params are set
    if (storeId == null) {
      throw new ApiException(400, "Missing required param: storeId");
    }
    if (companyId == null) {
      throw new ApiException(400, "Missing required param: companyId");
    }
    if (branchId == null) {
      throw new ApiException(400, "Missing required param: branchId");
    }
    if (customerId == null) {
      throw new ApiException(400, "Missing required param: customerId");
    }
    if (quotationsOnly == null) {
      throw new ApiException(400, "Missing required param: quotationsOnly");
    }
    if (startDate == null) {
      throw new ApiException(400, "Missing required param: startDate");
    }
    if (endDate == null) {
      throw new ApiException(400, "Missing required param: endDate");
    }

    // create path and map variables
    String path = "/api/Order/OrderSelection".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    queryParams
        .addAll(_convertParametersForCollectionFormat("", "storeId", storeId));
    queryParams.addAll(
        _convertParametersForCollectionFormat("", "companyId", companyId));
    queryParams.addAll(
        _convertParametersForCollectionFormat("", "branchId", branchId));
    queryParams.addAll(
        _convertParametersForCollectionFormat("", "customerId", customerId));
    queryParams.addAll(_convertParametersForCollectionFormat(
        "", "quotationsOnly", quotationsOnly));
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
    if (offset != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "offset", offset));
    }
    if (limit != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "limit", limit));
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

    var response = await apiClient.invokeAPI(path, 'GET', queryParams, postBody,
        headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return (apiClient.deserialize(response.body, 'List<V12Order>') as List)
          .map((item) => item as V12Order)
          .toList();
    } else {
      return null;
    }
  }

  /// Get Order by Id
  ///
  ///
  Future<V12Order> orderV12(int orderId, {int companyId, int branchId}) async {
    Object postBody = null;

    // verify required params are set
    if (orderId == null) {
      throw new ApiException(400, "Missing required param: orderId");
    }

    // create path and map variables
    String path = "/api/Order/Order/{orderId}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "orderId" + "}", orderId.toString());

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
      return apiClient.deserialize(response.body, 'V12Order') as V12Order;
    } else {
      return null;
    }
  }

  /// Get Orders for customer, optional based on search parameter
  ///
  ///
  Future<List<V12Order>> orderWithPaginationAndSearch(
      int storeId,
      int companyId,
      int branchId,
      int customerId,
      bool quotationsOnly,
      DateTime startDate,
      DateTime endDate,
      {int employeeId,
      String wLogin,
      bool showOnlyOwnData,
      int pageNumber,
      int pageSize,
      bool currentOrdersOnly,
      String searchType,
      String searchString}) async {
    Object postBody = null;

    // verify required params are set
    if (storeId == null) {
      throw new ApiException(400, "Missing required param: storeId");
    }
    if (companyId == null) {
      throw new ApiException(400, "Missing required param: companyId");
    }
    if (branchId == null) {
      throw new ApiException(400, "Missing required param: branchId");
    }
    if (customerId == null) {
      throw new ApiException(400, "Missing required param: customerId");
    }
    if (quotationsOnly == null) {
      throw new ApiException(400, "Missing required param: quotationsOnly");
    }
    if (startDate == null) {
      throw new ApiException(400, "Missing required param: startDate");
    }
    if (endDate == null) {
      throw new ApiException(400, "Missing required param: endDate");
    }

    // create path and map variables
    String path = "/api/Order/Order".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    queryParams
        .addAll(_convertParametersForCollectionFormat("", "storeId", storeId));
    queryParams.addAll(
        _convertParametersForCollectionFormat("", "companyId", companyId));
    queryParams.addAll(
        _convertParametersForCollectionFormat("", "branchId", branchId));
    queryParams.addAll(
        _convertParametersForCollectionFormat("", "customerId", customerId));
    queryParams.addAll(_convertParametersForCollectionFormat(
        "", "quotationsOnly", quotationsOnly));
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
    if (pageNumber != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "PageNumber", pageNumber));
    }
    if (pageSize != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "PageSize", pageSize));
    }
    if (currentOrdersOnly != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "currentOrdersOnly", currentOrdersOnly));
    }
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
      return (apiClient.deserialize(response.body, 'List<V12Order>') as List)
          .map((item) => item as V12Order)
          .toList();
    } else {
      return null;
    }
  }
}
