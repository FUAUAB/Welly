part of swagger.api;

class TaxCategoriesApi {
  final ApiClient apiClient;

  TaxCategoriesApi([ApiClient apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  /// Get a list of all tax categories.
  ///
  ///
  Future<List<TaxCategory>> callGet() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/TaxCategories".replaceAll("{format}", "json");

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
      return (apiClient.deserialize(response.body, 'List<TaxCategory>') as List)
          .map((item) => item as TaxCategory)
          .toList();
    } else {
      return null;
    }
  }

  /// Get tax category details by TaxCategoryId.
  ///
  ///
  Future<TaxCategory> getById(int taxCategoryId) async {
    Object postBody = null;

    // verify required params are set
    if (taxCategoryId == null) {
      throw new ApiException(400, "Missing required param: taxCategoryId");
    }

    // create path and map variables
    String path = "/api/TaxCategories/{TaxCategoryId}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "TaxCategoryId" + "}", taxCategoryId.toString());

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
      return apiClient.deserialize(response.body, 'TaxCategory') as TaxCategory;
    } else {
      return null;
    }
  }
}
