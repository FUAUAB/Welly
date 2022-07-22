# swagger.api.WebUserApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteWebshopUserV19**](WebUserApi.md#deleteWebshopUserV19) | **DELETE** /api/WebshopUser | Cancels selected webshop user. API Update requests for this webshop user are no longer possible.
[**getAllWebUsers**](WebUserApi.md#getAllWebUsers) | **GET** /api/WebshopUser | Returns a list of all webshop users of selected customer and user (sub)group (optional)
[**getDefaultSettings**](WebUserApi.md#getDefaultSettings) | **GET** /api/WebshopUser/Defaultsettings/{lsoort}/{debinr} | Gets default settings of webusers from specified customer
[**getEmployeeIdByUsername**](WebUserApi.md#getEmployeeIdByUsername) | **GET** /api/WebshopUser/WebshopUserId/{lsoort}/{username} | Gets EmployeeId as specified by username
[**groupById**](WebUserApi.md#groupById) | **GET** /api/WebshopUser/Groups/{storeId}/{customerId}/{groupId} | Returns details for a specified user group
[**groupsByCustomerId**](WebUserApi.md#groupsByCustomerId) | **GET** /api/WebshopUser/Groups/{storeId}/{customerId} | Returns a list of all user groups specified for this customer
[**postUser**](WebUserApi.md#postUser) | **POST** /api/WebshopUser | Creates a new webshop user for selected customer
[**sizeForm**](WebUserApi.md#sizeForm) | **GET** /api/WebshopUser/SizeForm/{lsoort}/{debinr}/{medwnr} | Get size form
[**subGroupById**](WebUserApi.md#subGroupById) | **GET** /api/WebshopUser/Groups/{storeId}/{customerId}/{groupId}/{subgroupId} | Returns details for a specified user subgroup
[**subGroups**](WebUserApi.md#subGroups) | **GET** /api/WebshopUser/SubGroups/{storeId}/{customerId}/{groupId} | Returns a list of all user subgroups for a specified user group
[**updateUser**](WebUserApi.md#updateUser) | **PUT** /api/WebshopUser | Updates webshop user with selected data
[**uploadSizeForm**](WebUserApi.md#uploadSizeForm) | **POST** /api/WebshopUser/SizeForm/{lsoort}/{debinr}/{medwnr} | Upload size form
[**webUserByEmployeeId**](WebUserApi.md#webUserByEmployeeId) | **GET** /api/WebshopUser/{storeId}/{customerId}/{employeeId} | Gets webshop user as specified by EmployeeId


# **deleteWebshopUserV19**
> deleteWebshopUserV19(lsoort, debinr, medwnr)

Cancels selected webshop user. API Update requests for this webshop user are no longer possible.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new WebUserApi();
var lsoort = 56; // int | StoreId
var debinr = 56; // int | CustomerId
var medwnr = 56; // int | EmployeeId

try { 
    api_instance.deleteWebshopUserV19(lsoort, debinr, medwnr);
} catch (e) {
    print("Exception when calling WebUserApi->deleteWebshopUserV19: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lsoort** | **int**| StoreId | [optional] 
 **debinr** | **int**| CustomerId | [optional] 
 **medwnr** | **int**| EmployeeId | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9
 - **Accept**: application/json;v=1.9, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllWebUsers**
> List<WebUser> getAllWebUsers(storeId, customerId, groupId, subGroupId)

Returns a list of all webshop users of selected customer and user (sub)group (optional)

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new WebUserApi();
var storeId = 56; // int | Get store ID from <a href=\"?deepLinking=true#/Webshop/Store\">/api/Webshop</a>
var customerId = 56; // int | Get customer ID from <a href=\"?deepLinking=true#/Customer/GetAllCustomers\">/api/Customer</a>
var groupId = 56; // int | Get ID of webuser group from <a href=\"?deepLinking=true#/WebUser/GroupsByCustomerId\">/api/Webuser</a>
var subGroupId = 56; // int | Get ID of webuser subgroup (must have groupId &gt; 0) from <a href=\"?deepLinking=true#/WebUser/SubGroups\">/api/Webuser</a>

try { 
    var result = api_instance.getAllWebUsers(storeId, customerId, groupId, subGroupId);
    print(result);
} catch (e) {
    print("Exception when calling WebUserApi->getAllWebUsers: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storeId** | **int**| Get store ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Webshop/Store\&quot;&gt;/api/Webshop&lt;/a&gt; | 
 **customerId** | **int**| Get customer ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Customer/GetAllCustomers\&quot;&gt;/api/Customer&lt;/a&gt; | 
 **groupId** | **int**| Get ID of webuser group from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/WebUser/GroupsByCustomerId\&quot;&gt;/api/Webuser&lt;/a&gt; | [optional] [default to 0]
 **subGroupId** | **int**| Get ID of webuser subgroup (must have groupId &amp;gt; 0) from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/WebUser/SubGroups\&quot;&gt;/api/Webuser&lt;/a&gt; | [optional] [default to 0]

### Return type

[**List<WebUser>**](WebUser.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDefaultSettings**
> UmsModelsUserSettings getDefaultSettings(lsoort, debinr)

Gets default settings of webusers from specified customer

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new WebUserApi();
var lsoort = 56; // int | 
var debinr = 56; // int | 

try { 
    var result = api_instance.getDefaultSettings(lsoort, debinr);
    print(result);
} catch (e) {
    print("Exception when calling WebUserApi->getDefaultSettings: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lsoort** | **int**|  | 
 **debinr** | **int**|  | 

### Return type

[**UmsModelsUserSettings**](UmsModelsUserSettings.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2, application/json;v=1.1, application/json;v=1.0
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.1, application/json;v=1.0

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEmployeeIdByUsername**
> int getEmployeeIdByUsername(lsoort, username)

Gets EmployeeId as specified by username

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new WebUserApi();
var lsoort = 56; // int | StoreId
var username = username_example; // String | Username

try { 
    var result = api_instance.getEmployeeIdByUsername(lsoort, username);
    print(result);
} catch (e) {
    print("Exception when calling WebUserApi->getEmployeeIdByUsername: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lsoort** | **int**| StoreId | 
 **username** | **String**| Username | 

### Return type

**int**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **groupById**
> UmsModelsUmsGroup groupById(storeId, customerId, groupId)

Returns details for a specified user group

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new WebUserApi();
var storeId = 56; // int | Get storeId from <a href=\"?deepLinking=true#/Webshop/Store\">/api/Webshop/Store</a>
var customerId = 56; // int | Get customerId from <a href=\"?deepLinking=true#/Customer/Get\">/api/Customer</a>
var groupId = 56; // int | Get groupId from <a href=\"?deepLinking=true#/WebUser/Groups\">/api/WebshopUsers/Groups</a>

try { 
    var result = api_instance.groupById(storeId, customerId, groupId);
    print(result);
} catch (e) {
    print("Exception when calling WebUserApi->groupById: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storeId** | **int**| Get storeId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Webshop/Store\&quot;&gt;/api/Webshop/Store&lt;/a&gt; | 
 **customerId** | **int**| Get customerId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Customer/Get\&quot;&gt;/api/Customer&lt;/a&gt; | 
 **groupId** | **int**| Get groupId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/WebUser/Groups\&quot;&gt;/api/WebshopUsers/Groups&lt;/a&gt; | 

### Return type

[**UmsModelsUmsGroup**](UmsModelsUmsGroup.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **groupsByCustomerId**
> List<UmsModelsUmsGroup> groupsByCustomerId(storeId, customerId)

Returns a list of all user groups specified for this customer

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new WebUserApi();
var storeId = 56; // int | Get storeId from <a href=\"?deepLinking=true#/Webshop/Store\">/api/Webshop/Store</a>
var customerId = 56; // int | Get customerId from <a href=\"?deepLinking=true#/Customer/Get\">/api/Customer</a>

try { 
    var result = api_instance.groupsByCustomerId(storeId, customerId);
    print(result);
} catch (e) {
    print("Exception when calling WebUserApi->groupsByCustomerId: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storeId** | **int**| Get storeId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Webshop/Store\&quot;&gt;/api/Webshop/Store&lt;/a&gt; | 
 **customerId** | **int**| Get customerId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Customer/Get\&quot;&gt;/api/Customer&lt;/a&gt; | 

### Return type

[**List<UmsModelsUmsGroup>**](UmsModelsUmsGroup.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postUser**
> int postUser(companyId, storeId, customerId, user)

Creates a new webshop user for selected customer

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new WebUserApi();
var companyId = 56; // int | Get company ID from <a href=\"?deepLinking=true#/Company/GetAllCompanies\">/api/Webshop</a>
var storeId = 56; // int | Get store ID from <a href=\"?deepLinking=true#/Webshop/Store\">/api/Webshop</a>
var customerId = 56; // int | Get customer ID from <a href=\"?deepLinking=true#/Customer/GetAllCustomers\">/api/Customer</a>
var user = new WebUser(); // WebUser | Webshopuser to create

try { 
    var result = api_instance.postUser(companyId, storeId, customerId, user);
    print(result);
} catch (e) {
    print("Exception when calling WebUserApi->postUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **companyId** | **int**| Get company ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Company/GetAllCompanies\&quot;&gt;/api/Webshop&lt;/a&gt; | [optional] 
 **storeId** | **int**| Get store ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Webshop/Store\&quot;&gt;/api/Webshop&lt;/a&gt; | [optional] 
 **customerId** | **int**| Get customer ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Customer/GetAllCustomers\&quot;&gt;/api/Customer&lt;/a&gt; | [optional] 
 **user** | [**WebUser**](WebUser.md)| Webshopuser to create | [optional] 

### Return type

**int**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9
 - **Accept**: application/json;v=1.9, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sizeForm**
> MultipartFile sizeForm(lsoort, debinr, medwnr)

Get size form

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new WebUserApi();
var lsoort = 56; // int | 
var debinr = 56; // int | 
var medwnr = 56; // int | 

try { 
    var result = api_instance.sizeForm(lsoort, debinr, medwnr);
    print(result);
} catch (e) {
    print("Exception when calling WebUserApi->sizeForm: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lsoort** | **int**|  | 
 **debinr** | **int**|  | 
 **medwnr** | **int**|  | 

### Return type

[**MultipartFile**](File.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2, application/json;v=1.1, application/json;v=1.0
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **subGroupById**
> UmsModelsUmsGroup subGroupById(storeId, customerId, groupId, subgroupId)

Returns details for a specified user subgroup

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new WebUserApi();
var storeId = 56; // int | Get storeId from <a href=\"?deepLinking=true#/Webshop/Store\">/api/Webshop/Store</a>
var customerId = 56; // int | Get customerId from <a href=\"?deepLinking=true#/Customer/Get\">/api/Customer</a>
var groupId = 56; // int | Get groupId from <a href=\"?deepLinking=true#/WebUser/Groups\">/api/WebshopUsers/Groups</a>
var subgroupId = 56; // int | Get subgroupId from <a href=\"?deepLinking=true#/WebUser/Groups\">/api/WebshopUsers/Groups</a>

try { 
    var result = api_instance.subGroupById(storeId, customerId, groupId, subgroupId);
    print(result);
} catch (e) {
    print("Exception when calling WebUserApi->subGroupById: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storeId** | **int**| Get storeId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Webshop/Store\&quot;&gt;/api/Webshop/Store&lt;/a&gt; | 
 **customerId** | **int**| Get customerId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Customer/Get\&quot;&gt;/api/Customer&lt;/a&gt; | 
 **groupId** | **int**| Get groupId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/WebUser/Groups\&quot;&gt;/api/WebshopUsers/Groups&lt;/a&gt; | 
 **subgroupId** | **int**| Get subgroupId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/WebUser/Groups\&quot;&gt;/api/WebshopUsers/Groups&lt;/a&gt; | 

### Return type

[**UmsModelsUmsGroup**](UmsModelsUmsGroup.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **subGroups**
> List<UmsModelsUmsGroup> subGroups(storeId, customerId, groupId)

Returns a list of all user subgroups for a specified user group

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new WebUserApi();
var storeId = 56; // int | Get storeId from <a href=\"?deepLinking=true#/Webshop/Store\">/api/Webshop/Store</a>
var customerId = 56; // int | Get customerId from <a href=\"?deepLinking=true#/Customer/Get\">/api/Customer</a>
var groupId = 56; // int | Get groupId from <a href=\"?deepLinking=true#/WebUser/Groups\">/api/WebshopUsers/Groups</a>

try { 
    var result = api_instance.subGroups(storeId, customerId, groupId);
    print(result);
} catch (e) {
    print("Exception when calling WebUserApi->subGroups: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storeId** | **int**| Get storeId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Webshop/Store\&quot;&gt;/api/Webshop/Store&lt;/a&gt; | 
 **customerId** | **int**| Get customerId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Customer/Get\&quot;&gt;/api/Customer&lt;/a&gt; | 
 **groupId** | **int**| Get groupId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/WebUser/Groups\&quot;&gt;/api/WebshopUsers/Groups&lt;/a&gt; | 

### Return type

[**List<UmsModelsUmsGroup>**](UmsModelsUmsGroup.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2, application/json;v=1.1, application/json;v=1.0
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.1, application/json;v=1.0

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUser**
> updateUser(lsoort, debinr, user)

Updates webshop user with selected data

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new WebUserApi();
var lsoort = 56; // int | Store ID, as retrievable from <a href=\"?deepLinking=true#/Webshop/Store\">/api/Webshop/Store</a>
var debinr = 56; // int | Customer ID, as retrievable from <a href=\"?deepLinking=true#/Customer/GetAllCustomers\">/api/Customer</a>
var user = new WebUser(); // WebUser | User to update

try { 
    api_instance.updateUser(lsoort, debinr, user);
} catch (e) {
    print("Exception when calling WebUserApi->updateUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lsoort** | **int**| Store ID, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Webshop/Store\&quot;&gt;/api/Webshop/Store&lt;/a&gt; | [optional] 
 **debinr** | **int**| Customer ID, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Customer/GetAllCustomers\&quot;&gt;/api/Customer&lt;/a&gt; | [optional] 
 **user** | [**WebUser**](WebUser.md)| User to update | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9
 - **Accept**: application/json;v=1.9, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uploadSizeForm**
> bool uploadSizeForm(uploadedFile, lsoort, debinr, medwnr)

Upload size form

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new WebUserApi();
var uploadedFile = /path/to/file.txt; // MultipartFile | Upload File
var lsoort = 56; // int | 
var debinr = 56; // int | 
var medwnr = 56; // int | 

try { 
    var result = api_instance.uploadSizeForm(uploadedFile, lsoort, debinr, medwnr);
    print(result);
} catch (e) {
    print("Exception when calling WebUserApi->uploadSizeForm: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uploadedFile** | **MultipartFile**| Upload File | 
 **lsoort** | **int**|  | 
 **debinr** | **int**|  | 
 **medwnr** | **int**|  | 

### Return type

**bool**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, multipart/form-data;v=1.12, multipart/form-data;v=1.11, multipart/form-data;v=1.10, multipart/form-data;v=1.9, multipart/form-data;v=1.8, multipart/form-data;v=1.7, multipart/form-data;v=1.6, multipart/form-data;v=1.5, multipart/form-data;v=1.4
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **webUserByEmployeeId**
> WebUser webUserByEmployeeId(storeId, customerId, employeeId)

Gets webshop user as specified by EmployeeId

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new WebUserApi();
var storeId = 56; // int | Store ID, as retrievable from <a href=\"?deepLinking=true#/Webshop/Store\">/api/Webshop</a>
var customerId = 56; // int | Customer ID, as retrievable from <a href=\"?deepLinking=true#/Customer/GetAllCustomers\">/api/Customer</a>
var employeeId = 56; // int | Employee ID, as retrievable from <a href=\"?deepLinking=true#/Employee/GetCustomerEmployees\">/api/Employee</a>

try { 
    var result = api_instance.webUserByEmployeeId(storeId, customerId, employeeId);
    print(result);
} catch (e) {
    print("Exception when calling WebUserApi->webUserByEmployeeId: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storeId** | **int**| Store ID, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Webshop/Store\&quot;&gt;/api/Webshop&lt;/a&gt; | 
 **customerId** | **int**| Customer ID, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Customer/GetAllCustomers\&quot;&gt;/api/Customer&lt;/a&gt; | 
 **employeeId** | **int**| Employee ID, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Employee/GetCustomerEmployees\&quot;&gt;/api/Employee&lt;/a&gt; | 

### Return type

[**WebUser**](WebUser.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

