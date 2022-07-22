part of swagger.api;

class UmsAuthorizerApi {
  final ApiClient apiClient;

  UmsAuthorizerApi([ApiClient apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  /// Adds authorizer
  ///
  ///
  Future addAuthorizer({int lsoort, int debinr, int medwnr, int atmwnr}) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path =
        "/api/UmsAuthorizer/api/UmsAuthorizer".replaceAll("{format}", "json");

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
    if (atmwnr != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "atmwnr", atmwnr));
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

  /// Retrieves if authorizer is required
  ///
  ///
  Future<bool> authorizerRequired(int lsoort, int debinr, int medwnr) async {
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
    String path = "/api/UmsAuthorizer/required/{lsoort}/{debinr}/{medwnr}"
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
      return apiClient.deserialize(response.body, 'bool') as bool;
    } else {
      return null;
    }
  }

  /// Gets UMS authorizers of selected company
  ///
  ///
  Future<List<UmsModelsAuthorizer>> getAuthorizersForCompany(
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
    String path = "/api/UmsAuthorizer/{lsoort}/{debinr}"
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
      return (apiClient.deserialize(response.body, 'List<UmsModelsAuthorizer>')
              as List)
          .map((item) => item as UmsModelsAuthorizer)
          .toList();
    } else {
      return null;
    }
  }

  /// Gets UMS authorizers for selected employee
  ///
  ///
  Future<List<UmsModelsAuthorizer>> getAuthorizersForEmployee(
      int lsoort, int debinr, int medwnr) async {
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
    String path = "/api/UmsAuthorizer/{lsoort}/{debinr}/{medwnr}"
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
      return (apiClient.deserialize(response.body, 'List<UmsModelsAuthorizer>')
              as List)
          .map((item) => item as UmsModelsAuthorizer)
          .toList();
    } else {
      return null;
    }
  }

  /// Updates display order authorizers
  ///
  ///
  Future putDisplayOrder(
      {int lsoort, int debinr, int medwnr, int volgnr, int nvolgnr}) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path =
        "/api/UmsAuthorizer/api/UmsAuthorizer".replaceAll("{format}", "json");

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
    if (volgnr != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "volgnr", volgnr));
    }
    if (nvolgnr != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "nvolgnr", nvolgnr));
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
      return;
    } else {
      return;
    }
  }

  /// Deletes Authorizer for selected employee
  ///
  ///
  Future removeAuthorizer(
      {int lsoort, int debinr, int medwnr, int volgnr}) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path =
        "/api/UmsAuthorizer/api/UmsAuthorizer".replaceAll("{format}", "json");

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
    if (volgnr != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "volgnr", volgnr));
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

  /// Gets UMS roles
  ///
  ///
  Future<List<UMSRole>> rolesForCustomer(int customerId, int storeId) async {
    Object postBody = null;

    // verify required params are set
    if (customerId == null) {
      throw new ApiException(400, "Missing required param: customerId");
    }
    if (storeId == null) {
      throw new ApiException(400, "Missing required param: storeId");
    }

    // create path and map variables
    String path = "/api/UmsRoles/{customerId}/{storeId}"
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
      return (apiClient.deserialize(response.body, 'List<UMSRole>') as List)
          .map((item) => item as UMSRole)
          .toList();
    } else {
      return null;
    }
  }

  /// Gets UMS role
  ///
  ///
  Future<UMSRole> umsRole(int customerId, int storeId, int roleId) async {
    Object postBody = null;

    // verify required params are set
    if (customerId == null) {
      throw new ApiException(400, "Missing required param: customerId");
    }
    if (storeId == null) {
      throw new ApiException(400, "Missing required param: storeId");
    }
    if (roleId == null) {
      throw new ApiException(400, "Missing required param: roleId");
    }

    // create path and map variables
    String path = "/api/UmsRoles/{customerId}/{storeId}/{roleId}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "customerId" + "}", customerId.toString())
        .replaceAll("{" + "storeId" + "}", storeId.toString())
        .replaceAll("{" + "roleId" + "}", roleId.toString());

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
      return apiClient.deserialize(response.body, 'UMSRole') as UMSRole;
    } else {
      return null;
    }
  }
}
