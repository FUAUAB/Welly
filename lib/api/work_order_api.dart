part of swagger.api;

class WorkOrderApi {
  final ApiClient apiClient;

  WorkOrderApi([ApiClient apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  /// Add attachment to work order
  ///
  ///
  Future<bool> addWorkOrderAttachment(MultipartFile uploadedFile, int companyId,
      int branchId, int workOrderId) async {
    Object postBody = null;

    // verify required params are set
    if (uploadedFile == null) {
      throw new ApiException(400, "Missing required param: uploadedFile");
    }
    if (companyId == null) {
      throw new ApiException(400, "Missing required param: companyId");
    }
    if (branchId == null) {
      throw new ApiException(400, "Missing required param: branchId");
    }
    if (workOrderId == null) {
      throw new ApiException(400, "Missing required param: workOrderId");
    }

    // create path and map variables
    String path = "/api/WorkOrder/Attachment".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    queryParams.addAll(
        _convertParametersForCollectionFormat("", "companyId", companyId));
    queryParams.addAll(
        _convertParametersForCollectionFormat("", "branchId", branchId));
    queryParams.addAll(
        _convertParametersForCollectionFormat("", "workOrderId", workOrderId));

    List<String> contentTypes = [
      "application/json;v=1.13",
      "application/json;v=1.12",
      "multipart/form-data;v=1.13",
      "multipart/form-data;v=1.12"
    ];

    String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["Bearer"];

      bool hasFields = false;
    MultipartRequest mp = new MultipartRequest("POST", new Uri());

      if (uploadedFile != null) {
      contentType = "multipart/form-data";

        hasFields = true;
        mp.fields['uploadedFile'] = uploadedFile.field;
        mp.files.add(uploadedFile);
      }

      if (hasFields) postBody = mp;

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

  /// Add a new work order detail to a work order.
  ///
  ///
  Future<bool> createWorkOrderDetail(WorkOrderDetailRequest request) async {
    Object postBody = request;

    // verify required params are set
    if (request == null) {
      throw new ApiException(400, "Missing required param: request");
    }

    // create path and map variables
    String path = "/api/WorkOrder/Detail".replaceAll("{format}", "json");

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

  /// Create a new workorder.
  ///
  ///
  Future<int> createWorkOrderInERP(WorkOrderRequest request) async {
    Object postBody = request;

    // verify required params are set
    if (request == null) {
      throw new ApiException(400, "Missing required param: request");
    }

    // create path and map variables
    String path = "/api/WorkOrder".replaceAll("{format}", "json");

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

  /// Create a new schedule item.
  ///
  ///
  Future<int> createWorkOrderSchedule(
      {WorkOrderScheduleRequest request}) async {
    Object postBody = request;

    // verify required params are set

    // create path and map variables
    String path = "/api/WorkOrder/Schedule".replaceAll("{format}", "json");

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

  /// Delete specified detail from work order.
  ///
  ///
  Future<bool> deleteWorkOrderDetail(int companyId, int branchId,
      int workorderId, int orderLineId, int orderSubLineId) async {
    Object postBody = null;

    // verify required params are set
    if (companyId == null) {
      throw new ApiException(400, "Missing required param: companyId");
    }
    if (branchId == null) {
      throw new ApiException(400, "Missing required param: branchId");
    }
    if (workorderId == null) {
      throw new ApiException(400, "Missing required param: workorderId");
    }
    if (orderLineId == null) {
      throw new ApiException(400, "Missing required param: orderLineId");
    }
    if (orderSubLineId == null) {
      throw new ApiException(400, "Missing required param: orderSubLineId");
    }

    // create path and map variables
    String path = "/api/WorkOrder/Detail".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    queryParams.addAll(
        _convertParametersForCollectionFormat("", "companyId", companyId));
    queryParams.addAll(
        _convertParametersForCollectionFormat("", "branchId", branchId));
    queryParams.addAll(
        _convertParametersForCollectionFormat("", "workorderId", workorderId));
    queryParams.addAll(
        _convertParametersForCollectionFormat("", "orderLineId", orderLineId));
    queryParams.addAll(_convertParametersForCollectionFormat(
        "", "orderSubLineId", orderSubLineId));

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

  /// Delete a schedule item
  ///
  ///
  Future<bool> deleteWorkOrderSchedule(
      {int companyId, int branchId, int scheduleId, bool series}) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/WorkOrder/Schedule".replaceAll("{format}", "json");

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
    if (scheduleId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "scheduleId", scheduleId));
    }
    if (series != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "series", series));
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

  /// Update work order date
  ///
  ///
  Future<bool> editWorkOrderDate(WorkOrderDateRequest request) async {
    Object postBody = request;

    // verify required params are set
    if (request == null) {
      throw new ApiException(400, "Missing required param: request");
    }

    // create path and map variables
    String path = "/api/WorkOrder/Date".replaceAll("{format}", "json");

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

  /// Update work order description.
  ///
  ///
  Future<bool> editWorkOrderDescription(
      WorkOrderDescriptionRequest request) async {
    Object postBody = request;

    // verify required params are set
    if (request == null) {
      throw new ApiException(400, "Missing required param: request");
    }

    // create path and map variables
    String path = "/api/WorkOrder/Description".replaceAll("{format}", "json");

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

  /// Edit a work order detail from a work order. Please note: products or costs cannot be replaced. That scenario would require   deleting the existing detail and adding the new product / cost.
  ///
  ///
  Future<bool> editWorkOrderDetail(WorkOrderDetailChangeRequest request) async {
    Object postBody = request;

    // verify required params are set
    if (request == null) {
      throw new ApiException(400, "Missing required param: request");
    }

    // create path and map variables
    String path = "/api/WorkOrder/Detail".replaceAll("{format}", "json");

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

  /// Get active work order by id.
  ///
  ///
  Future<V112WorkOrder> getActiveWorkOrder(
      int companyId, int branchId, int orderId) async {
    Object postBody = null;

    // verify required params are set
    if (companyId == null) {
      throw new ApiException(400, "Missing required param: companyId");
    }
    if (branchId == null) {
      throw new ApiException(400, "Missing required param: branchId");
    }
    if (orderId == null) {
      throw new ApiException(400, "Missing required param: orderId");
    }

    // create path and map variables
    String path = "/api/WorkOrder/ById/{orderId}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "orderId" + "}", orderId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    queryParams.addAll(
        _convertParametersForCollectionFormat("", "companyId", companyId));
    queryParams.addAll(
        _convertParametersForCollectionFormat("", "branchId", branchId));

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
      return apiClient.deserialize(response.body, 'V112WorkOrder')
          as V112WorkOrder;
    } else {
      return null;
    }
  }

  /// Get a list of all work orders for specified branch and company (and customer, if specified). BranchId &#x3D; 0 will return work orders for all branches.   Option to retrieve all work orders (default is only active work orders).
  ///
  ///
  Future<List<V112WorkOrder>> getAllWorkOrdersV112(int companyId,
      {int branchId, int customerId, bool onlyActive}) async {
    Object postBody = null;

    // verify required params are set
    if (companyId == null) {
      throw new ApiException(400, "Missing required param: companyId");
    }

    // create path and map variables
    String path = "/api/WorkOrder".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    queryParams.addAll(
        _convertParametersForCollectionFormat("", "companyId", companyId));
    if (branchId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "branchId", branchId));
    }
    if (customerId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "customerId", customerId));
    }
    if (onlyActive != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "onlyActive", onlyActive));
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
      return (apiClient.deserialize(response.body, 'List<V112WorkOrder>')
              as List)
          .map((item) => item as V112WorkOrder)
          .toList();
    } else {
      return null;
    }
  }

  /// Get a list of all active work orders for specified employee.
  ///
  ///
  Future<List<V112WorkOrder>> getAllWorkOrdersV112_1(int employeeId) async {
    Object postBody = null;

    // verify required params are set
    if (employeeId == null) {
      throw new ApiException(400, "Missing required param: employeeId");
    }

    // create path and map variables
    String path = "/api/WorkOrder/{employeeId}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "employeeId" + "}", employeeId.toString());

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
      return (apiClient.deserialize(response.body, 'List<V112WorkOrder>')
              as List)
          .map((item) => item as V112WorkOrder)
          .toList();
    } else {
      return null;
    }
  }

  /// Get jobs for work order hour
  ///
  ///
  Future<List<Job>> getJobs({int companyId}) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/WorkOrder/Job".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (companyId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "companyId", companyId));
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
      return (apiClient.deserialize(response.body, 'List<Job>') as List)
          .map((item) => item as Job)
          .toList();
    } else {
      return null;
    }
  }

  /// Get (work order) schedule items.
  ///
  ///
  Future<List<WorkOrderSchedule>> getSchedule(
      {int companyId, int branchId}) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/WorkOrder/Schedule".replaceAll("{format}", "json");

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
      return (apiClient.deserialize(response.body, 'List<WorkOrderSchedule>')
              as List)
          .map((item) => item as WorkOrderSchedule)
          .toList();
    } else {
      return null;
    }
  }

  /// Get specified work order schedule item.
  ///
  ///
  Future<List<WorkOrderSchedule>> getScheduleById(int scheduleId,
      {int companyId, int branchId}) async {
    Object postBody = null;

    // verify required params are set
    if (scheduleId == null) {
      throw new ApiException(400, "Missing required param: scheduleId");
    }

    // create path and map variables
    String path = "/api/WorkOrder/Schedule/{scheduleId}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "scheduleId" + "}", scheduleId.toString());

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
      return (apiClient.deserialize(response.body, 'List<WorkOrderSchedule>')
              as List)
          .map((item) => item as WorkOrderSchedule)
          .toList();
    } else {
      return null;
    }
  }

  /// Get work order scheduled items for specified employee.
  ///
  ///
  Future<List<WorkOrderSchedule>> getScheduleForEmployee(int employeeId) async {
    Object postBody = null;

    // verify required params are set
    if (employeeId == null) {
      throw new ApiException(400, "Missing required param: employeeId");
    }

    // create path and map variables
    String path =
        "/api/WorkOrder/Schedule/Employee".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    queryParams.addAll(
        _convertParametersForCollectionFormat("", "employeeId", employeeId));

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
      return (apiClient.deserialize(response.body, 'List<WorkOrderSchedule>')
              as List)
          .map((item) => item as WorkOrderSchedule)
          .toList();
    } else {
      return null;
    }
  }

  /// Get work order scheduled items for specified work order.
  ///
  ///
  Future<List<WorkOrderSchedule>> getScheduleForWorkOrder(
      {int companyId, int branchId, int workOrderId}) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path =
        "/api/WorkOrder/Schedule/WorkOrder".replaceAll("{format}", "json");

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
    if (workOrderId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "workOrderId", workOrderId));
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
      return (apiClient.deserialize(response.body, 'List<WorkOrderSchedule>')
              as List)
          .map((item) => item as WorkOrderSchedule)
          .toList();
    } else {
      return null;
    }
  }

  /// Get a list of all workorder classes.
  ///
  ///
  Future<List<WorkOrderClass>> getWorkOrderClasses({int companyId}) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/WorkOrder/Class".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (companyId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "companyId", companyId));
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
      return (apiClient.deserialize(response.body, 'List<WorkOrderClass>')
              as List)
          .map((item) => item as WorkOrderClass)
          .toList();
    } else {
      return null;
    }
  }

  /// Update an existing schedule item.
  ///
  ///
  Future<bool> updateWorkOrderSchedule(
      {WorkOrderScheduleRequest request}) async {
    Object postBody = request;

    // verify required params are set

    // create path and map variables
    String path = "/api/WorkOrder/Schedule".replaceAll("{format}", "json");

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
