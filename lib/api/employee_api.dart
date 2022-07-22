part of swagger.api;

class EmployeeApi {
  final ApiClient apiClient;

  EmployeeApi([ApiClient apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  /// Add customer employee
  ///
  ///
  Future<int> addCustomerEmployeeV111(
      {V111CustomerEmployee customerEmployee, int companyId}) async {
    Object postBody = customerEmployee;

    // verify required params are set

    // create path and map variables
    String path =
        "/api/Employee/CustomerEmployee".replaceAll("{format}", "json");

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

  /// Delete customer employee
  ///
  ///
  Future<bool> deleteCustomerEmployee({int customerId, int employeeId}) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path =
        "/api/Employee/CustomerEmployee".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
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

  /// Get company&#39;s employees, optionally for specific job role  (0 &#x3D; all employees, 1 &#x3D; Sales person, 2 &#x3D; Purchaser, 3 &#x3D; Sales representative, 4 &#x3D; Market segment manager, 5 &#x3D; Inspector,   6 &#x3D; Order picker, 7 &#x3D; Mechanic, 8 &#x3D; Goods receiver, 9 &#x3D; Counter employee, 10 &#x3D; Stock responsible
  ///
  ///
  Future<List<V12Employee>> getAllCompanyEmployees({int jobRoleId}) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/Employee".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (jobRoleId != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "jobRoleId", jobRoleId));
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
      return (apiClient.deserialize(response.body, 'List<V12Employee>') as List)
          .map((item) => item as V12Employee)
          .toList();
    } else {
      return null;
    }
  }

  /// Get customer employees for all customers
  ///
  ///
  Future<List<V111CustomerEmployee>> getAllCustomerEmployeesV111(
      {bool onlyContacts}) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path =
        "/api/Employee/CustomerEmployee/All".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (onlyContacts != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "onlyContacts", onlyContacts));
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
      return (apiClient.deserialize(response.body, 'List<V111CustomerEmployee>')
              as List)
          .map((item) => item as V111CustomerEmployee)
          .toList();
    } else {
      return null;
    }
  }

  /// Get roles
  ///
  ///
  Future<List<V12Role>> getAllRoles() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/Employee/Role".replaceAll("{format}", "json");

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
      return (apiClient.deserialize(response.body, 'List<V12Role>') as List)
          .map((item) => item as V12Role)
          .toList();
    } else {
      return null;
    }
  }

  /// Get Sales persons
  ///
  ///
  Future<V12Employee> getAllSalesPersons() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/Employee/SalesPerson".replaceAll("{format}", "json");

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
      return apiClient.deserialize(response.body, 'V12Employee') as V12Employee;
    } else {
      return null;
    }
  }

  /// Get titles
  ///
  ///
  Future<List<V12Title>> getAllTitles() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/Employee/Title".replaceAll("{format}", "json");

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
      return (apiClient.deserialize(response.body, 'List<V12Title>') as List)
          .map((item) => item as V12Title)
          .toList();
    } else {
      return null;
    }
  }

  /// Get Employee for UMS
  ///
  ///
  Future<Employee> getCustomerEmployeeUMS(
      int companyId, int storeId, int customerId, int employeeId) async {
    Object postBody = null;

    // verify required params are set
    if (companyId == null) {
      throw new ApiException(400, "Missing required param: companyId");
    }
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
    String path =
        "/api/Employee/{companyId}/{storeId}/{customerId}/{employeeId}"
            .replaceAll("{format}", "json")
            .replaceAll("{" + "companyId" + "}", companyId.toString())
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
      return apiClient.deserialize(response.body, 'Employee') as Employee;
    } else {
      return null;
    }
  }

  /// Get customer employee
  ///
  ///
  Future<V111CustomerEmployee> getCustomerEmployeeV111ById(
      {int customerId, int employeeId}) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path =
        "/api/Employee/CustomerEmployee".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
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
      return apiClient.deserialize(response.body, 'V111CustomerEmployee')
          as V111CustomerEmployee;
    } else {
      return null;
    }
  }

  /// Get employees of selected customer
  ///
  ///
  Future<List<UmsModelsEmployee>> getCustomerEmployeesUMS(
      int companyId, int storeId, int customerId) async {
    Object postBody = null;

    // verify required params are set
    if (companyId == null) {
      throw new ApiException(400, "Missing required param: companyId");
    }
    if (storeId == null) {
      throw new ApiException(400, "Missing required param: storeId");
    }
    if (customerId == null) {
      throw new ApiException(400, "Missing required param: customerId");
    }

    // create path and map variables
    String path =
        "/api/Employee/api/Employee/{companyId}/{storeId}/{customerId}"
            .replaceAll("{format}", "json")
            .replaceAll("{" + "companyId" + "}", companyId.toString())
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
      return (apiClient.deserialize(response.body, 'List<UmsModelsEmployee>')
              as List)
          .map((item) => item as UmsModelsEmployee)
          .toList();
    } else {
      return null;
    }
  }

  /// Get customer employees for specified customer
  ///
  ///
  Future<List<V111CustomerEmployee>> getCustomerEmployeesV111(int customerId,
      {bool onlyContacts}) async {
    Object postBody = null;

    // verify required params are set
    if (customerId == null) {
      throw new ApiException(400, "Missing required param: customerId");
    }

    // create path and map variables
    String path = "/api/Employee/CustomerEmployee/{customerId}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "customerId" + "}", customerId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (onlyContacts != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "onlyContacts", onlyContacts));
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
      return (apiClient.deserialize(response.body, 'List<V111CustomerEmployee>')
              as List)
          .map((item) => item as V111CustomerEmployee)
          .toList();
    } else {
      return null;
    }
  }

  /// Get employee dictionary of selected customer
  ///
  ///
  Future<Map<String, UmsModelsEmployee>> getEmployeeDictionary(
      int companyId, int storeId, int customerId) async {
    Object postBody = null;

    // verify required params are set
    if (companyId == null) {
      throw new ApiException(400, "Missing required param: companyId");
    }
    if (storeId == null) {
      throw new ApiException(400, "Missing required param: storeId");
    }
    if (customerId == null) {
      throw new ApiException(400, "Missing required param: customerId");
    }

    // create path and map variables
    String path =
        "/api/Employee/api/EmployeeDictionary/{companyId}/{storeId}/{customerId}"
            .replaceAll("{format}", "json")
            .replaceAll("{" + "companyId" + "}", companyId.toString())
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
      return new Map<String, UmsModelsEmployee>.from(apiClient.deserialize(
          response.body, 'Map<String, UmsModelsEmployee>'));
    } else {
      return null;
    }
  }

  /// Get role by ID
  ///
  ///
  Future<V12Role> getRoleById(int roleId) async {
    Object postBody = null;

    // verify required params are set
    if (roleId == null) {
      throw new ApiException(400, "Missing required param: roleId");
    }

    // create path and map variables
    String path = "/api/Employee/Role/{roleId}"
        .replaceAll("{format}", "json")
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
      return apiClient.deserialize(response.body, 'V12Role') as V12Role;
    } else {
      return null;
    }
  }

  /// Get Sales person by employee ID
  ///
  ///
  Future<V12Employee> salesPersonById(int employeeId) async {
    Object postBody = null;

    // verify required params are set
    if (employeeId == null) {
      throw new ApiException(400, "Missing required param: employeeId");
    }

    // create path and map variables
    String path = "/api/Employee/SalesPerson/{employeeId}"
        .replaceAll("{format}", "json")
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
      return apiClient.deserialize(response.body, 'V12Employee') as V12Employee;
    } else {
      return null;
    }
  }

  /// Get title by ID
  ///
  ///
  Future<V12Title> titleById(int titleId) async {
    Object postBody = null;

    // verify required params are set
    if (titleId == null) {
      throw new ApiException(400, "Missing required param: titleId");
    }

    // create path and map variables
    String path = "/api/Employee/Title/{titleId}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "titleId" + "}", titleId.toString());

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
      return apiClient.deserialize(response.body, 'V12Title') as V12Title;
    } else {
      return null;
    }
  }

  /// Update customer employee
  ///
  ///
  Future<bool> updateCustomerEmployee(
      {V111CustomerEmployee customerEmployee}) async {
    Object postBody = customerEmployee;

    // verify required params are set

    // create path and map variables
    String path =
        "/api/Employee/CustomerEmployee".replaceAll("{format}", "json");

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
