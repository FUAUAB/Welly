part of swagger.api;

class HotlistApi {
  final ApiClient apiClient;

  HotlistApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Add product to hotlist
  ///
  ///
  Future<bool> addToHotlist(int storeId, int customerId, String wLogin,
      int hotlid, String artinr) async {
    Object postBody = null;

    // verify required params are set
    if (storeId == null) {
      throw new ApiException(400, "Missing required param: storeId");
    }
    if (customerId == null) {
      throw new ApiException(400, "Missing required param: customerId");
    }
    if (wLogin == null) {
      throw new ApiException(400, "Missing required param: wLogin");
    }
    if (hotlid == null) {
      throw new ApiException(400, "Missing required param: hotlid");
    }
    if (artinr == null) {
      throw new ApiException(400, "Missing required param: artinr");
    }

    // create path and map variables
    String path = "/api/hotlist/Hotlist/Product".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    queryParams
        .addAll(_convertParametersForCollectionFormat("", "storeId", storeId));
    queryParams.addAll(
        _convertParametersForCollectionFormat("", "customerId", customerId));
    queryParams
        .addAll(_convertParametersForCollectionFormat("", "wLogin", wLogin));
    queryParams
        .addAll(_convertParametersForCollectionFormat("", "hotlid", hotlid));
    queryParams
        .addAll(_convertParametersForCollectionFormat("", "artinr", artinr));

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
      return apiClient.deserialize(response.body, 'bool') as bool;
    } else {
      return null;
    }
  }

  /// Create hotlist
  ///
  ///
  Future<bool> createHotlist(int storeId, int customerId, String wLogin,
      String hotlistDescription, bool defaultList) async {
    Object postBody = null;

    // verify required params are set
    if (storeId == null) {
      throw new ApiException(400, "Missing required param: storeId");
    }
    if (customerId == null) {
      throw new ApiException(400, "Missing required param: customerId");
    }
    if (wLogin == null) {
      throw new ApiException(400, "Missing required param: wLogin");
    }
    if (hotlistDescription == null) {
      throw new ApiException(400, "Missing required param: hotlistDescription");
    }
    if (defaultList == null) {
      throw new ApiException(400, "Missing required param: defaultList");
    }

    // create path and map variables
    String path = "/api/hotlist/Hotlist".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    queryParams
        .addAll(_convertParametersForCollectionFormat("", "storeId", storeId));
    queryParams.addAll(
        _convertParametersForCollectionFormat("", "customerId", customerId));
    queryParams
        .addAll(_convertParametersForCollectionFormat("", "wLogin", wLogin));
    queryParams.addAll(_convertParametersForCollectionFormat(
        "", "hotlistDescription", hotlistDescription));
    queryParams.addAll(
        _convertParametersForCollectionFormat("", "defaultList", defaultList));

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
      return apiClient.deserialize(response.body, 'bool') as bool;
    } else {
      return null;
    }
  }

  /// Delete product from hotlist
  ///
  ///
  Future<bool> deleteFromHotlist(int storeId, int customerId, String wLogin,
      int hotlid, String artinr) async {
    Object postBody = null;

    // verify required params are set
    if (storeId == null) {
      throw new ApiException(400, "Missing required param: storeId");
    }
    if (customerId == null) {
      throw new ApiException(400, "Missing required param: customerId");
    }
    if (wLogin == null) {
      throw new ApiException(400, "Missing required param: wLogin");
    }
    if (hotlid == null) {
      throw new ApiException(400, "Missing required param: hotlid");
    }
    if (artinr == null) {
      throw new ApiException(400, "Missing required param: artinr");
    }

    // create path and map variables
    String path = "/api/hotlist/Hotlist/Product".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    queryParams
        .addAll(_convertParametersForCollectionFormat("", "storeId", storeId));
    queryParams.addAll(
        _convertParametersForCollectionFormat("", "customerId", customerId));
    queryParams
        .addAll(_convertParametersForCollectionFormat("", "wLogin", wLogin));
    queryParams
        .addAll(_convertParametersForCollectionFormat("", "hotlid", hotlid));
    queryParams
        .addAll(_convertParametersForCollectionFormat("", "artinr", artinr));

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

    var response = await apiClient.invokeAPI(path, 'DELETE', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'bool') as bool;
    } else {
      return null;
    }
  }

  /// Delete hotlist
  ///
  ///
  Future<bool> deleteHotlist(
      int storeId, int customerId, String wLogin, int hotlid) async {
    Object postBody = null;

    // verify required params are set
    if (storeId == null) {
      throw new ApiException(400, "Missing required param: storeId");
    }
    if (customerId == null) {
      throw new ApiException(400, "Missing required param: customerId");
    }
    if (wLogin == null) {
      throw new ApiException(400, "Missing required param: wLogin");
    }
    if (hotlid == null) {
      throw new ApiException(400, "Missing required param: hotlid");
    }

    // create path and map variables
    String path = "/api/hotlist/Hotlist".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    queryParams
        .addAll(_convertParametersForCollectionFormat("", "storeId", storeId));
    queryParams.addAll(
        _convertParametersForCollectionFormat("", "customerId", customerId));
    queryParams
        .addAll(_convertParametersForCollectionFormat("", "wLogin", wLogin));
    queryParams
        .addAll(_convertParametersForCollectionFormat("", "hotlid", hotlid));

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

    var response = await apiClient.invokeAPI(path, 'DELETE', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'bool') as bool;
    } else {
      return null;
    }
  }

  /// Edit hotlist
  ///
  ///
  Future<bool> editHotlist(int storeId, int customerId, String wLogin,
      int hotlid, String hotlistDescription,
      {bool defaultList}) async {
    Object postBody = null;

    // verify required params are set
    if (storeId == null) {
      throw new ApiException(400, "Missing required param: storeId");
    }
    if (customerId == null) {
      throw new ApiException(400, "Missing required param: customerId");
    }
    if (wLogin == null) {
      throw new ApiException(400, "Missing required param: wLogin");
    }
    if (hotlid == null) {
      throw new ApiException(400, "Missing required param: hotlid");
    }
    if (hotlistDescription == null) {
      throw new ApiException(400, "Missing required param: hotlistDescription");
    }

    // create path and map variables
    String path = "/api/hotlist/Hotlist".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    queryParams
        .addAll(_convertParametersForCollectionFormat("", "storeId", storeId));
    queryParams.addAll(
        _convertParametersForCollectionFormat("", "customerId", customerId));
    queryParams
        .addAll(_convertParametersForCollectionFormat("", "wLogin", wLogin));
    queryParams
        .addAll(_convertParametersForCollectionFormat("", "hotlid", hotlid));
    queryParams.addAll(_convertParametersForCollectionFormat(
        "", "hotlistDescription", hotlistDescription));
    if (defaultList != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "defaultList", defaultList));
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

  /// Get hotlists for customer
  ///
  ///
  Future<List<V14Hotlist>> getHotlistsForCustomer(
      int storeId, int customerId) async {
    Object postBody = null;

    // verify required params are set
    if (storeId == null) {
      throw new ApiException(400, "Missing required param: storeId");
    }
    if (customerId == null) {
      throw new ApiException(400, "Missing required param: customerId");
    }

    // create path and map variables
    String path =
        "/api/hotlist/Hotlist/Customer".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    queryParams
        .addAll(_convertParametersForCollectionFormat("", "storeId", storeId));
    queryParams.addAll(
        _convertParametersForCollectionFormat("", "customerId", customerId));

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
      return (apiClient.deserialize(response.body, 'List<V14Hotlist>') as List)
          .map((item) => item as V14Hotlist)
          .toList();
    } else {
      return null;
    }
  }

  /// Get hotlist
  ///
  ///
  Future<HotlistDetailed> hotListDetailed(
      int storeId, int customerId, String wLogin, int hotlistId) async {
    Object postBody = null;

    // verify required params are set
    if (storeId == null) {
      throw new ApiException(400, "Missing required param: storeId");
    }
    if (customerId == null) {
      throw new ApiException(400, "Missing required param: customerId");
    }
    if (wLogin == null) {
      throw new ApiException(400, "Missing required param: wLogin");
    }
    if (hotlistId == null) {
      throw new ApiException(400, "Missing required param: hotlistId");
    }

    // create path and map variables
    String path = "/api/hotlist/Hotlist".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    queryParams
        .addAll(_convertParametersForCollectionFormat("", "storeId", storeId));
    queryParams.addAll(
        _convertParametersForCollectionFormat("", "customerId", customerId));
    queryParams
        .addAll(_convertParametersForCollectionFormat("", "wLogin", wLogin));
    queryParams.addAll(
        _convertParametersForCollectionFormat("", "hotlistId", hotlistId));

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
      return apiClient.deserialize(response.body, 'HotlistDetailed')
          as HotlistDetailed;
    } else {
      return null;
    }
  }

  /// Get hotlists for user
  ///
  ///
  Future<List<V14Hotlist>> hotlistForUser(
      int storeId, int customerId, String wLogin) async {
    Object postBody = null;

    // verify required params are set
    if (storeId == null) {
      throw new ApiException(400, "Missing required param: storeId");
    }
    if (customerId == null) {
      throw new ApiException(400, "Missing required param: customerId");
    }
    if (wLogin == null) {
      throw new ApiException(400, "Missing required param: wLogin");
    }

    // create path and map variables
    String path = "/api/hotlist/Hotlist/User".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    queryParams
        .addAll(_convertParametersForCollectionFormat("", "storeId", storeId));
    queryParams.addAll(
        _convertParametersForCollectionFormat("", "customerId", customerId));
    queryParams
        .addAll(_convertParametersForCollectionFormat("", "wLogin", wLogin));

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
      return (apiClient.deserialize(response.body, 'List<V14Hotlist>') as List)
          .map((item) => item as V14Hotlist)
          .toList();
    } else {
      return null;
    }
  }
}
