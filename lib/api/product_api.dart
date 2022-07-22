part of swagger.api;

class ProductApi {
  final ApiClient apiClient;

  ProductApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Add product to ERP from Product Information Management system
  ///
  ///
  Future addProductV14(
      {ProductInformation productInformation,
      int storeId,
      int languageId}) async {
    Object postBody = productInformation;

    // verify required params are set

    // create path and map variables
    String path = "/api/Product/Product".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (storeId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "storeId", storeId));
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

  /// Get package information
  ///
  ///
  Future<List<V12Package>> allPackageInformation({int languageId}) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/Product/Package".replaceAll("{format}", "json");

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
      return (apiClient.deserialize(response.body, 'List<V12Package>') as List)
          .map((item) => item as V12Package)
          .toList();
    } else {
      return null;
    }
  }

  /// Get article groups including applicable ledger accounts
  ///
  ///
  Future<List<ArticleGroup>> articleGroup() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/Product/ArticleGroup".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

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
      return (apiClient.deserialize(response.body, 'List<ArticleGroup>')
              as List)
          .map((item) => item as ArticleGroup)
          .toList();
    } else {
      return null;
    }
  }

  /// Get article group by Id including applicable ledger accounts
  ///
  ///
  Future<List<ArticleGroup>> articleGroupById(int id) async {
    Object postBody = null;

    // verify required params are set
    if (id == null) {
      throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/api/Product/ArticleGroup/{Id}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "Id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

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
      return (apiClient.deserialize(response.body, 'List<ArticleGroup>')
              as List)
          .map((item) => item as ArticleGroup)
          .toList();
    } else {
      return null;
    }
  }

  /// Get article sub groups, optionally specified by parent article group ID.
  ///
  ///
  Future<List<ArticleGroup>> articleSubGroups({int articleGroupId}) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/Product/ArticleSubGroup".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (articleGroupId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "articleGroupId", articleGroupId));
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
      return (apiClient.deserialize(response.body, 'List<ArticleGroup>')
              as List)
          .map((item) => item as ArticleGroup)
          .toList();
    } else {
      return null;
    }
  }

  /// Get a list of all product availability per branch for a specific company
  ///
  ///
  Future<List<V13BranchAvailabilityResult>> branchAvailability(
      {int companyId, String productId}) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path =
        "/api/Product/BranchAvailability".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (companyId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "companyId", companyId));
    }
    if (productId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "productId", productId));
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
      "application/json;v=1.3"
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
              response.body, 'List<V13BranchAvailabilityResult>') as List)
          .map((item) => item as V13BranchAvailabilityResult)
          .toList();
    } else {
      return null;
    }
  }

  /// Return a list of all product brands.
  ///
  ///
  Future<List<Brand>> brands() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/Product/Brand".replaceAll("{format}", "json");

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

    var response = await apiClient.invokeAPI(path, 'GET', queryParams, postBody,
        headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return (apiClient.deserialize(response.body, 'List<Brand>') as List)
          .map((item) => item as Brand)
          .toList();
    } else {
      return null;
    }
  }

  /// Create customer product reference in ERP for specified customer and product
  ///
  ///
  Future<CustomerProductReference> createCustomerProductReference(
      {CustomerProductReferenceRequest request}) async {
    Object postBody = request;

    // verify required params are set

    // create path and map variables
    String path =
        "/api/Product/CustomerProductReference".replaceAll("{format}", "json");

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

    var response = await apiClient.invokeAPI(path, 'POST', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'CustomerProductReference')
          as CustomerProductReference;
    } else {
      return null;
    }
  }

  /// Get customer product references for specified customer and product
  ///
  ///
  Future<CustomerProductReference> customerProductReference(
      int customerId, String productId) async {
    Object postBody = null;

    // verify required params are set
    if (customerId == null) {
      throw new ApiException(400, "Missing required param: customerId");
    }
    if (productId == null) {
      throw new ApiException(400, "Missing required param: productId");
    }

    // create path and map variables
    String path =
        "/api/Product/CustomerProductReference/{customerId}/{productId}"
            .replaceAll("{format}", "json")
            .replaceAll("{" + "customerId" + "}", customerId.toString())
            .replaceAll("{" + "productId" + "}", productId.toString());

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
      return apiClient.deserialize(response.body, 'CustomerProductReference')
          as CustomerProductReference;
    } else {
      return null;
    }
  }

  /// Get a list of customer product references for specified customer
  ///
  ///
  Future<List<CustomerProductReference>> customerProductReferenceList(
      int customerId) async {
    Object postBody = null;

    // verify required params are set
    if (customerId == null) {
      throw new ApiException(400, "Missing required param: customerId");
    }

    // create path and map variables
    String path = "/api/Product/CustomerProductReference/{customerId}"
        .replaceAll("{format}", "json")
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
      return (apiClient.deserialize(
              response.body, 'List<CustomerProductReference>') as List)
          .map((item) => item as CustomerProductReference)
          .toList();
    } else {
      return null;
    }
  }

  /// Get customer specific products
  ///
  ///
  Future<List<CustomerSpecificProducts>> customerSpecific({int storeId}) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path =
        "/api/Product/CustomerSpecific".replaceAll("{format}", "json");

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
      return (apiClient.deserialize(
              response.body, 'List<CustomerSpecificProducts>') as List)
          .map((item) => item as CustomerSpecificProducts)
          .toList();
    } else {
      return null;
    }
  }

  /// Get customer specific products for specified customer
  ///
  ///
  Future<List<CustomerSpecificProducts>> customerSpecificById(int customerId,
      {int storeId}) async {
    Object postBody = null;

    // verify required params are set
    if (customerId == null) {
      throw new ApiException(400, "Missing required param: customerId");
    }

    // create path and map variables
    String path = "/api/Product/CustomerSpecific/{customerId}"
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
      return (apiClient.deserialize(
              response.body, 'List<CustomerSpecificProducts>') as List)
          .map((item) => item as CustomerSpecificProducts)
          .toList();
    } else {
      return null;
    }
  }

  /// Remove customer product reference in ERP for specified customer and product
  ///
  ///
  Future<CustomerProductReference> deleteCustomerProductReference(
      {int customerId, String productId}) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path =
        "/api/Product/CustomerProductReference".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (customerId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "customerId", customerId));
    }
    if (productId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "productId", productId));
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
      return apiClient.deserialize(response.body, 'CustomerProductReference')
          as CustomerProductReference;
    } else {
      return null;
    }
  }

  /// Delete product in ERP
  ///
  ///
  Future<bool> deleteProduct({String productId}) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/Product/Product".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (productId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "productId", productId));
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
      "application/json;v=1.3"
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

  /// Edit customer product reference in ERP for specified customer and product
  ///
  ///
  Future<CustomerProductReference> editCustomerProductReference(
      {CustomerProductReferenceRequest request}) async {
    Object postBody = request;

    // verify required params are set

    // create path and map variables
    String path =
        "/api/Product/CustomerProductReference".replaceAll("{format}", "json");

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

    var response = await apiClient.invokeAPI(path, 'PUT', queryParams, postBody,
        headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'CustomerProductReference')
          as CustomerProductReference;
    } else {
      return null;
    }
  }

  /// Edit product in ERP from Product Information Management system
  ///
  ///
  Future<bool> editProductV14(
      {ProductInformation productInformation,
      int storeId,
      int languageId,
      int companyId}) async {
    Object postBody = productInformation;

    // verify required params are set

    // create path and map variables
    String path = "/api/Product/Product".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (storeId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "storeId", storeId));
    }
    if (languageId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "languageId", languageId));
    }
    if (companyId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "companyId", companyId));
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

  /// Get composition including underlying components
  ///
  ///
  Future getCompositionById(String id) async {
    Object postBody = null;

    // verify required params are set
    if (id == null) {
      throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/api/Product/Composition/{id}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

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
      return;
    } else {
      return;
    }
  }

  /// Get compositions for store, including underlying components
  ///
  ///
  Future<List<Composition>> getCompositions(
      {int storeId, int offset, int limit}) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/Product/Composition".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (storeId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "storeId", storeId));
    }
    if (offset != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "offset", offset));
    }
    if (limit != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "limit", limit));
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
      return (apiClient.deserialize(response.body, 'List<Composition>') as List)
          .map((item) => item as Composition)
          .toList();
    } else {
      return null;
    }
  }

  /// Get Product information for specified product
  ///
  ///
  Future<ProductInformation> getProductInformation(
      {String productId, int storeId, int languageId}) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path =
        "/api/Product/ProductInformation".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (productId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "productId", productId));
    }
    if (storeId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "storeId", storeId));
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
      "application/json;v=1.4",
      "application/json;v=1.3"
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
      return apiClient.deserialize(response.body, 'ProductInformation')
          as ProductInformation;
    } else {
      return null;
    }
  }

  /// Get product information for shop products
  ///
  ///
  Future<List<ProductInformation>> getProductInformationPaged(
      {int storeId, int languageId, int pageNumber, int pageSize}) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path =
        "/api/Product/ProductInformation/Paged".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (storeId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "storeId", storeId));
    }
    if (languageId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "languageId", languageId));
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
      return (apiClient.deserialize(response.body, 'List<ProductInformation>')
              as List)
          .map((item) => item as ProductInformation)
          .toList();
    } else {
      return null;
    }
  }

  /// Get package information
  ///
  ///
  Future<V12Package> package(int unitId, {int languageId}) async {
    Object postBody = null;

    // verify required params are set
    if (unitId == null) {
      throw new ApiException(400, "Missing required param: unitId");
    }

    // create path and map variables
    String path = "/api/Product/Package/{unitId}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "unitId" + "}", unitId.toString());

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
      return apiClient.deserialize(response.body, 'V12Package') as V12Package;
    } else {
      return null;
    }
  }

  /// Get price and stock information for specified store and range
  ///
  ///
  Future<List<V14PriceAndStock>> priceAndStockStoreForRange(
      int storeId,
      int companyId,
      int branchId,
      int customerId,
      int offset,
      int limit) async {
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
    if (offset == null) {
      throw new ApiException(400, "Missing required param: offset");
    }
    if (limit == null) {
      throw new ApiException(400, "Missing required param: limit");
    }

    // create path and map variables
    String path = "/api/Product/PricesAndStock/{storeId}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "storeId" + "}", storeId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    queryParams.addAll(
        _convertParametersForCollectionFormat("", "companyId", companyId));
    queryParams.addAll(
        _convertParametersForCollectionFormat("", "branchId", branchId));
    queryParams.addAll(
        _convertParametersForCollectionFormat("", "customerId", customerId));
    queryParams
        .addAll(_convertParametersForCollectionFormat("", "offset", offset));
    queryParams
        .addAll(_convertParametersForCollectionFormat("", "limit", limit));

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
      return (apiClient.deserialize(response.body, 'List<V14PriceAndStock>')
              as List)
          .map((item) => item as V14PriceAndStock)
          .toList();
    } else {
      return null;
    }
  }

  /// Get price and stock information for specified product
  ///
  ///
  Future<V14PriceAndStock> priceAndStockV14SingleProduct(int storeId,
      int companyId, int branchId, int customerId, String productId,
      {double quantity}) async {
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
    if (productId == null) {
      throw new ApiException(400, "Missing required param: productId");
    }

    // create path and map variables
    String path = "/api/Product/PriceAndStock".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    queryParams
        .addAll(_convertParametersForCollectionFormat("", "storeId", storeId));
    queryParams.addAll(
        _convertParametersForCollectionFormat("", "companyId", companyId));
    queryParams.addAll(
        _convertParametersForCollectionFormat("", "branchId", branchId));
    queryParams.addAll(
        _convertParametersForCollectionFormat("", "customerId", customerId));
    queryParams.addAll(
        _convertParametersForCollectionFormat("", "productId", productId));
    if (quantity != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "quantity", quantity));
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
      return apiClient.deserialize(response.body, 'V14PriceAndStock')
          as V14PriceAndStock;
    } else {
      return null;
    }
  }

  /// Get price tiers
  ///
  ///
  Future<PriceTiers> priceTiers(
      {int companyId,
      int branchId,
      int customerId,
      String projectId,
      String productId}) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/Product/PriceTiers".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (companyId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "companyId", companyId));
    }
    if (branchId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "branchId", branchId));
    }
    if (customerId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "customerId", customerId));
    }
    if (projectId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "projectId", projectId));
    }
    if (productId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "productId", productId));
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
      return apiClient.deserialize(response.body, 'PriceTiers') as PriceTiers;
    } else {
      return null;
    }
  }

  /// Get price and stock information for specified products
  ///
  ///
  Future<List<V14PriceAndStock>> pricesAndStockMultipleProducts(int storeId,
      int companyId, int branchId, int customerId, List<String> productIds,
      {List<double> quantities, List<String> attributes}) async {
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
    if (productIds == null) {
      throw new ApiException(400, "Missing required param: productIds");
    }

    // create path and map variables
    String path = "/api/Product/PricesAndStock".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    queryParams
        .addAll(_convertParametersForCollectionFormat("", "storeId", storeId));
    queryParams.addAll(
        _convertParametersForCollectionFormat("", "companyId", companyId));
    queryParams.addAll(
        _convertParametersForCollectionFormat("", "branchId", branchId));
    queryParams.addAll(
        _convertParametersForCollectionFormat("", "customerId", customerId));
    queryParams.addAll(_convertParametersForCollectionFormat(
        "multi", "productIds", productIds));
    if (quantities != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "multi", "quantities", quantities));
    }
    if (attributes != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "multi", "attributes", attributes));
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
      return (apiClient.deserialize(response.body, 'List<V14PriceAndStock>')
              as List)
          .map((item) => item as V14PriceAndStock)
          .toList();
    } else {
      return null;
    }
  }

  /// Get price and stock information for specified products
  ///
  ///
  Future<List<V14PriceAndStock>> pricesAndStockSizeV14(
      {PriceAndStockRequest priceAndStockRequest}) async {
    Object postBody = priceAndStockRequest;

    // verify required params are set

    // create path and map variables
    String path = "/api/Product/PricesAndStock".replaceAll("{format}", "json");

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
      return (apiClient.deserialize(response.body, 'List<V14PriceAndStock>')
              as List)
          .map((item) => item as V14PriceAndStock)
          .toList();
    } else {
      return null;
    }
  }

  /// Get product by productId
  ///
  ///
  Future<Product> product({String id, String type, String supplierEan}) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/Product/Product".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (id != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "Id", id));
    }
    if (type != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "Type", type));
    }
    if (supplierEan != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "SupplierEan", supplierEan));
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
      var result =
          (apiClient.deserialize(response.body, 'List<Product>') as List)
          .map((item) => item as Product)
          .toList();
      return result.first as Product;
    } else {
      return null;
    }
  }

  /// Get product alternatives / replacements for specified products
  ///
  ///
  Future<List<ProductAlternative>> productAlternative(
      {List<String> productIds}) async {
    Object postBody = productIds;

    // verify required params are set

    // create path and map variables
    String path = "/api/Product/Alternative".replaceAll("{format}", "json");

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
      return (apiClient.deserialize(response.body, 'List<ProductAlternative>')
              as List)
          .map((item) => item as ProductAlternative)
          .toList();
    } else {
      return null;
    }
  }

  /// Get product alternatives / replacements for specified store.
  ///
  ///
  Future<List<ProductAlternative>> productAlternativeByStore(
      {int storeId}) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/Product/Alternative".replaceAll("{format}", "json");

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

    var response = await apiClient.invokeAPI(path, 'GET', queryParams, postBody,
        headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return (apiClient.deserialize(response.body, 'List<ProductAlternative>')
              as List)
          .map((item) => item as ProductAlternative)
          .toList();
    } else {
      return null;
    }
  }

  /// Get modified data about product attributes for shop products
  ///
  ///
  Future<ProductAttribute> productAttribute(
      {int storeId, int languageId, List<ShopProductHash> hashData}) async {
    Object postBody = hashData;

    // verify required params are set

    // create path and map variables
    String path =
        "/api/Product/ProductAttribute".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (storeId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "storeId", storeId));
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
      "application/json;v=1.4",
      "application/json;v=1.3"
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
      return apiClient.deserialize(response.body, 'ProductAttribute')
          as ProductAttribute;
    } else {
      return null;
    }
  }

  /// Get product attribute including options
  ///
  ///
  Future<ProductAttribute> productAttributeById(int attributeId) async {
    Object postBody = null;

    // verify required params are set
    if (attributeId == null) {
      throw new ApiException(400, "Missing required param: attributeId");
    }

    // create path and map variables
    String path = "/api/Product/ProductAttribute/Options/{attributeId}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "attributeId" + "}", attributeId.toString());

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
      return apiClient.deserialize(response.body, 'ProductAttribute')
          as ProductAttribute;
    } else {
      return null;
    }
  }

  /// Get product attributes for product
  ///
  ///
  Future<ProductAttribute> productAttributeForSingleProduct(String productId,
      {int storeId, int languageId}) async {
    Object postBody = null;

    // verify required params are set
    if (productId == null) {
      throw new ApiException(400, "Missing required param: productId");
    }

    // create path and map variables
    String path = "/api/Product/ProductAttribute/{productId}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "productId" + "}", productId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (storeId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "storeId", storeId));
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
      return apiClient.deserialize(response.body, 'ProductAttribute')
          as ProductAttribute;
    } else {
      return null;
    }
  }

  /// Get product attribute sets including underlying attributes. Please be advised: underlying attributes are returned without options.
  ///
  ///
  Future<List<AttributeSet>> productAttributeSets() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path =
        "/api/Product/ProductAttributeSet".replaceAll("{format}", "json");

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
      return (apiClient.deserialize(response.body, 'List<AttributeSet>')
              as List)
          .map((item) => item as AttributeSet)
          .toList();
    } else {
      return null;
    }
  }

  /// Get all product attributes (incl. options if applicable).
  ///
  ///
  Future<List<ProductAttribute>> productAttributes() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path =
        "/api/Product/ProductAttribute".replaceAll("{format}", "json");

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
      return (apiClient.deserialize(response.body, 'List<ProductAttribute>')
              as List)
          .map((item) => item as ProductAttribute)
          .toList();
    } else {
      return null;
    }
  }

  /// Get product attributes for a selection of products
  ///
  ///
  Future<List<AttributeProduct>> productAttributesBySelection(
      {int storeId, int languageId, List<String> productIds}) async {
    Object postBody = productIds;

    // verify required params are set

    // create path and map variables
    String path = "/api/Product/ProductAttributeBySelection"
        .replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (storeId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "storeId", storeId));
    }
    if (languageId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "languageId", languageId));
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

    var response = await apiClient.invokeAPI(path, 'POST', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return (apiClient.deserialize(response.body, 'List<AttributeProduct>')
              as List)
          .map((item) => item as AttributeProduct)
          .toList();
    } else {
      return null;
    }
  }

  /// Get product attribute sets including options
  ///
  ///
  Future<ProductAttribute> productAttributesInclOptions() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path =
        "/api/Product/ProductAttribute/Options".replaceAll("{format}", "json");

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
      return apiClient.deserialize(response.body, 'ProductAttribute')
          as ProductAttribute;
    } else {
      return null;
    }
  }

  /// Get product attribute including options
  ///
  ///
  Future<ProductAttribute> productAttributesInclOptionsByHash(
      {List<ShopHash> shopHashes}) async {
    Object postBody = shopHashes;

    // verify required params are set

    // create path and map variables
    String path =
        "/api/Product/ProductAttribute/Options".replaceAll("{format}", "json");

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
      return apiClient.deserialize(response.body, 'ProductAttribute')
          as ProductAttribute;
    } else {
      return null;
    }
  }

  /// Get a list of all product availability changes from a specific store since a certain date+time
  ///
  ///
  Future<ProductAvailabilityResult> productAvailability(
      {int storeId, DateTime fromDate}) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path =
        "/api/Product/ProductAvailability".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (storeId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "storeId", storeId));
    }
    if (fromDate != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "fromDate", fromDate));
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
      "application/json;v=1.1"
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
      return apiClient.deserialize(response.body, 'ProductAvailabilityResult')
          as ProductAvailabilityResult;
    } else {
      return null;
    }
  }

  /// Get estimated delivery time for products of specificied store
  ///
  ///
  Future<ProductDeliveryDaysResult> productDeliveryDays({int storeId}) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path =
        "/api/Product/ProductDeliveryDays".replaceAll("{format}", "json");

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
      "application/json;v=1.7",
      "application/json;v=1.6",
      "application/json;v=1.5",
      "application/json;v=1.4",
      "application/json;v=1.3",
      "application/json;v=1.2",
      "application/json;v=1.1"
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
      return apiClient.deserialize(response.body, 'ProductDeliveryDaysResult')
          as ProductDeliveryDaysResult;
    } else {
      return null;
    }
  }

  /// Get estimated delivery times for specified products of specificied store
  ///
  ///
  Future<ProductDeliveryDaysResult> productDeliveryDaysById(
      {DeliveryDaysRequest request}) async {
    Object postBody = request;

    // verify required params are set

    // create path and map variables
    String path =
        "/api/Product/ProductDeliveryDays/ById".replaceAll("{format}", "json");

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
      return apiClient.deserialize(response.body, 'ProductDeliveryDaysResult')
          as ProductDeliveryDaysResult;
    } else {
      return null;
    }
  }

  /// Get additional EANs for products, as specified by store.
  ///
  ///
  Future<List<Ean>> productEan({int storeId}) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/Product/Ean".replaceAll("{format}", "json");

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
      return (apiClient.deserialize(response.body, 'List<Ean>') as List)
          .map((item) => item as Ean)
          .toList();
    } else {
      return null;
    }
  }

  /// Get additional EANs for specified product.
  ///
  ///
  Future<List<Ean>> productEanById(String productId) async {
    Object postBody = null;

    // verify required params are set
    if (productId == null) {
      throw new ApiException(400, "Missing required param: productId");
    }

    // create path and map variables
    String path = "/api/Product/Ean/{productId}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "productId" + "}", productId.toString());

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

    var response = await apiClient.invokeAPI(path, 'GET', queryParams, postBody,
        headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return (apiClient.deserialize(response.body, 'List<Ean>') as List)
          .map((item) => item as Ean)
          .toList();
    } else {
      return null;
    }
  }

  /// Get synonyms for product descriptions.
  ///
  ///
  Future<List<ProductSynonym>> productSynonym() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/Product/Synonym".replaceAll("{format}", "json");

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
      return (apiClient.deserialize(response.body, 'List<ProductSynonym>')
              as List)
          .map((item) => item as ProductSynonym)
          .toList();
    } else {
      return null;
    }
  }

  /// Get all products available for sale in ERP
  ///
  ///
  Future<List<V13ShopProduct>> productsForSale(
      {int storeId, int offset, int limit}) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/Product/ProductsForSale".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (storeId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "storeId", storeId));
    }
    if (offset != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "offset", offset));
    }
    if (limit != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "limit", limit));
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
      return (apiClient.deserialize(response.body, 'List<V13ShopProduct>')
              as List)
          .map((item) => item as V13ShopProduct)
          .toList();
    } else {
      return null;
    }
  }

  /// Get promotional price and available stock for products currently promoted
  ///
  ///
  Future<List<PromotionalPriceAndStock>> promotionalPrice(
      int storeId, int companyId,
      {int branchId}) async {
    Object postBody = null;

    // verify required params are set
    if (storeId == null) {
      throw new ApiException(400, "Missing required param: storeId");
    }
    if (companyId == null) {
      throw new ApiException(400, "Missing required param: companyId");
    }

    // create path and map variables
    String path =
        "/api/Product/PromotionalPrice".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    queryParams
        .addAll(_convertParametersForCollectionFormat("", "storeId", storeId));
    queryParams.addAll(
        _convertParametersForCollectionFormat("", "companyId", companyId));
    if (branchId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "branchId", branchId));
    }

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
              response.body, 'List<PromotionalPriceAndStock>') as List)
          .map((item) => item as PromotionalPriceAndStock)
          .toList();
    } else {
      return null;
    }
  }

  /// Get related products for specified product
  ///
  ///
  Future<V12RelatedProduct> relatedProduct(
      int storeId, String productId) async {
    Object postBody = null;

    // verify required params are set
    if (storeId == null) {
      throw new ApiException(400, "Missing required param: storeId");
    }
    if (productId == null) {
      throw new ApiException(400, "Missing required param: productId");
    }

    // create path and map variables
    String path = "/api/Product/RelatedProduct/{storeId}/{productId}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "storeId" + "}", storeId.toString())
        .replaceAll("{" + "productId" + "}", productId.toString());

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
      return apiClient.deserialize(response.body, 'V12RelatedProduct')
          as V12RelatedProduct;
    } else {
      return null;
    }
  }

  /// Get related products for specified store
  ///
  ///
  Future<List<V12RelatedProduct>> relatedProducts(int storeId) async {
    Object postBody = null;

    // verify required params are set
    if (storeId == null) {
      throw new ApiException(400, "Missing required param: storeId");
    }

    // create path and map variables
    String path = "/api/Product/RelatedProduct/{storeId}"
        .replaceAll("{format}", "json")
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
      return (apiClient.deserialize(response.body, 'List<V12RelatedProduct>')
              as List)
          .map((item) => item as V12RelatedProduct)
          .toList();
    } else {
      return null;
    }
  }

  /// Get shop product information
  ///
  ///
  Future<List<V13ShopProduct>> shopProductInformation(
      {int storeId, int offset, int limit}) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/Product/ShopProducts".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (storeId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "storeId", storeId));
    }
    if (offset != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "Offset", offset));
    }
    if (limit != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "Limit", limit));
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
      return (apiClient.deserialize(response.body, 'List<V13ShopProduct>')
              as List)
          .map((item) => item as V13ShopProduct)
          .toList();
    } else {
      return null;
    }
  }

  /// Get modified shop product information based on parsed HashData recieved at product retrieval.
  ///
  ///
  Future shopProductsV13({int storeId, List<ShopProductHash> hashData}) async {
    Object postBody = hashData;

    // verify required params are set

    // create path and map variables
    String path = "/api/Product/ShopProducts".replaceAll("{format}", "json");

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
      "application/json;v=1.7",
      "application/json;v=1.6",
      "application/json;v=1.5",
      "application/json;v=1.4",
      "application/json;v=1.3"
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
}
