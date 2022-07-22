part of swagger.api;

class ProductSelectionApi {
  final ApiClient apiClient;

  ProductSelectionApi([ApiClient apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  /// Add product selection to employee
  ///
  ///
  Future add({int lsoort, int debinr, int medwnr, int webanr}) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/Productselection/api/Productselection"
        .replaceAll("{format}", "json");

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
    if (webanr != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "webanr", webanr));
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
      return;
    } else {
      return;
    }
  }

  /// Delete product selection from employee
  ///
  ///
  Future deleteProductSelection(
      {int lsoort, int debinr, int medwnr, int webanr}) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/Productselection/api/Productselection"
        .replaceAll("{format}", "json");

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
    if (webanr != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "webanr", webanr));
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

  /// Get product selections of specific customer
  ///
  ///
  Future<List<UmsCustomerProductSelection>> getByCustomerV16(
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
    String path = "/api/Productselection/Customer/{storeId}/{customerId}"
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
      "application/json;v=1.6"
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
              response.body, 'List<UmsCustomerProductSelection>') as List)
          .map((item) => item as UmsCustomerProductSelection)
          .toList();
    } else {
      return null;
    }
  }

  /// Get categories of product selection
  ///
  ///
  Future<UmsModelsProductSelectionCategoryBudgets> getCategoryBudgets(
      int lsoort, int debinr, int medwnr, int webanr) async {
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
    if (webanr == null) {
      throw new ApiException(400, "Missing required param: webanr");
    }

    // create path and map variables
    String path =
        "/api/Productselection/api/Productselection/Category/{lsoort}/{debinr}/{medwnr}/{webanr}"
            .replaceAll("{format}", "json")
            .replaceAll("{" + "lsoort" + "}", lsoort.toString())
            .replaceAll("{" + "debinr" + "}", debinr.toString())
            .replaceAll("{" + "medwnr" + "}", medwnr.toString())
            .replaceAll("{" + "webanr" + "}", webanr.toString());

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
      return apiClient.deserialize(
              response.body, 'UmsModelsProductSelectionCategoryBudgets')
          as UmsModelsProductSelectionCategoryBudgets;
    } else {
      return null;
    }
  }

  /// Get product selections for employee
  ///
  ///
  Future<List<UmsCustomerProductSelection>> getForEmployeeV16(
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
    String path = "/api/Productselection/{storeId}/{customerId}/{employeeId}"
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
      "application/json;v=1.7",
      "application/json;v=1.6"
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
              response.body, 'List<UmsCustomerProductSelection>') as List)
          .map((item) => item as UmsCustomerProductSelection)
          .toList();
    } else {
      return null;
    }
  }

  /// Get registrated sizes for webshopuser
  ///
  ///
  Future<List<ProductTailoredSize>> getPerfectSizesForUser(
      {int storeId,
      int customerId,
      int employeeId,
      String productGroupId}) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/Productselection/api/Productselection/PerfectSize"
        .replaceAll("{format}", "json");

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
    if (productGroupId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "productGroupId", productGroupId));
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
      return (apiClient.deserialize(response.body, 'List<ProductTailoredSize>')
              as List)
          .map((item) => item as ProductTailoredSize)
          .toList();
    } else {
      return null;
    }
  }

  /// Get specific product selection
  ///
  ///
  Future<UmsModelsProductSelection> getProductSelectionById(
      int lsoort, int webanr) async {
    Object postBody = null;

    // verify required params are set
    if (lsoort == null) {
      throw new ApiException(400, "Missing required param: lsoort");
    }
    if (webanr == null) {
      throw new ApiException(400, "Missing required param: webanr");
    }

    // create path and map variables
    String path = "/api/Productselection/api/Productselection/{lsoort}/{webanr}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "lsoort" + "}", lsoort.toString())
        .replaceAll("{" + "webanr" + "}", webanr.toString());

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
      return apiClient.deserialize(response.body, 'UmsModelsProductSelection')
          as UmsModelsProductSelection;
    } else {
      return null;
    }
  }

  /// Get all possible sizes for customer&#39;s product selection
  ///
  ///
  Future<ProductSelectionSize> productSelectionWithSize(
      {int storeId, int customerId, int employeeId}) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/Productselection/api/ProductSelection/Size"
        .replaceAll("{format}", "json");

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
      return apiClient.deserialize(response.body, 'ProductSelectionSize')
          as ProductSelectionSize;
    } else {
      return null;
    }
  }

  /// Updates categories in budget
  ///
  ///
  Future<bool> updateCategoryBudgetV14(
      {int storeId,
      int customerId,
      int employeeId,
      int productSelectionId,
      int level1,
      int level2,
      int level3,
      int level4,
      int level5,
      double budgbd,
      String txtblk}) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/Productselection/api/Productselection/Category"
        .replaceAll("{format}", "json");

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
    if (productSelectionId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "productSelectionId", productSelectionId));
    }
    if (level1 != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "level1", level1));
    }
    if (level2 != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "level2", level2));
    }
    if (level3 != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "level3", level3));
    }
    if (level4 != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "level4", level4));
    }
    if (level5 != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "level5", level5));
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

  /// Set or reset size of specified product group for user
  ///
  ///
  Future<bool> updatePerfectSizeForUser(
      {V112ProductSizeRequest productSizeRequest}) async {
    Object postBody = productSizeRequest;

    // verify required params are set

    // create path and map variables
    String path = "/api/Productselection/api/ProductSelection/PerfectSize"
        .replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

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
}
