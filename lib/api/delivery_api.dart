part of swagger.api;

class DeliveryApi {
  final ApiClient apiClient;

  DeliveryApi([ApiClient apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  /// Create a new delivery.
  ///
  ///
  Future<DeliveryResult> createDelivery({Delivery delivery}) async {
    Object postBody = delivery;

    // verify required params are set

    // create path and map variables
    String path = "/api/Delivery".replaceAll("{format}", "json");

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

    var response = await apiClient.invokeAPI(path, 'POST', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'DeliveryResult')
          as DeliveryResult;
    } else {
      return null;
    }
  }

  /// Returns delivery note PDF
  ///
  ///
  Future<MultipartFile> deliveryNotePDF(
      int companyId, int branchId, int orderId, int deliveryId,
      {String userId}) async {
    Object postBody = null;

    // verify required params are set
    if (companyId == null) {
      throw new ApiException(400, "Missing required param: companyId");
    }
    if (branchId == null) {
      throw new ApiException(400, "Missing required param: branchId");
    }
    if (orderId == null) {
      throw new ApiException(400, "Missing required param: orderId");
    }
    if (deliveryId == null) {
      throw new ApiException(400, "Missing required param: deliveryId");
    }

    // create path and map variables
    String path =
        "/api/Delivery/DeliveryNote/{companyId}/{branchId}/{orderId}/{deliveryId}"
            .replaceAll("{format}", "json")
            .replaceAll("{" + "companyId" + "}", companyId.toString())
            .replaceAll("{" + "branchId" + "}", branchId.toString())
            .replaceAll("{" + "orderId" + "}", orderId.toString())
            .replaceAll("{" + "deliveryId" + "}", deliveryId.toString());

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

  /// Get delivery conditions
  ///
  ///
  Future<List<V12DeliveryCondition>> getAllDeliveryConditions(
      {int companyId, int languageId}) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path =
        "/api/Delivery/DeliveryCondition".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (companyId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "companyId", companyId));
    }
    if (languageId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "languageId", languageId));
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
      return (apiClient.deserialize(response.body, 'List<V12DeliveryCondition>')
              as List)
          .map((item) => item as V12DeliveryCondition)
          .toList();
    } else {
      return null;
    }
  }

  /// Returns deliveries
  ///
  ///
  Future<List<Delivery>> getDeliveries(DateTime startDate, DateTime endDate,
      {int storeId,
      int companyId,
      int branchId,
      int customerId,
      int employeeId,
      String webshopLogin,
      bool onlyShowOwnData,
      String searchQuerySearchType,
      String searchQuerySearchString,
      bool includeAdditionalPackagingInformation}) async {
    Object postBody = null;

    // verify required params are set
    if (startDate == null) {
      throw new ApiException(400, "Missing required param: startDate");
    }
    if (endDate == null) {
      throw new ApiException(400, "Missing required param: endDate");
    }

    // create path and map variables
    String path = "/api/Delivery".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (storeId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "StoreId", storeId));
    }
    if (companyId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "CompanyId", companyId));
    }
    if (branchId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "BranchId", branchId));
    }
    if (customerId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "CustomerId", customerId));
    }
    if (employeeId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "EmployeeId", employeeId));
    }
    if (webshopLogin != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "WebshopLogin", webshopLogin));
    }
    if (onlyShowOwnData != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "OnlyShowOwnData", onlyShowOwnData));
    }
    queryParams.addAll(
        _convertParametersForCollectionFormat("", "StartDate", startDate));
    queryParams
        .addAll(_convertParametersForCollectionFormat("", "EndDate", endDate));
    if (searchQuerySearchType != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "SearchQuery.SearchType", searchQuerySearchType));
    }
    if (searchQuerySearchString != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "SearchQuery.SearchString", searchQuerySearchString));
    }
    if (includeAdditionalPackagingInformation != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "",
          "IncludeAdditionalPackagingInformation",
          includeAdditionalPackagingInformation));
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
      return (apiClient.deserialize(response.body, 'List<Delivery>') as List)
          .map((item) => item as Delivery)
          .toList();
    } else {
      return null;
    }
  }

  /// Returns deliveries (paged), optional based on search parameter
  ///
  ///
  Future<List<Delivery>> getDeliveriesPagedAndSearch(
      DateTime startDate, DateTime endDate,
      {int storeId,
      int companyId,
      int branchId,
      int customerId,
      int employeeId,
      String webshopLogin,
      bool onlyShowOwnData,
      String searchQuerySearchType,
      String searchQuerySearchString,
      bool includeAdditionalPackagingInformation,
      int pageNumber,
      int pageSize}) async {
    Object postBody = null;

    // verify required params are set
    if (startDate == null) {
      throw new ApiException(400, "Missing required param: startDate");
    }
    if (endDate == null) {
      throw new ApiException(400, "Missing required param: endDate");
    }

    // create path and map variables
    String path = "/api/Delivery/Paged".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (storeId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "StoreId", storeId));
    }
    if (companyId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "CompanyId", companyId));
    }
    if (branchId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "BranchId", branchId));
    }
    if (customerId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "CustomerId", customerId));
    }
    if (employeeId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "EmployeeId", employeeId));
    }
    if (webshopLogin != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "WebshopLogin", webshopLogin));
    }
    if (onlyShowOwnData != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "OnlyShowOwnData", onlyShowOwnData));
    }
    queryParams.addAll(
        _convertParametersForCollectionFormat("", "StartDate", startDate));
    queryParams
        .addAll(_convertParametersForCollectionFormat("", "EndDate", endDate));
    if (searchQuerySearchType != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "SearchQuery.SearchType", searchQuerySearchType));
    }
    if (searchQuerySearchString != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "SearchQuery.SearchString", searchQuerySearchString));
    }
    if (includeAdditionalPackagingInformation != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "",
          "IncludeAdditionalPackagingInformation",
          includeAdditionalPackagingInformation));
    }
    if (pageNumber != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "PageNumber", pageNumber));
    }
    if (pageSize != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "PageSize", pageSize));
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
      return (apiClient.deserialize(response.body, 'List<Delivery>') as List)
          .map((item) => item as Delivery)
          .toList();
    } else {
      return null;
    }
  }

  /// Get delivery condition
  ///
  ///
  Future<V12DeliveryCondition> getDeliveryCondition(
      int companyId, int languageId, int deliveryConditionId) async {
    Object postBody = null;

    // verify required params are set
    if (companyId == null) {
      throw new ApiException(400, "Missing required param: companyId");
    }
    if (languageId == null) {
      throw new ApiException(400, "Missing required param: languageId");
    }
    if (deliveryConditionId == null) {
      throw new ApiException(
          400, "Missing required param: deliveryConditionId");
    }

    // create path and map variables
    String path =
        "/api/Delivery/DeliveryCondition/{companyId}/{languageId}/{deliveryConditionId}"
            .replaceAll("{format}", "json")
            .replaceAll("{" + "companyId" + "}", companyId.toString())
            .replaceAll("{" + "languageId" + "}", languageId.toString())
            .replaceAll("{" + "deliveryConditionId" + "}",
                deliveryConditionId.toString());

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
      return apiClient.deserialize(response.body, 'V12DeliveryCondition')
          as V12DeliveryCondition;
    } else {
      return null;
    }
  }

  /// Returns delivery
  ///
  ///
  Future<Delivery> getSingleDelivery(
      {int storeId,
      int companyId,
      int branchId,
      int customerId,
      int orderId,
      int deliveryId}) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/Delivery/Single".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (storeId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "StoreId", storeId));
    }
    if (companyId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "CompanyId", companyId));
    }
    if (branchId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "BranchId", branchId));
    }
    if (customerId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "CustomerId", customerId));
    }
    if (orderId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "OrderId", orderId));
    }
    if (deliveryId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "DeliveryId", deliveryId));
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
      return apiClient.deserialize(response.body, 'Delivery') as Delivery;
    } else {
      return null;
    }
  }

  /// Returns a list of valid shipping dates
  ///
  ///
  Future<List<DateTime>> validShippingDates(
      {int companyId, int numberOfDates}) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path =
        "/api/Delivery/ValidShippingDates".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (companyId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "companyId", companyId));
    }
    if (numberOfDates != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "numberOfDates", numberOfDates));
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
      return (apiClient.deserialize(response.body, 'List<DateTime>') as List)
          .map((item) => item as DateTime)
          .toList();
    } else {
      return null;
    }
  }
}
