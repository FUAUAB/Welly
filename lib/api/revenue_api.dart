part of swagger.api;

class RevenueApi {
  final ApiClient apiClient;

  RevenueApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Get detailed revenue for selected period
  ///
  ///
  Future<List<RevenueItem>> revenueDetailedForPeriod(
      {DateTime startDate, DateTime endDate}) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/Revenue/PeriodDetailed".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (startDate != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "startDate", startDate));
    }
    if (endDate != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "endDate", endDate));
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
      return (apiClient.deserialize(response.body, 'List<RevenueItem>') as List)
          .map((item) => item as RevenueItem)
          .toList();
    } else {
      return null;
    }
  }

  /// Get revenue for article group for a specified period.
  ///
  ///
  Future<List<Revenue>> revenueForArticleGroup(
      {DateTime startDate, DateTime endDate, int articleGroupId}) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/Revenue/ArticleGroup".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (startDate != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "startDate", startDate));
    }
    if (endDate != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "endDate", endDate));
    }
    if (articleGroupId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "articleGroupId", articleGroupId));
    }

    List<String> contentTypes = [
      "application/json;v=1.13",
      "application/json;v=1.12"
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
      return (apiClient.deserialize(response.body, 'List<Revenue>') as List)
          .map((item) => item as Revenue)
          .toList();
    } else {
      return null;
    }
  }

  /// Get revenue for article sub group for specified period.
  ///
  ///
  Future<List<Revenue>> revenueForArticleSubGroup(
      {DateTime startDate,
      DateTime endDate,
      int articleGroupId,
      int articleSubGroupId}) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/Revenue/ArticleSubGroup".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (startDate != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "startDate", startDate));
    }
    if (endDate != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "endDate", endDate));
    }
    if (articleGroupId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "articleGroupId", articleGroupId));
    }
    if (articleSubGroupId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "articleSubGroupId", articleSubGroupId));
    }

    List<String> contentTypes = [
      "application/json;v=1.13",
      "application/json;v=1.12"
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
      return (apiClient.deserialize(response.body, 'List<Revenue>') as List)
          .map((item) => item as Revenue)
          .toList();
    } else {
      return null;
    }
  }

  /// Get revenue for specific brand for a specified period.
  ///
  ///
  Future<List<Revenue>> revenueForBrand(
      {DateTime startDate, DateTime endDate, int brandId}) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/Revenue/Brand".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (startDate != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "startDate", startDate));
    }
    if (endDate != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "endDate", endDate));
    }
    if (brandId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "brandId", brandId));
    }

    List<String> contentTypes = [
      "application/json;v=1.13",
      "application/json;v=1.12"
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
      return (apiClient.deserialize(response.body, 'List<Revenue>') as List)
          .map((item) => item as Revenue)
          .toList();
    } else {
      return null;
    }
  }

  /// Get revenue for customer for a specified period.
  ///
  ///
  Future<List<CustomerRevenue>> revenueForCustomerDetailed(
      {DateTime startDate, DateTime endDate, int customerId}) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/Revenue/Customer".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (startDate != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "startDate", startDate));
    }
    if (endDate != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "endDate", endDate));
    }
    if (customerId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "customerId", customerId));
    }

    List<String> contentTypes = ["application/json;v=1.13"];

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
      return (apiClient.deserialize(response.body, 'List<CustomerRevenue>')
              as List)
          .map((item) => item as CustomerRevenue)
          .toList();
    } else {
      return null;
    }
  }

  /// Get revenue for product for specified period.
  ///
  ///
  Future<List<Revenue>> revenueForProduct(
      {DateTime startDate, DateTime endDate, String productId}) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/Revenue/Product".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (startDate != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "startDate", startDate));
    }
    if (endDate != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "endDate", endDate));
    }
    if (productId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "productId", productId));
    }

    List<String> contentTypes = [
      "application/json;v=1.13",
      "application/json;v=1.12"
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
      return (apiClient.deserialize(response.body, 'List<Revenue>') as List)
          .map((item) => item as Revenue)
          .toList();
    } else {
      return null;
    }
  }

  /// Get revenue for sales representative for a specified period.
  ///
  ///
  Future<List<Revenue>> revenueForSalesRepresentative(
      {DateTime startDate, DateTime endDate, int salesRepresentativeId}) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path =
        "/api/Revenue/SalesRepresentative".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (startDate != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "startDate", startDate));
    }
    if (endDate != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "endDate", endDate));
    }
    if (salesRepresentativeId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "salesRepresentativeId", salesRepresentativeId));
    }

    List<String> contentTypes = [
      "application/json;v=1.13",
      "application/json;v=1.12"
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
      return (apiClient.deserialize(response.body, 'List<Revenue>') as List)
          .map((item) => item as Revenue)
          .toList();
    } else {
      return null;
    }
  }

  /// Get revenue for supplier for specified period.
  ///
  ///
  Future<List<Revenue>> revenueForSupplier(
      {DateTime startDate, DateTime endDate, int supplierId}) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/Revenue/Supplier".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (startDate != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "startDate", startDate));
    }
    if (endDate != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "endDate", endDate));
    }
    if (supplierId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "supplierId", supplierId));
    }

    List<String> contentTypes = [
      "application/json;v=1.13",
      "application/json;v=1.12"
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
      return (apiClient.deserialize(response.body, 'List<Revenue>') as List)
          .map((item) => item as Revenue)
          .toList();
    } else {
      return null;
    }
  }
}
