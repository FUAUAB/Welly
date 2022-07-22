part of swagger.api;

class CrmApi {
  final ApiClient apiClient;

  CrmApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Creates a new appointment.
  ///
  ///
  Future<int> createAppointment({CrmAppointmentRequest request}) async {
    Object postBody = request;

    // verify required params are set

    // create path and map variables
    String path = "/api/CRM/Appointment".replaceAll("{format}", "json");

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
      return apiClient.deserialize(response.body, 'int') as int;
    } else {
      return null;
    }
  }

  /// Get CRM activities attributed to (follow up) appointments.
  ///
  ///
  Future<List<CrmActivity>> getActivities() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/CRM/Activity".replaceAll("{format}", "json");

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
      return (apiClient.deserialize(response.body, 'List<CrmActivity>') as List)
          .map((item) => item as CrmActivity)
          .toList();
    } else {
      return null;
    }
  }

  /// Retrieve a list of appointments for a specified period, optionally by sales representative and/or status.
  ///
  ///
  Future<List<CrmAppointment>> getAllAppointments(
      {DateTime startDate,
      DateTime endDate,
      int salesRepresentativeId,
      String visitStatus}) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/CRM/Appointment".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (startDate != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "startDate", startDate));
    }
    if (endDate != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "endDate", endDate));
    }
    if (salesRepresentativeId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "salesRepresentativeId", salesRepresentativeId));
    }
    if (visitStatus != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "visitStatus", visitStatus));
    }

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
      return (apiClient.deserialize(response.body, 'List<CrmAppointment>')
              as List)
          .map((item) => item as CrmAppointment)
          .toList();
    } else {
      return null;
    }
  }

  /// Update an existing CRM appointment
  ///
  ///
  Future<bool> updateAppointment({CrmAppointment request}) async {
    Object postBody = request;

    // verify required params are set

    // create path and map variables
    String path = "/api/CRM/Appointment".replaceAll("{format}", "json");

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
