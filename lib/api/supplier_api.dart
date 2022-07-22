part of swagger.api;

class SupplierApi {
  final ApiClient apiClient;

  SupplierApi([ApiClient apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  /// Get all suppliers
  ///
  ///
  Future<List<V15Supplier>> allSuppliers() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/Supplier".replaceAll("{format}", "json");

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
      "application/json;v=1.8"
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
      return (apiClient.deserialize(response.body, 'List<V15Supplier>') as List)
          .map((item) => item as V15Supplier)
          .toList();
    } else {
      return null;
    }
  }

  /// Find a supplier by SupplierID
  ///
  ///
  Future<V15Supplier> supplierByIdV15(int supplierId) async {
    Object postBody = null;

    // verify required params are set
    if (supplierId == null) {
      throw new ApiException(400, "Missing required param: supplierId");
    }

    // create path and map variables
    String path = "/api/Supplier/Supplier/{SupplierId}"
        .replaceAll("{format}", "json")
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
      return apiClient.deserialize(response.body, 'V15Supplier') as V15Supplier;
    } else {
      return null;
    }
  }

  /// Find a supplier by any of its search options
  ///
  ///
  Future<List<V15Supplier>> supplierV15(
      {String GLN, String vATId, String chamberofCommerceId}) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/Supplier/Supplier".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (GLN != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "GLN", GLN));
    }
    if (vATId != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "VATId", vATId));
    }
    if (chamberofCommerceId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "ChamberofCommerceId", chamberofCommerceId));
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
      return (apiClient.deserialize(response.body, 'List<V15Supplier>') as List)
          .map((item) => item as V15Supplier)
          .toList();
    } else {
      return null;
    }
  }
}
