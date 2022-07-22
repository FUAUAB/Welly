part of swagger.api;

class AppointmentApi {
  final ApiClient apiClient;

  AppointmentApi([ApiClient apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  /// Updates or Creates a appointment
  ///
  ///
  Future<String> appointment(
      {EWSAccount account,
      DateTime start,
      DateTime end,
      String subject,
      String body,
      int status,
      int categoryId,
      String category,
      String location,
      String exchangeID,
      String erpID}) async {
    Object postBody = account;

    // verify required params are set

    // create path and map variables
    String path =
        "/api/Appointments/Appointment".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (start != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "Start", start));
    }
    if (end != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "End", end));
    }
    if (subject != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "Subject", subject));
    }
    if (body != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "Body", body));
    }
    if (status != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "Status", status));
    }
    if (categoryId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "CategoryId", categoryId));
    }
    if (category != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "Category", category));
    }
    if (location != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "Location", location));
    }
    if (exchangeID != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "ExchangeID", exchangeID));
    }
    if (erpID != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "ErpID", erpID));
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
      return apiClient.deserialize(response.body, 'String') as String;
    } else {
      return null;
    }
  }

  /// Get a list of all changed appointments from given sync state
  ///
  ///
  Future<SyncAppointments> changedAppointments(
      {EWSAccount account, String syncState}) async {
    Object postBody = account;

    // verify required params are set

    // create path and map variables
    String path =
        "/api/Appointments/ChangedAppointments".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (syncState != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "SyncState", syncState));
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
      return apiClient.deserialize(response.body, 'SyncAppointments')
          as SyncAppointments;
    } else {
      return null;
    }
  }
}
