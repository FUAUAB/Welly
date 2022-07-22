part of swagger.api;

class BudgetApi {
  final ApiClient apiClient;

  BudgetApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Adds budget usage for specific budget of employee
  ///
  ///
  Future<bool> addUsage(
      {int lsoort,
      int debinr,
      int medwnr,
      int bgtpnr,
      DateTime stardd,
      DateTime einddd,
      double budgbd}) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/Budget/api/Budget".replaceAll("{format}", "json");

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
    if (bgtpnr != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "bgtpnr", bgtpnr));
    }
    if (stardd != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "stardd", stardd));
    }
    if (einddd != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "einddd", einddd));
    }
    if (budgbd != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "budgbd", budgbd));
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

  /// Deactivate specific budget of employee
  ///
  ///
  Future<bool> deActivate(
      {int lsoort,
      int debinr,
      int medwnr,
      int bgtpnr,
      DateTime stardd,
      String user}) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path =
        "/api/Budget/api/Budget/Deactivate".replaceAll("{format}", "json");

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
    if (bgtpnr != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "bgtpnr", bgtpnr));
    }
    if (stardd != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "stardd", stardd));
    }
    if (user != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "user", user));
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

  /// Delete budget usage of specific budget of employee
  ///
  ///
  Future<bool> deleteUsage(
      {int lsoort, int debinr, int medwnr, int bgtpnr, DateTime stardd}) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/Budget/api/Budget".replaceAll("{format}", "json");

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
    if (bgtpnr != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "bgtpnr", bgtpnr));
    }
    if (stardd != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "stardd", stardd));
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

  /// Gets usage of active budget of specified employee
  ///
  ///
  Future<List<UmsModelsBudgetUsage>> getActiveBudgetUsageForUser(
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
    String path = "/api/Budget/active/{lsoort}/{debinr}/{medwnr}"
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
      return (apiClient.deserialize(response.body, 'List<UmsModelsBudgetUsage>')
              as List)
          .map((item) => item as UmsModelsBudgetUsage)
          .toList();
    } else {
      return null;
    }
  }

  /// Gets all available budgets of customer
  ///
  ///
  Future<List<Budget>> getAllBudgetsForCustomer(int lsoort, int debinr) async {
    Object postBody = null;

    // verify required params are set
    if (lsoort == null) {
      throw new ApiException(400, "Missing required param: lsoort");
    }
    if (debinr == null) {
      throw new ApiException(400, "Missing required param: debinr");
    }

    // create path and map variables
    String path = "/api/Budget/{lsoort}/{debinr}"
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
      return (apiClient.deserialize(response.body, 'List<Budget>') as List)
          .map((item) => item as Budget)
          .toList();
    } else {
      return null;
    }
  }

  /// Gets specific budget
  ///
  ///
  Future<Budget> getBudgetById(int bgtpnr) async {
    Object postBody = null;

    // verify required params are set
    if (bgtpnr == null) {
      throw new ApiException(400, "Missing required param: bgtpnr");
    }

    // create path and map variables
    String path = "/api/Budget/{bgtpnr}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "bgtpnr" + "}", bgtpnr.toString());

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

    var response = await apiClient.invokeAPI(path, 'GET', queryParams, postBody,
        headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'Budget') as Budget;
    } else {
      return null;
    }
  }

  /// Gets budget overview for specified user
  ///
  ///
  Future<List<V111BudgetOverview>> getBudgetOverviewForUserV111(
      {int storeId,
      int customerId,
      int employeeId,
      String budgetTypeCode,
      List<String> productIds,
      List<double> orderQty}) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/Budget/BudgetOverview".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (storeId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "storeId", storeId));
    }
    if (customerId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "customerId", customerId));
    }
    if (employeeId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "employeeId", employeeId));
    }
    if (budgetTypeCode != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "budgetTypeCode", budgetTypeCode));
    }
    if (productIds != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "multi", "productIds", productIds));
    }
    if (orderQty != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("multi", "orderQty", orderQty));
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
      return (apiClient.deserialize(response.body, 'List<V111BudgetOverview>')
              as List)
          .map((item) => item as V111BudgetOverview)
          .toList();
    } else {
      return null;
    }
  }

  /// Gets budget usage of selected employee
  ///
  ///
  Future<List<UmsModelsBudgetUsage>> getBudgetUsageForUser(
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
    String path = "/api/Budget/{lsoort}/{debinr}/{medwnr}"
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
      return (apiClient.deserialize(response.body, 'List<UmsModelsBudgetUsage>')
              as List)
          .map((item) => item as UmsModelsBudgetUsage)
          .toList();
    } else {
      return null;
    }
  }

  /// Gets enddate of specific budget
  ///
  ///
  Future<DateTime> getEndDate(int bgtpnr, DateTime stardd) async {
    Object postBody = null;

    // verify required params are set
    if (bgtpnr == null) {
      throw new ApiException(400, "Missing required param: bgtpnr");
    }
    if (stardd == null) {
      throw new ApiException(400, "Missing required param: stardd");
    }

    // create path and map variables
    String path = "/api/Budget/api/Budget/enddate/{bgtpnr}/{stardd}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "bgtpnr" + "}", bgtpnr.toString())
        .replaceAll("{" + "stardd" + "}", stardd.toString());

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
      return apiClient.deserialize(response.body, 'DateTime') as DateTime;
    } else {
      return null;
    }
  }

  /// Update specific budget of employee
  ///
  ///
  Future<bool> updateUsage(
      {int lsoort,
      int debinr,
      int medwnr,
      int bgtpnr,
      DateTime ostardd,
      DateTime nstardd,
      DateTime neinddd,
      double budgbd,
      String txtblk}) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/Budget/api/Budget".replaceAll("{format}", "json");

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
    if (bgtpnr != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "bgtpnr", bgtpnr));
    }
    if (ostardd != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "ostardd", ostardd));
    }
    if (nstardd != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "nstardd", nstardd));
    }
    if (neinddd != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "neinddd", neinddd));
    }
    if (budgbd != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "budgbd", budgbd));
    }
    if (txtblk != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "txtblk", txtblk));
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
}
