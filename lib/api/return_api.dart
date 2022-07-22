part of swagger.api;

class ReturnApi {
  final ApiClient apiClient;

  ReturnApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Get return order
  ///
  ///
  Future<ModelReturn> getReturnById(
      int companyId, int branchId, int returnId) async {
    Object postBody = null;

    // verify required params are set
    if (companyId == null) {
      throw new ApiException(400, "Missing required param: companyId");
    }
    if (branchId == null) {
      throw new ApiException(400, "Missing required param: branchId");
    }
    if (returnId == null) {
      throw new ApiException(400, "Missing required param: returnId");
    }

    // create path and map variables
    String path = "/api/Return/{companyId}/{branchId}/{returnId}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "companyId" + "}", companyId.toString())
        .replaceAll("{" + "branchId" + "}", branchId.toString())
        .replaceAll("{" + "returnId" + "}", returnId.toString());

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
      return apiClient.deserialize(response.body, 'ModelReturn') as ModelReturn;
    } else {
      return null;
    }
  }

  /// Get return orders. Please be advised: when including a store ID in the request, the response will only include returns with orders from that respective store. Combined returns (i.e. with orders from different stores) will not be included.
  ///
  ///
  Future<List<ModelReturn>> getReturnOrders(
      int storeId,
      int companyId,
      int branchId,
      int customerId,
      int employeeId,
      bool onlyShowOwnData) async {
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
    if (employeeId == null) {
      throw new ApiException(400, "Missing required param: employeeId");
    }
    if (onlyShowOwnData == null) {
      throw new ApiException(400, "Missing required param: onlyShowOwnData");
    }

    // create path and map variables
    String path =
        "/api/Return/{storeId}/{companyId}/{branchId}/{customerId}/{employeeId}/{onlyShowOwnData}"
            .replaceAll("{format}", "json")
            .replaceAll("{" + "storeId" + "}", storeId.toString())
            .replaceAll("{" + "companyId" + "}", companyId.toString())
            .replaceAll("{" + "branchId" + "}", branchId.toString())
            .replaceAll("{" + "customerId" + "}", customerId.toString())
            .replaceAll("{" + "employeeId" + "}", employeeId.toString())
            .replaceAll(
                "{" + "onlyShowOwnData" + "}", onlyShowOwnData.toString());

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
      return (apiClient.deserialize(response.body, 'List<ModelReturn>') as List)
          .map((item) => item as ModelReturn)
          .toList();
    } else {
      return null;
    }
  }

  /// Request return shipment
  ///
  ///
  Future<ModelReturn> requestReturnShipment(
      {ReturnDelivery requestedReturn}) async {
    Object postBody = requestedReturn;

    // verify required params are set

    // create path and map variables
    String path = "/api/Return".replaceAll("{format}", "json");

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
      return apiClient.deserialize(response.body, 'ModelReturn') as ModelReturn;
    } else {
      return null;
    }
  }

  /// Get return order form in pdf
  ///
  ///
  Future<MultipartFile> returnFormPDF(
      int companyId, int branchId, int returnId) async {
    Object postBody = null;

    // verify required params are set
    if (companyId == null) {
      throw new ApiException(400, "Missing required param: companyId");
    }
    if (branchId == null) {
      throw new ApiException(400, "Missing required param: branchId");
    }
    if (returnId == null) {
      throw new ApiException(400, "Missing required param: returnId");
    }

    // create path and map variables
    String path = "/api/Return/ReturnFormPDF/{companyId}/{branchId}/{returnId}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "companyId" + "}", companyId.toString())
        .replaceAll("{" + "branchId" + "}", branchId.toString())
        .replaceAll("{" + "returnId" + "}", returnId.toString());

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

  /// Get return label in pdf
  ///
  ///
  Future<MultipartFile> returnLabelPDF(
      int companyId, int branchId, int returnId) async {
    Object postBody = null;

    // verify required params are set
    if (companyId == null) {
      throw new ApiException(400, "Missing required param: companyId");
    }
    if (branchId == null) {
      throw new ApiException(400, "Missing required param: branchId");
    }
    if (returnId == null) {
      throw new ApiException(400, "Missing required param: returnId");
    }

    // create path and map variables
    String path = "/api/Return/ReturnLabelPDF/{companyId}/{branchId}/{returnId}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "companyId" + "}", companyId.toString())
        .replaceAll("{" + "branchId" + "}", branchId.toString())
        .replaceAll("{" + "returnId" + "}", returnId.toString());

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

  /// Request return shipment methods
  ///
  ///
  Future<List<ReturnMethod>> returnMethods(int customerId, int storeId) async {
    Object postBody = null;

    // verify required params are set
    if (customerId == null) {
      throw new ApiException(400, "Missing required param: customerId");
    }
    if (storeId == null) {
      throw new ApiException(400, "Missing required param: storeId");
    }

    // create path and map variables
    String path = "/api/Return/Methods/{customerId}/{storeId}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "customerId" + "}", customerId.toString())
        .replaceAll("{" + "storeId" + "}", storeId.toString());

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
      return (apiClient.deserialize(response.body, 'List<ReturnMethod>')
              as List)
          .map((item) => item as ReturnMethod)
          .toList();
    } else {
      return null;
    }
  }

  /// Request Returned items
  ///
  ///
  Future<List<ReturnedItem>> returnedItems(
      int companyId, int branchId, int orderId, int deliveryId) async {
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
        "/api/Return/Items/{companyId}/{branchId}/{orderId}/{deliveryId}"
            .replaceAll("{format}", "json")
            .replaceAll("{" + "companyId" + "}", companyId.toString())
            .replaceAll("{" + "branchId" + "}", branchId.toString())
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
      return (apiClient.deserialize(response.body, 'List<ReturnedItem>')
              as List)
          .map((item) => item as ReturnedItem)
          .toList();
    } else {
      return null;
    }
  }
}
