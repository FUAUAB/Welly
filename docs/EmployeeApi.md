# swagger.api.EmployeeApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addCustomerEmployeeV111**](EmployeeApi.md#addCustomerEmployeeV111) | **POST** /api/Employee/CustomerEmployee | Add customer employee
[**deleteCustomerEmployee**](EmployeeApi.md#deleteCustomerEmployee) | **DELETE** /api/Employee/CustomerEmployee | Delete customer employee
[**getAllCustomerEmployeesV111**](EmployeeApi.md#getAllCustomerEmployeesV111) | **GET** /api/Employee/CustomerEmployee/All | Get customer employees for all customers
[**getAllRoles**](EmployeeApi.md#getAllRoles) | **GET** /api/Employee/Role | Get roles
[**getAllSalesPersons**](EmployeeApi.md#getAllSalesPersons) | **GET** /api/Employee/SalesPerson | Get Sales persons
[**getAllTitles**](EmployeeApi.md#getAllTitles) | **GET** /api/Employee/Title | Get titles
[**getCompanyEmployee**](EmployeeApi.md#getCompanyEmployee) | **GET** /api/Employee | Get company&#39;s employees
[**getCustomerEmployeeUMS**](EmployeeApi.md#getCustomerEmployeeUMS) | **GET** /api/Employee/{companyId}/{storeId}/{customerId}/{employeeId} | Get Employee for UMS
[**getCustomerEmployeeV111ById**](EmployeeApi.md#getCustomerEmployeeV111ById) | **GET** /api/Employee/CustomerEmployee | Get customer employee
[**getCustomerEmployeesUMS**](EmployeeApi.md#getCustomerEmployeesUMS) | **GET** /api/Employee/api/Employee/{companyId}/{storeId}/{customerId} | Get employees of selected customer
[**getCustomerEmployeesV111**](EmployeeApi.md#getCustomerEmployeesV111) | **GET** /api/Employee/CustomerEmployee/{customerId} | Get customer employees for specified customer
[**getEmployeeDictionary**](EmployeeApi.md#getEmployeeDictionary) | **GET** /api/Employee/api/EmployeeDictionary/{companyId}/{storeId}/{customerId} | Get employee dictionary of selected customer
[**getRoleById**](EmployeeApi.md#getRoleById) | **GET** /api/Employee/Role/{roleId} | Get role by ID
[**salesPersonById**](EmployeeApi.md#salesPersonById) | **GET** /api/Employee/SalesPerson/{employeeId} | Get Sales person by employee ID
[**titleById**](EmployeeApi.md#titleById) | **GET** /api/Employee/Title/{titleId} | Get title by ID
[**updateCustomerEmployee**](EmployeeApi.md#updateCustomerEmployee) | **PUT** /api/Employee/CustomerEmployee | Update customer employee


# **addCustomerEmployeeV111**
> int addCustomerEmployeeV111(customerEmployee, companyId)

Add customer employee

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new EmployeeApi();
var customerEmployee = new V111CustomerEmployee(); // V111CustomerEmployee | Customer employee
var companyId = 56; // int | Get companyId from <a href=\"?deepLinking=true#/Company/GetAllCompanies\">/api/Company</a>

try { 
    var result = api_instance.addCustomerEmployeeV111(customerEmployee, companyId);
    print(result);
} catch (e) {
    print("Exception when calling EmployeeApi->addCustomerEmployeeV111: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerEmployee** | [**V111CustomerEmployee**](V111CustomerEmployee.md)| Customer employee | [optional] 
 **companyId** | **int**| Get companyId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Company/GetAllCompanies\&quot;&gt;/api/Company&lt;/a&gt; | [optional] [default to 0]

### Return type

**int**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11
 - **Accept**: application/json;v=1.12, application/json;v=1.11

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCustomerEmployee**
> bool deleteCustomerEmployee(customerId, employeeId)

Delete customer employee

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new EmployeeApi();
var customerId = 56; // int | Get customerId from <a href=\"?deepLinking=true&amp;urls.primaryName=v1.2#/Customer/Get\">/api/Customer</a>
var employeeId = 56; // int | Get employeeId from <a href=\"?deepLinking=true&amp;urls.primaryName=v1.2#/Employee/Get\">/api/Employee</a>

try { 
    var result = api_instance.deleteCustomerEmployee(customerId, employeeId);
    print(result);
} catch (e) {
    print("Exception when calling EmployeeApi->deleteCustomerEmployee: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **int**| Get customerId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true&amp;amp;urls.primaryName&#x3D;v1.2#/Customer/Get\&quot;&gt;/api/Customer&lt;/a&gt; | [optional] 
 **employeeId** | **int**| Get employeeId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true&amp;amp;urls.primaryName&#x3D;v1.2#/Employee/Get\&quot;&gt;/api/Employee&lt;/a&gt; | [optional] 

### Return type

**bool**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllCustomerEmployeesV111**
> List<V111CustomerEmployee> getAllCustomerEmployeesV111(onlyContacts)

Get customer employees for all customers

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new EmployeeApi();
var onlyContacts = true; // bool | Get only employees that are registered as contact person

try { 
    var result = api_instance.getAllCustomerEmployeesV111(onlyContacts);
    print(result);
} catch (e) {
    print("Exception when calling EmployeeApi->getAllCustomerEmployeesV111: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **onlyContacts** | **bool**| Get only employees that are registered as contact person | [optional] 

### Return type

[**List<V111CustomerEmployee>**](V111CustomerEmployee.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11
 - **Accept**: application/json;v=1.12, application/json;v=1.11

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllRoles**
> List<V12Role> getAllRoles()

Get roles

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new EmployeeApi();

try { 
    var result = api_instance.getAllRoles();
    print(result);
} catch (e) {
    print("Exception when calling EmployeeApi->getAllRoles: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<V12Role>**](V12Role.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllSalesPersons**
> V12Employee getAllSalesPersons()

Get Sales persons

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new EmployeeApi();

try { 
    var result = api_instance.getAllSalesPersons();
    print(result);
} catch (e) {
    print("Exception when calling EmployeeApi->getAllSalesPersons: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**V12Employee**](V12Employee.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllTitles**
> List<V12Title> getAllTitles()

Get titles

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new EmployeeApi();

try { 
    var result = api_instance.getAllTitles();
    print(result);
} catch (e) {
    print("Exception when calling EmployeeApi->getAllTitles: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<V12Title>**](V12Title.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCompanyEmployee**
> List<V12Employee> getCompanyEmployee()

Get company's employees

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new EmployeeApi();

try { 
    var result = api_instance.getCompanyEmployee();
    print(result);
} catch (e) {
    print("Exception when calling EmployeeApi->getCompanyEmployee: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<V12Employee>**](V12Employee.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCustomerEmployeeUMS**
> Employee getCustomerEmployeeUMS(companyId, storeId, customerId, employeeId)

Get Employee for UMS

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new EmployeeApi();
var companyId = 56; // int | Get companyId from <a href=\"?deepLinking=true#/Company/Get\">/api/Company</a>
var storeId = 56; // int | Get storeId from <a href=\"?deepLinking=true#/Webshop/Store/Get\">/api/Store</a>
var customerId = 56; // int | Get customerId from <a href=\"?deepLinking=true#/Customer/Get\">/api/Customer</a>
var employeeId = 56; // int | Get employeeId from <a href=\"?deepLinking=true&amp;urls.primaryName=v1.2#/Employee/Get\">/api/Employee</a>

try { 
    var result = api_instance.getCustomerEmployeeUMS(companyId, storeId, customerId, employeeId);
    print(result);
} catch (e) {
    print("Exception when calling EmployeeApi->getCustomerEmployeeUMS: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **companyId** | **int**| Get companyId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Company/Get\&quot;&gt;/api/Company&lt;/a&gt; | 
 **storeId** | **int**| Get storeId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Webshop/Store/Get\&quot;&gt;/api/Store&lt;/a&gt; | 
 **customerId** | **int**| Get customerId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Customer/Get\&quot;&gt;/api/Customer&lt;/a&gt; | 
 **employeeId** | **int**| Get employeeId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true&amp;amp;urls.primaryName&#x3D;v1.2#/Employee/Get\&quot;&gt;/api/Employee&lt;/a&gt; | 

### Return type

[**Employee**](Employee.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCustomerEmployeeV111ById**
> V111CustomerEmployee getCustomerEmployeeV111ById(customerId, employeeId)

Get customer employee

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new EmployeeApi();
var customerId = 56; // int | Get customerId from <a href=\"?deepLinking=true&amp;urls.primaryName=v1.2#/Customer/Get\">/api/Customer</a>
var employeeId = 56; // int | Get employeeId from <a href=\"?deepLinking=true&amp;urls.primaryName=v1.2#/Employee/Get\">/api/Employee</a>

try { 
    var result = api_instance.getCustomerEmployeeV111ById(customerId, employeeId);
    print(result);
} catch (e) {
    print("Exception when calling EmployeeApi->getCustomerEmployeeV111ById: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **int**| Get customerId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true&amp;amp;urls.primaryName&#x3D;v1.2#/Customer/Get\&quot;&gt;/api/Customer&lt;/a&gt; | [optional] 
 **employeeId** | **int**| Get employeeId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true&amp;amp;urls.primaryName&#x3D;v1.2#/Employee/Get\&quot;&gt;/api/Employee&lt;/a&gt; | [optional] 

### Return type

[**V111CustomerEmployee**](V111CustomerEmployee.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11
 - **Accept**: application/json;v=1.12, application/json;v=1.11

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCustomerEmployeesUMS**
> List<UmsModelsEmployee> getCustomerEmployeesUMS(companyId, storeId, customerId)

Get employees of selected customer

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new EmployeeApi();
var companyId = 56; // int | Get companyId from <a href=\"?deepLinking=true#/Company/Get\">/api/Company</a>
var storeId = 56; // int | Get storeId from <a href=\"?deepLinking=true#/Webshop/Store/Get\">/api/Store</a>
var customerId = 56; // int | Get customerId from <a href=\"?deepLinking=true#/Customer/Get\">/api/Customer</a>

try { 
    var result = api_instance.getCustomerEmployeesUMS(companyId, storeId, customerId);
    print(result);
} catch (e) {
    print("Exception when calling EmployeeApi->getCustomerEmployeesUMS: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **companyId** | **int**| Get companyId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Company/Get\&quot;&gt;/api/Company&lt;/a&gt; | 
 **storeId** | **int**| Get storeId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Webshop/Store/Get\&quot;&gt;/api/Store&lt;/a&gt; | 
 **customerId** | **int**| Get customerId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Customer/Get\&quot;&gt;/api/Customer&lt;/a&gt; | 

### Return type

[**List<UmsModelsEmployee>**](UmsModelsEmployee.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCustomerEmployeesV111**
> List<V111CustomerEmployee> getCustomerEmployeesV111(customerId, onlyContacts)

Get customer employees for specified customer

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new EmployeeApi();
var customerId = 56; // int | Get customerId from <a href=\"?deepLinking=true&amp;urls.primaryName=v1.2#/Customer/Get\">/api/Customer</a>
var onlyContacts = true; // bool | Get only employees that are registered as contact person

try { 
    var result = api_instance.getCustomerEmployeesV111(customerId, onlyContacts);
    print(result);
} catch (e) {
    print("Exception when calling EmployeeApi->getCustomerEmployeesV111: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **int**| Get customerId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true&amp;amp;urls.primaryName&#x3D;v1.2#/Customer/Get\&quot;&gt;/api/Customer&lt;/a&gt; | 
 **onlyContacts** | **bool**| Get only employees that are registered as contact person | [optional] 

### Return type

[**List<V111CustomerEmployee>**](V111CustomerEmployee.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11
 - **Accept**: application/json;v=1.12, application/json;v=1.11

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEmployeeDictionary**
> Map<String, UmsModelsEmployee> getEmployeeDictionary(companyId, storeId, customerId)

Get employee dictionary of selected customer

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new EmployeeApi();
var companyId = 56; // int | Get companyId from <a href=\"?deepLinking=true#/Company/Get\">/api/Company</a>
var storeId = 56; // int | Get storeId from <a href=\"?deepLinking=true#/Webshop/Store/Get\">/api/Store</a>
var customerId = 56; // int | Get customerId from <a href=\"?deepLinking=true#/Customer/Get\">/api/Customer</a>

try { 
    var result = api_instance.getEmployeeDictionary(companyId, storeId, customerId);
    print(result);
} catch (e) {
    print("Exception when calling EmployeeApi->getEmployeeDictionary: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **companyId** | **int**| Get companyId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Company/Get\&quot;&gt;/api/Company&lt;/a&gt; | 
 **storeId** | **int**| Get storeId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Webshop/Store/Get\&quot;&gt;/api/Store&lt;/a&gt; | 
 **customerId** | **int**| Get customerId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Customer/Get\&quot;&gt;/api/Customer&lt;/a&gt; | 

### Return type

[**Map<String, UmsModelsEmployee>**](UmsModelsEmployee.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2, application/json;v=1.1, application/json;v=1.0
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.1, application/json;v=1.0

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRoleById**
> V12Role getRoleById(roleId)

Get role by ID

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new EmployeeApi();
var roleId = 56; // int | Get ID from <a href=\"?deepLinking=true&amp;urls.primaryName=v1.2#/Employee/Role/Get\">/api/Employee/Role</a>

try { 
    var result = api_instance.getRoleById(roleId);
    print(result);
} catch (e) {
    print("Exception when calling EmployeeApi->getRoleById: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **roleId** | **int**| Get ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true&amp;amp;urls.primaryName&#x3D;v1.2#/Employee/Role/Get\&quot;&gt;/api/Employee/Role&lt;/a&gt; | 

### Return type

[**V12Role**](V12Role.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **salesPersonById**
> V12Employee salesPersonById(employeeId)

Get Sales person by employee ID

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new EmployeeApi();
var employeeId = 56; // int | Get ID from <a href=\"?deepLinking=true&amp;urls.primaryName=v1.2#/Employee/Get\">/api/Employee</a>

try { 
    var result = api_instance.salesPersonById(employeeId);
    print(result);
} catch (e) {
    print("Exception when calling EmployeeApi->salesPersonById: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employeeId** | **int**| Get ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true&amp;amp;urls.primaryName&#x3D;v1.2#/Employee/Get\&quot;&gt;/api/Employee&lt;/a&gt; | 

### Return type

[**V12Employee**](V12Employee.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **titleById**
> V12Title titleById(titleId)

Get title by ID

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new EmployeeApi();
var titleId = 56; // int | Get ID from <a href=\"?deepLinking=true&amp;urls.primaryName=v1.2#/Employee/Title/Get\">/api/Employee/Title</a>

try { 
    var result = api_instance.titleById(titleId);
    print(result);
} catch (e) {
    print("Exception when calling EmployeeApi->titleById: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **titleId** | **int**| Get ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true&amp;amp;urls.primaryName&#x3D;v1.2#/Employee/Title/Get\&quot;&gt;/api/Employee/Title&lt;/a&gt; | 

### Return type

[**V12Title**](V12Title.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCustomerEmployee**
> bool updateCustomerEmployee(customerEmployee)

Update customer employee

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new EmployeeApi();
var customerEmployee = new V111CustomerEmployee(); // V111CustomerEmployee | 

try { 
    var result = api_instance.updateCustomerEmployee(customerEmployee);
    print(result);
} catch (e) {
    print("Exception when calling EmployeeApi->updateCustomerEmployee: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerEmployee** | [**V111CustomerEmployee**](V111CustomerEmployee.md)|  | [optional] 

### Return type

**bool**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11
 - **Accept**: application/json;v=1.12, application/json;v=1.11

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

