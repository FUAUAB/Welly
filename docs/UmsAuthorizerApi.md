# swagger.api.UmsAuthorizerApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addAuthorizer**](UmsAuthorizerApi.md#addAuthorizer) | **POST** /api/UmsAuthorizer/api/UmsAuthorizer | Adds authorizer
[**authorizerRequired**](UmsAuthorizerApi.md#authorizerRequired) | **GET** /api/UmsAuthorizer/required/{lsoort}/{debinr}/{medwnr} | Retrieves if authorizer is required
[**getAuthorizersForCompany**](UmsAuthorizerApi.md#getAuthorizersForCompany) | **GET** /api/UmsAuthorizer/{lsoort}/{debinr} | Gets UMS authorizers of selected company
[**getAuthorizersForEmployee**](UmsAuthorizerApi.md#getAuthorizersForEmployee) | **GET** /api/UmsAuthorizer/{lsoort}/{debinr}/{medwnr} | Gets UMS authorizers for selected employee
[**putDisplayOrder**](UmsAuthorizerApi.md#putDisplayOrder) | **PUT** /api/UmsAuthorizer/api/UmsAuthorizer | Updates display order authorizers
[**removeAuthorizer**](UmsAuthorizerApi.md#removeAuthorizer) | **DELETE** /api/UmsAuthorizer/api/UmsAuthorizer | Deletes Authorizer for selected employee
[**rolesForCustomer**](UmsAuthorizerApi.md#rolesForCustomer) | **GET** /api/UmsRoles/{customerId}/{storeId} | Gets UMS roles
[**umsRole**](UmsAuthorizerApi.md#umsRole) | **GET** /api/UmsRoles/{customerId}/{storeId}/{roleId} | Gets UMS role


# **addAuthorizer**
> addAuthorizer(lsoort, debinr, medwnr, atmwnr)

Adds authorizer

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new UmsAuthorizerApi();
var lsoort = 56; // int | StoreId
var debinr = 56; // int | CustomerId
var medwnr = 56; // int | EmployeeId
var atmwnr = 56; // int | EmployeeId of Authorizer

try { 
    api_instance.addAuthorizer(lsoort, debinr, medwnr, atmwnr);
} catch (e) {
    print("Exception when calling UmsAuthorizerApi->addAuthorizer: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lsoort** | **int**| StoreId | [optional] 
 **debinr** | **int**| CustomerId | [optional] 
 **medwnr** | **int**| EmployeeId | [optional] 
 **atmwnr** | **int**| EmployeeId of Authorizer | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authorizerRequired**
> bool authorizerRequired(lsoort, debinr, medwnr)

Retrieves if authorizer is required

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new UmsAuthorizerApi();
var lsoort = 56; // int | StoreId
var debinr = 56; // int | CustomerId
var medwnr = 56; // int | EmployeeId

try { 
    var result = api_instance.authorizerRequired(lsoort, debinr, medwnr);
    print(result);
} catch (e) {
    print("Exception when calling UmsAuthorizerApi->authorizerRequired: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lsoort** | **int**| StoreId | 
 **debinr** | **int**| CustomerId | 
 **medwnr** | **int**| EmployeeId | 

### Return type

**bool**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2, application/json;v=1.1, application/json;v=1.0
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.1, application/json;v=1.0

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAuthorizersForCompany**
> List<UmsModelsAuthorizer> getAuthorizersForCompany(lsoort, debinr)

Gets UMS authorizers of selected company

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new UmsAuthorizerApi();
var lsoort = 56; // int | StoreId
var debinr = 56; // int | CustomerId

try { 
    var result = api_instance.getAuthorizersForCompany(lsoort, debinr);
    print(result);
} catch (e) {
    print("Exception when calling UmsAuthorizerApi->getAuthorizersForCompany: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lsoort** | **int**| StoreId | 
 **debinr** | **int**| CustomerId | 

### Return type

[**List<UmsModelsAuthorizer>**](UmsModelsAuthorizer.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAuthorizersForEmployee**
> List<UmsModelsAuthorizer> getAuthorizersForEmployee(lsoort, debinr, medwnr)

Gets UMS authorizers for selected employee

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new UmsAuthorizerApi();
var lsoort = 56; // int | StoreId
var debinr = 56; // int | CustomerId
var medwnr = 56; // int | EmployeeId

try { 
    var result = api_instance.getAuthorizersForEmployee(lsoort, debinr, medwnr);
    print(result);
} catch (e) {
    print("Exception when calling UmsAuthorizerApi->getAuthorizersForEmployee: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lsoort** | **int**| StoreId | 
 **debinr** | **int**| CustomerId | 
 **medwnr** | **int**| EmployeeId | 

### Return type

[**List<UmsModelsAuthorizer>**](UmsModelsAuthorizer.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putDisplayOrder**
> putDisplayOrder(lsoort, debinr, medwnr, volgnr, nvolgnr)

Updates display order authorizers

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new UmsAuthorizerApi();
var lsoort = 56; // int | StoreId
var debinr = 56; // int | CustomerId
var medwnr = 56; // int | EmployeeId
var volgnr = 56; // int | SequenceId
var nvolgnr = 56; // int | New sequence Id

try { 
    api_instance.putDisplayOrder(lsoort, debinr, medwnr, volgnr, nvolgnr);
} catch (e) {
    print("Exception when calling UmsAuthorizerApi->putDisplayOrder: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lsoort** | **int**| StoreId | [optional] 
 **debinr** | **int**| CustomerId | [optional] 
 **medwnr** | **int**| EmployeeId | [optional] 
 **volgnr** | **int**| SequenceId | [optional] 
 **nvolgnr** | **int**| New sequence Id | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2, application/json;v=1.1, application/json;v=1.0
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.1, application/json;v=1.0

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeAuthorizer**
> removeAuthorizer(lsoort, debinr, medwnr, volgnr)

Deletes Authorizer for selected employee

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new UmsAuthorizerApi();
var lsoort = 56; // int | 
var debinr = 56; // int | 
var medwnr = 56; // int | 
var volgnr = 56; // int | 

try { 
    api_instance.removeAuthorizer(lsoort, debinr, medwnr, volgnr);
} catch (e) {
    print("Exception when calling UmsAuthorizerApi->removeAuthorizer: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lsoort** | **int**|  | [optional] 
 **debinr** | **int**|  | [optional] 
 **medwnr** | **int**|  | [optional] 
 **volgnr** | **int**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rolesForCustomer**
> List<UMSRole> rolesForCustomer(customerId, storeId)

Gets UMS roles

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new UmsAuthorizerApi();
var customerId = 56; // int | Get customerId from <a href=\"?deepLinking=true#/Customer/Get\">/api/Customer</a>
var storeId = 56; // int | Get storeId from <a href=\"?deepLinking=true#/Webshop/Store\">/api/Webshop/Store</a>

try { 
    var result = api_instance.rolesForCustomer(customerId, storeId);
    print(result);
} catch (e) {
    print("Exception when calling UmsAuthorizerApi->rolesForCustomer: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **int**| Get customerId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Customer/Get\&quot;&gt;/api/Customer&lt;/a&gt; | 
 **storeId** | **int**| Get storeId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Webshop/Store\&quot;&gt;/api/Webshop/Store&lt;/a&gt; | 

### Return type

[**List<UMSRole>**](UMSRole.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **umsRole**
> UMSRole umsRole(customerId, storeId, roleId)

Gets UMS role

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new UmsAuthorizerApi();
var customerId = 56; // int | Get customerId from <a href=\"?deepLinking=true#/Customer/Get\">/api/Customer</a>
var storeId = 56; // int | Get storeId from <a href=\"?deepLinking=true#/Webshop/Store\">/api/Webshop/Store</a>
var roleId = 56; // int | Get roleId from <a href=\"?deepLinking=true#/UmsAuthorizer/Roles\">/api/UmsRoles</a>

try { 
    var result = api_instance.umsRole(customerId, storeId, roleId);
    print(result);
} catch (e) {
    print("Exception when calling UmsAuthorizerApi->umsRole: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **int**| Get customerId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Customer/Get\&quot;&gt;/api/Customer&lt;/a&gt; | 
 **storeId** | **int**| Get storeId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Webshop/Store\&quot;&gt;/api/Webshop/Store&lt;/a&gt; | 
 **roleId** | **int**| Get roleId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/UmsAuthorizer/Roles\&quot;&gt;/api/UmsRoles&lt;/a&gt; | 

### Return type

[**UMSRole**](UMSRole.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

