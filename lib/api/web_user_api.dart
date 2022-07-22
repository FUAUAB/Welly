part of swagger.api;

class WebUserApi {
  final ApiClient apiClient;

  WebUserApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Cancels selected webshop user. API Update requests for this webshop user are no longer possible.
  ///
  ///
  Future deleteWebshopUserV19({int lsoort, int debinr, int medwnr}) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/WebshopUser".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (lsoort != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "lsoort", lsoort));
    }
    if (debinr != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "debinr", debinr));
    }
    if (medwnr != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "medwnr", medwnr));
    }

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

  /// Returns a list of all webshop users of selected customer and user (sub)group (optional)
  ///
  ///
  Future<List<WebUser>> getAllWebUsers(int storeId, int customerId,
      {int groupId, int subGroupId}) async {
    Object postBody = null;

    // verify required params are set
    if (storeId == null) {
      throw new ApiException(400, "Missing required param: storeId");
    }
    if (customerId == null) {
      throw new ApiException(400, "Missing required param: customerId");
    }

    // create path and map variables
    String path = "/api/WebshopUser".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    queryParams
        .addAll(_convertParametersForCollectionFormat("", "storeId", storeId));
    queryParams.addAll(
        _convertParametersForCollectionFormat("", "customerId", customerId));
    if (groupId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "groupId", groupId));
    }
    if (subGroupId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "subGroupId", subGroupId));
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
      return (apiClient.deserialize(response.body, 'List<WebUser>') as List)
          .map((item) => item as WebUser)
          .toList();
    } else {
      return null;
    }
  }

  /// Gets default settings of webusers from specified customer
  ///
  ///
  Future<UmsModelsUserSettings> getDefaultSettings(
      int lsoort, int debinr) async {
    Object postBody = null;

    // verify required params are set
    if (lsoort == null) {
      throw new ApiException(400, "Missing required param: lsoort");
    }
    if (debinr == null) {
      throw new ApiException(400, "Missing required param: debinr");
    }

    // create path and map variables
    String path = "/api/WebshopUser/Defaultsettings/{lsoort}/{debinr}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "lsoort" + "}", lsoort.toString())
        .replaceAll("{" + "debinr" + "}", debinr.toString());

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
      return apiClient.deserialize(response.body, 'UmsModelsUserSettings')
          as UmsModelsUserSettings;
    } else {
      return null;
    }
  }

  /// Gets EmployeeId as specified by username
  ///
  ///
  Future<int> getEmployeeIdByUsername(int lsoort, String username) async {
    Object postBody = null;

    // verify required params are set
    if (lsoort == null) {
      throw new ApiException(400, "Missing required param: lsoort");
    }
    if (username == null) {
      throw new ApiException(400, "Missing required param: username");
    }

    // create path and map variables
    String path = "/api/WebshopUser/WebshopUserId/{lsoort}/{username}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "lsoort" + "}", lsoort.toString())
        .replaceAll("{" + "username" + "}", username.toString());

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
      return apiClient.deserialize(response.body, 'int') as int;
    } else {
      return null;
    }
  }

  /// Returns details for a specified user group
  ///
  ///
  Future<UmsModelsUmsGroup> groupById(
      int storeId, int customerId, int groupId) async {
    Object postBody = null;

    // verify required params are set
    if (storeId == null) {
      throw new ApiException(400, "Missing required param: storeId");
    }
    if (customerId == null) {
      throw new ApiException(400, "Missing required param: customerId");
    }
    if (groupId == null) {
      throw new ApiException(400, "Missing required param: groupId");
    }

    // create path and map variables
    String path = "/api/WebshopUser/Groups/{storeId}/{customerId}/{groupId}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "storeId" + "}", storeId.toString())
        .replaceAll("{" + "customerId" + "}", customerId.toString())
        .replaceAll("{" + "groupId" + "}", groupId.toString());

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
      return apiClient.deserialize(response.body, 'UmsModelsUmsGroup')
          as UmsModelsUmsGroup;
    } else {
      return null;
    }
  }

  /// Returns a list of all user groups specified for this customer
  ///
  ///
  Future<List<UmsModelsUmsGroup>> groupsByCustomerId(
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
    String path = "/api/WebshopUser/Groups/{storeId}/{customerId}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "storeId" + "}", storeId.toString())
        .replaceAll("{" + "customerId" + "}", customerId.toString());

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
      return (apiClient.deserialize(response.body, 'List<UmsModelsUmsGroup>')
              as List)
          .map((item) => item as UmsModelsUmsGroup)
          .toList();
    } else {
      return null;
    }
  }

  /// Creates a new webshop user for selected customer
  ///
  ///
  Future<int> postUser(
      {int companyId, int storeId, int customerId, WebUser user}) async {
    Object postBody = user;

    // verify required params are set

    // create path and map variables
    String path = "/api/WebshopUser".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (companyId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "companyId", companyId));
    }
    if (storeId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "storeId", storeId));
    }
    if (customerId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "customerId", customerId));
    }

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

  /// Get size form
  ///
  ///
  Future<MultipartFile> sizeForm(int lsoort, int debinr, int medwnr) async {
    Object postBody = null;

    // verify required params are set
    if (lsoort == null) {
      throw new ApiException(400, "Missing required param: lsoort");
    }
    if (debinr == null) {
      throw new ApiException(400, "Missing required param: debinr");
    }
    if (medwnr == null) {
      throw new ApiException(400, "Missing required param: medwnr");
    }

    // create path and map variables
    String path = "/api/WebshopUser/SizeForm/{lsoort}/{debinr}/{medwnr}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "lsoort" + "}", lsoort.toString())
        .replaceAll("{" + "debinr" + "}", debinr.toString())
        .replaceAll("{" + "medwnr" + "}", medwnr.toString());

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

  /// Returns details for a specified user subgroup
  ///
  ///
  Future<UmsModelsUmsGroup> subGroupById(
      int storeId, int customerId, int groupId, int subgroupId) async {
    Object postBody = null;

    // verify required params are set
    if (storeId == null) {
      throw new ApiException(400, "Missing required param: storeId");
    }
    if (customerId == null) {
      throw new ApiException(400, "Missing required param: customerId");
    }
    if (groupId == null) {
      throw new ApiException(400, "Missing required param: groupId");
    }
    if (subgroupId == null) {
      throw new ApiException(400, "Missing required param: subgroupId");
    }

    // create path and map variables
    String path =
        "/api/WebshopUser/Groups/{storeId}/{customerId}/{groupId}/{subgroupId}"
            .replaceAll("{format}", "json")
            .replaceAll("{" + "storeId" + "}", storeId.toString())
            .replaceAll("{" + "customerId" + "}", customerId.toString())
            .replaceAll("{" + "groupId" + "}", groupId.toString())
            .replaceAll("{" + "subgroupId" + "}", subgroupId.toString());

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
      return apiClient.deserialize(response.body, 'UmsModelsUmsGroup')
          as UmsModelsUmsGroup;
    } else {
      return null;
    }
  }

  /// Returns a list of all user subgroups for a specified user group
  ///
  ///
  Future<List<UmsModelsUmsGroup>> subGroups(
      int storeId, int customerId, int groupId) async {
    Object postBody = null;

    // verify required params are set
    if (storeId == null) {
      throw new ApiException(400, "Missing required param: storeId");
    }
    if (customerId == null) {
      throw new ApiException(400, "Missing required param: customerId");
    }
    if (groupId == null) {
      throw new ApiException(400, "Missing required param: groupId");
    }

    // create path and map variables
    String path = "/api/WebshopUser/SubGroups/{storeId}/{customerId}/{groupId}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "storeId" + "}", storeId.toString())
        .replaceAll("{" + "customerId" + "}", customerId.toString())
        .replaceAll("{" + "groupId" + "}", groupId.toString());

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
      return (apiClient.deserialize(response.body, 'List<UmsModelsUmsGroup>')
              as List)
          .map((item) => item as UmsModelsUmsGroup)
          .toList();
    } else {
      return null;
    }
  }

  /// Updates webshop user with selected data
  ///
  ///
  Future updateUser({int lsoort, int debinr, WebUser user}) async {
    Object postBody = user;

    // verify required params are set

    // create path and map variables
    String path = "/api/WebshopUser".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (lsoort != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "lsoort", lsoort));
    }
    if (debinr != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "debinr", debinr));
    }

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

  /// Upload size form
  ///
  ///
  Future<bool> uploadSizeForm(
      MultipartFile uploadedFile, int lsoort, int debinr, int medwnr) async {
    Object postBody = null;

    // verify required params are set
    if (uploadedFile == null) {
      throw new ApiException(400, "Missing required param: uploadedFile");
    }
    if (lsoort == null) {
      throw new ApiException(400, "Missing required param: lsoort");
    }
    if (debinr == null) {
      throw new ApiException(400, "Missing required param: debinr");
    }
    if (medwnr == null) {
      throw new ApiException(400, "Missing required param: medwnr");
    }

    // create path and map variables
    String path = "/api/WebshopUser/SizeForm/{lsoort}/{debinr}/{medwnr}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "lsoort" + "}", lsoort.toString())
        .replaceAll("{" + "debinr" + "}", debinr.toString())
        .replaceAll("{" + "medwnr" + "}", medwnr.toString());

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
      "multipart/form-data;v=1.13",
      "multipart/form-data;v=1.12",
      "multipart/form-data;v=1.11",
      "multipart/form-data;v=1.10",
      "multipart/form-data;v=1.9",
      "multipart/form-data;v=1.8",
      "multipart/form-data;v=1.7",
      "multipart/form-data;v=1.6",
      "multipart/form-data;v=1.5",
      "multipart/form-data;v=1.4"
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

  /// Gets webshop user as specified by EmployeeId
  ///
  ///
  Future<WebUser> webUserByEmployeeId(
      int storeId, int customerId, int employeeId) async {
    Object postBody = null;

    // verify required params are set
    if (storeId == null) {
      throw new ApiException(400, "Missing required param: storeId");
    }
    if (customerId == null) {
      throw new ApiException(400, "Missing required param: customerId");
    }
    if (employeeId == null) {
      throw new ApiException(400, "Missing required param: employeeId");
    }

    // create path and map variables
    String path = "/api/WebshopUser/{storeId}/{customerId}/{employeeId}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "storeId" + "}", storeId.toString())
        .replaceAll("{" + "customerId" + "}", customerId.toString())
        .replaceAll("{" + "employeeId" + "}", employeeId.toString());

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
      return apiClient.deserialize(response.body, 'WebUser') as WebUser;
    } else {
      return null;
    }
  }
}
