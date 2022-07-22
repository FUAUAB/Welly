# swagger.api.ProjectApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](ProjectApi.md#create) | **POST** /api/Project | Create a new project
[**delete**](ProjectApi.md#delete) | **DELETE** /api/Project | Deactivate a specified project
[**getAllProjects**](ProjectApi.md#getAllProjects) | **GET** /api/Project | Get a list of all projects.
[**getProjectV19ById**](ProjectApi.md#getProjectV19ById) | **GET** /api/Project/{customerId}/{projectId} | Get project by customerId/projectId.
[**getProjectsByGLN**](ProjectApi.md#getProjectsByGLN) | **GET** /api/Project/{GLN} | Get projects by GLN.
[**getProjectsForCustomer**](ProjectApi.md#getProjectsForCustomer) | **GET** /api/Project/{customerId} | Get projects by customerId.
[**getUmsProjectByProjectId**](ProjectApi.md#getUmsProjectByProjectId) | **GET** /api/Project/{companyId}/{customerId}/{projectId} | Get project specified for UMS by project id
[**getUmsProjectV14**](ProjectApi.md#getUmsProjectV14) | **GET** /api/Project/api/Project | Get projects specified for UMS
[**status**](ProjectApi.md#status) | **GET** /api/Project/Status | Get project status.
[**update**](ProjectApi.md#update) | **PUT** /api/Project | Updates project.


# **create**
> int create(request)

Create a new project

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ProjectApi();
var request = new ProjectRequest(); // ProjectRequest | Project details

try { 
    var result = api_instance.create(request);
    print(result);
} catch (e) {
    print("Exception when calling ProjectApi->create: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**ProjectRequest**](ProjectRequest.md)| Project details | [optional] 

### Return type

**int**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9
 - **Accept**: application/json;v=1.9, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete**
> bool delete(customerId, projectId)

Deactivate a specified project

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ProjectApi();
var customerId = 56; // int | Get customerId from <a href=\"?deepLinking=true#/Customer/GetAllCustomers\">/api/Customer</a>
var projectId = projectId_example; // String | Get projectId from <a href=\"?deepLinking=true#/Project/GetAllProjects\">/api/Project</a>

try { 
    var result = api_instance.delete(customerId, projectId);
    print(result);
} catch (e) {
    print("Exception when calling ProjectApi->delete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **int**| Get customerId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Customer/GetAllCustomers\&quot;&gt;/api/Customer&lt;/a&gt; | [optional] 
 **projectId** | **String**| Get projectId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Project/GetAllProjects\&quot;&gt;/api/Project&lt;/a&gt; | [optional] 

### Return type

**bool**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9
 - **Accept**: application/json;v=1.9, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllProjects**
> List<Project> getAllProjects()

Get a list of all projects.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ProjectApi();

try { 
    var result = api_instance.getAllProjects();
    print(result);
} catch (e) {
    print("Exception when calling ProjectApi->getAllProjects: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<Project>**](Project.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProjectV19ById**
> V19Project getProjectV19ById(customerId, projectId)

Get project by customerId/projectId.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ProjectApi();
var customerId = 56; // int | Get customerId from <a href=\"?deepLinking=true#/Customer/GetAllCustomers\">/api/Customer</a>
var projectId = projectId_example; // String | Get projectId from <a href=\"?deepLinking=true#/Project/GetAllProjects\">/api/Project</a>

try { 
    var result = api_instance.getProjectV19ById(customerId, projectId);
    print(result);
} catch (e) {
    print("Exception when calling ProjectApi->getProjectV19ById: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **int**| Get customerId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Customer/GetAllCustomers\&quot;&gt;/api/Customer&lt;/a&gt; | 
 **projectId** | **String**| Get projectId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Project/GetAllProjects\&quot;&gt;/api/Project&lt;/a&gt; | 

### Return type

[**V19Project**](V19Project.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9
 - **Accept**: application/json;v=1.9, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProjectsByGLN**
> List<Project> getProjectsByGLN(GLN)

Get projects by GLN.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ProjectApi();
var GLN = GLN_example; // String | 

try { 
    var result = api_instance.getProjectsByGLN(GLN);
    print(result);
} catch (e) {
    print("Exception when calling ProjectApi->getProjectsByGLN: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GLN** | **String**|  | 

### Return type

[**List<Project>**](Project.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProjectsForCustomer**
> List<Project> getProjectsForCustomer(customerId)

Get projects by customerId.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ProjectApi();
var customerId = 56; // int | Get customerId from <a href=\"?filter=Customer\">/api/Customer</a>

try { 
    var result = api_instance.getProjectsForCustomer(customerId);
    print(result);
} catch (e) {
    print("Exception when calling ProjectApi->getProjectsForCustomer: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **int**| Get customerId from &lt;a href&#x3D;\&quot;?filter&#x3D;Customer\&quot;&gt;/api/Customer&lt;/a&gt; | 

### Return type

[**List<Project>**](Project.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUmsProjectByProjectId**
> UmsProject getUmsProjectByProjectId(companyId, customerId, projectId)

Get project specified for UMS by project id

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ProjectApi();
var companyId = 56; // int | Get companyId from <a href=\"?filter=Company\">/api/Company</a>
var customerId = 56; // int | Get customerId from <a href=\"?filter=Customer\">/api/Customer</a>
var projectId = projectId_example; // String | Get projectId from <a href=\"?filter=Project\">/api/Project</a>

try { 
    var result = api_instance.getUmsProjectByProjectId(companyId, customerId, projectId);
    print(result);
} catch (e) {
    print("Exception when calling ProjectApi->getUmsProjectByProjectId: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **companyId** | **int**| Get companyId from &lt;a href&#x3D;\&quot;?filter&#x3D;Company\&quot;&gt;/api/Company&lt;/a&gt; | 
 **customerId** | **int**| Get customerId from &lt;a href&#x3D;\&quot;?filter&#x3D;Customer\&quot;&gt;/api/Customer&lt;/a&gt; | 
 **projectId** | **String**| Get projectId from &lt;a href&#x3D;\&quot;?filter&#x3D;Project\&quot;&gt;/api/Project&lt;/a&gt; | 

### Return type

[**UmsProject**](UmsProject.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUmsProjectV14**
> List<UmsProject> getUmsProjectV14(companyId, customerId)

Get projects specified for UMS

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ProjectApi();
var companyId = 56; // int | Get companyId from <a href=\"?filter=Company\">/api/Company</a>
var customerId = 56; // int | Get customerId from <a href=\"?filter=Customer\">/api/Customer</a>

try { 
    var result = api_instance.getUmsProjectV14(companyId, customerId);
    print(result);
} catch (e) {
    print("Exception when calling ProjectApi->getUmsProjectV14: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **companyId** | **int**| Get companyId from &lt;a href&#x3D;\&quot;?filter&#x3D;Company\&quot;&gt;/api/Company&lt;/a&gt; | [optional] 
 **customerId** | **int**| Get customerId from &lt;a href&#x3D;\&quot;?filter&#x3D;Customer\&quot;&gt;/api/Customer&lt;/a&gt; | [optional] 

### Return type

[**List<UmsProject>**](UmsProject.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **status**
> List<ProjectStatus> status()

Get project status.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ProjectApi();

try { 
    var result = api_instance.status();
    print(result);
} catch (e) {
    print("Exception when calling ProjectApi->status: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<ProjectStatus>**](ProjectStatus.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9
 - **Accept**: application/json;v=1.9, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update**
> bool update(request)

Updates project.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ProjectApi();
var request = new ProjectRequest(); // ProjectRequest | Project details

try { 
    var result = api_instance.update(request);
    print(result);
} catch (e) {
    print("Exception when calling ProjectApi->update: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**ProjectRequest**](ProjectRequest.md)| Project details | [optional] 

### Return type

**bool**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9
 - **Accept**: application/json;v=1.9, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

