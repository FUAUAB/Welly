part of swagger.api;

class ShippingApi {
  final ApiClient apiClient;

  ShippingApi([ApiClient apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  /// Add shipping address
  ///
  ///
  Future<int> addShippingAddressV19(
      {V19ShippingAddress shippingAddress}) async {
    Object postBody = shippingAddress;

    // verify required params are set

    // create path and map variables
    String path = "/api/Shipping".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [
      "application/json;v=1.13",
      "application/json;v=1.12",
      "application/json;v=1.11",
      "application/json;v=1.10",
      "application/json;v=1.9"
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

  /// This will calculate the shipping costs for a specified list of products.
  ///
  ///
  Future<ShippingCostResult> costs({ShippingCostRequest costsRequest}) async {
    Object postBody = costsRequest;

    // verify required params are set

    // create path and map variables
    String path = "/api/Shipping/Costs".replaceAll("{format}", "json");

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
      return apiClient.deserialize(response.body, 'ShippingCostResult')
          as ShippingCostResult;
    } else {
      return null;
    }
  }

  /// Delete shipping address
  ///
  ///
  Future deleteShippingAddress({int customerId, int shippingAddressId}) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/Shipping".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (customerId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "customerId", customerId));
    }
    if (shippingAddressId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "shippingAddressId", shippingAddressId));
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

    var response = await apiClient.invokeAPI(path, 'DELETE', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return;
    } else {
      return;
    }
  }

  /// Get shipping address statusses
  ///
  ///
  Future<List<V12ShippingAddressStatus>> getAllShippingAddressStatus() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/ShippingAddress/ShippingAddressStatus"
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
      return (apiClient.deserialize(
              response.body, 'List<V12ShippingAddressStatus>') as List)
          .map((item) => item as V12ShippingAddressStatus)
          .toList();
    } else {
      return null;
    }
  }

  /// Get shipping address
  ///
  ///
  Future<V19ShippingAddress> getShippingAddressV111(
      {int customerId, int shippingAddressId}) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/Shipping".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (customerId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "customerId", customerId));
    }
    if (shippingAddressId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "shippingAddressId", shippingAddressId));
    }

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

    var response = await apiClient.invokeAPI(path, 'GET', queryParams, postBody,
        headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'V19ShippingAddress')
          as V19ShippingAddress;
    } else {
      return null;
    }
  }

  /// Get shipping method
  ///
  ///
  Future<ShippingMethod> getShippingMethodById({int id, int languageId}) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/Shipping/Method".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (id != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "Id", id));
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
      return apiClient.deserialize(response.body, 'ShippingMethod')
          as ShippingMethod;
    } else {
      return null;
    }
  }

  /// Get shipping address status by ID
  ///
  ///
  Future<V12ShippingAddressStatus> shippingAddressStatusById(
      int shippingAddressStatusId) async {
    Object postBody = null;

    // verify required params are set
    if (shippingAddressStatusId == null) {
      throw new ApiException(
          400, "Missing required param: shippingAddressStatusId");
    }

    // create path and map variables
    String path =
        "/api/ShippingAddress/ShippingAddressStatus/{shippingAddressStatusId}"
            .replaceAll("{format}", "json")
            .replaceAll("{" + "shippingAddressStatusId" + "}",
                shippingAddressStatusId.toString());

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
      return apiClient.deserialize(response.body, 'V12ShippingAddressStatus')
          as V12ShippingAddressStatus;
    } else {
      return null;
    }
  }

  /// Get shipping methods
  ///
  ///
  Future<List<ShippingMethod>> shippingMethods({int languageId}) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/Shipping/Methods".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
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
      return (apiClient.deserialize(response.body, 'List<ShippingMethod>')
              as List)
          .map((item) => item as ShippingMethod)
          .toList();
    } else {
      return null;
    }
  }

  /// Get shipping methods for webshop
  ///
  ///
  Future<List<ShippingMethodWebshop>> shippingMethodsWebshop(
      {int storeId}) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/Shipping/MethodsWebshop".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (storeId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "storeId", storeId));
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
      return (apiClient.deserialize(
              response.body, 'List<ShippingMethodWebshop>') as List)
          .map((item) => item as ShippingMethodWebshop)
          .toList();
    } else {
      return null;
    }
  }

  /// Get webshop shipping methods for customer
  ///
  ///
  Future<List<ShippingMethodWebshop>> shippingMethodsWebshopForCustomer(
      int customerId,
      {int storeId}) async {
    Object postBody = null;

    // verify required params are set
    if (customerId == null) {
      throw new ApiException(400, "Missing required param: customerId");
    }

    // create path and map variables
    String path = "/api/Shipping/MethodsWebshop/{customerId}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "customerId" + "}", customerId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (storeId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "storeId", storeId));
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
      return (apiClient.deserialize(
              response.body, 'List<ShippingMethodWebshop>') as List)
          .map((item) => item as ShippingMethodWebshop)
          .toList();
    } else {
      return null;
    }
  }

  /// Update shipping address
  ///
  ///
  Future updateShippingAddressV111({V19ShippingAddress shippingAddress}) async {
    Object postBody = shippingAddress;

    // verify required params are set

    // create path and map variables
    String path = "/api/Shipping".replaceAll("{format}", "json");

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
      return;
    } else {
      return;
    }
  }
}
