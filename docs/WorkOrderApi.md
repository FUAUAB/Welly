# swagger.api.WorkOrderApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addWorkOrderAttachment**](WorkOrderApi.md#addWorkOrderAttachment) | **POST** /api/WorkOrder/Attachment | Add attachment to work order
[**createWorkOrderDetail**](WorkOrderApi.md#createWorkOrderDetail) | **POST** /api/WorkOrder/Detail | Add a new work order detail to a work order.
[**createWorkOrderInERP**](WorkOrderApi.md#createWorkOrderInERP) | **POST** /api/WorkOrder | Create a new workorder.
[**createWorkOrderSchedule**](WorkOrderApi.md#createWorkOrderSchedule) | **POST** /api/WorkOrder/Schedule | Create a new schedule item.
[**deleteWorkOrderDetail**](WorkOrderApi.md#deleteWorkOrderDetail) | **DELETE** /api/WorkOrder/Detail | Delete specified detail from work order.
[**deleteWorkOrderSchedule**](WorkOrderApi.md#deleteWorkOrderSchedule) | **DELETE** /api/WorkOrder/Schedule | Delete a schedule item
[**editWorkOrderDate**](WorkOrderApi.md#editWorkOrderDate) | **PUT** /api/WorkOrder/Date | Update work order date
[**editWorkOrderDescription**](WorkOrderApi.md#editWorkOrderDescription) | **PUT** /api/WorkOrder/Description | Update work order description.
[**editWorkOrderDetail**](WorkOrderApi.md#editWorkOrderDetail) | **PUT** /api/WorkOrder/Detail | Edit a work order detail from a work order. Please note: products or costs cannot be replaced. That scenario would require   deleting the existing detail and adding the new product / cost.
[**getActiveWorkOrder**](WorkOrderApi.md#getActiveWorkOrder) | **GET** /api/WorkOrder/ById/{orderId} | Get active work order by id.
[**getAllWorkOrdersV112**](WorkOrderApi.md#getAllWorkOrdersV112) | **GET** /api/WorkOrder | Get a list of all work orders for specified branch and company (and customer, if specified). BranchId &#x3D; 0 will return work orders for all branches.   Option to retrieve all work orders (default is only active work orders).
[**getAllWorkOrdersV112_0**](WorkOrderApi.md#getAllWorkOrdersV112_0) | **GET** /api/WorkOrder/{employeeId} | Get a list of all active work orders for specified employee.
[**getJobs**](WorkOrderApi.md#getJobs) | **GET** /api/WorkOrder/Job | Get jobs for work order hour
[**getSchedule**](WorkOrderApi.md#getSchedule) | **GET** /api/WorkOrder/Schedule | Get (work order) schedule items.
[**getScheduleById**](WorkOrderApi.md#getScheduleById) | **GET** /api/WorkOrder/Schedule/{scheduleId} | Get specified work order schedule item.
[**getScheduleForEmployee**](WorkOrderApi.md#getScheduleForEmployee) | **GET** /api/WorkOrder/Schedule/Employee | Get work order scheduled items for specified employee.
[**getScheduleForWorkOrder**](WorkOrderApi.md#getScheduleForWorkOrder) | **GET** /api/WorkOrder/Schedule/WorkOrder | Get work order scheduled items for specified work order.
[**getWorkOrderClasses**](WorkOrderApi.md#getWorkOrderClasses) | **GET** /api/WorkOrder/Class | Get a list of all workorder classes.
[**updateWorkOrderSchedule**](WorkOrderApi.md#updateWorkOrderSchedule) | **PUT** /api/WorkOrder/Schedule | Update an existing schedule item.


# **addWorkOrderAttachment**
> bool addWorkOrderAttachment(uploadedFile, companyId, branchId, workOrderId)

Add attachment to work order

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new WorkOrderApi();
var uploadedFile = /path/to/file.txt; // MultipartFile | Upload File
var companyId = 56; // int | Get companyId from <a href=\"?deepLinking=true#Company/GetAllCompanies\">/api/Company</a>
var branchId = 56; // int | Get branchId from <a href=\"?deepLinking=true#Branch/GetAllBranches\">/api/Branch</a>
var workOrderId = 56; // int | Get workorderId from <a href=\"?deepLinking=true#WorkOrder/GetAllWorkOrdersV112\">/api/Workorder</a>

try { 
    var result = api_instance.addWorkOrderAttachment(uploadedFile, companyId, branchId, workOrderId);
    print(result);
} catch (e) {
    print("Exception when calling WorkOrderApi->addWorkOrderAttachment: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uploadedFile** | **MultipartFile**| Upload File | 
 **companyId** | **int**| Get companyId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#Company/GetAllCompanies\&quot;&gt;/api/Company&lt;/a&gt; | 
 **branchId** | **int**| Get branchId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#Branch/GetAllBranches\&quot;&gt;/api/Branch&lt;/a&gt; | 
 **workOrderId** | **int**| Get workorderId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#WorkOrder/GetAllWorkOrdersV112\&quot;&gt;/api/Workorder&lt;/a&gt; | 

### Return type

**bool**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, multipart/form-data;v=1.12
 - **Accept**: application/json;v=1.12

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createWorkOrderDetail**
> bool createWorkOrderDetail(request)

Add a new work order detail to a work order.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new WorkOrderApi();
var request = new WorkOrderDetailRequest(); // WorkOrderDetailRequest | Work order detail request containing values of work order detail to add.

try { 
    var result = api_instance.createWorkOrderDetail(request);
    print(result);
} catch (e) {
    print("Exception when calling WorkOrderApi->createWorkOrderDetail: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**WorkOrderDetailRequest**](WorkOrderDetailRequest.md)| Work order detail request containing values of work order detail to add. | 

### Return type

**bool**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12
 - **Accept**: application/json;v=1.12

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createWorkOrderInERP**
> int createWorkOrderInERP(request)

Create a new workorder.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new WorkOrderApi();
var request = new WorkOrderRequest(); // WorkOrderRequest | Work order request containing details of work order to create.

try { 
    var result = api_instance.createWorkOrderInERP(request);
    print(result);
} catch (e) {
    print("Exception when calling WorkOrderApi->createWorkOrderInERP: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**WorkOrderRequest**](WorkOrderRequest.md)| Work order request containing details of work order to create. | 

### Return type

**int**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12
 - **Accept**: application/json;v=1.12

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createWorkOrderSchedule**
> int createWorkOrderSchedule(request)

Create a new schedule item.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new WorkOrderApi();
var request = new WorkOrderScheduleRequest(); // WorkOrderScheduleRequest | Details of item to schedule.

try { 
    var result = api_instance.createWorkOrderSchedule(request);
    print(result);
} catch (e) {
    print("Exception when calling WorkOrderApi->createWorkOrderSchedule: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**WorkOrderScheduleRequest**](WorkOrderScheduleRequest.md)| Details of item to schedule. | [optional] 

### Return type

**int**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12
 - **Accept**: application/json;v=1.12

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteWorkOrderDetail**
> bool deleteWorkOrderDetail(companyId, branchId, workorderId, orderLineId, orderSubLineId)

Delete specified detail from work order.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new WorkOrderApi();
var companyId = 56; // int | Get companyId from <a href=\"?deepLinking=true#Company/GetAllCompanies\">/api/Company</a>
var branchId = 56; // int | Get branchId from <a href=\"?deepLinking=true#Branch/GetAllBranches\">/api/Branch</a>
var workorderId = 56; // int | Get workorderId from <a href=\"?deepLinking=true#WorkOrder/GetAllWorkOrdersV112\">/api/Workorder</a>
var orderLineId = 56; // int | Line id of work order detail to delete.
var orderSubLineId = 56; // int | Sub line id of work order detail to delete.

try { 
    var result = api_instance.deleteWorkOrderDetail(companyId, branchId, workorderId, orderLineId, orderSubLineId);
    print(result);
} catch (e) {
    print("Exception when calling WorkOrderApi->deleteWorkOrderDetail: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **companyId** | **int**| Get companyId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#Company/GetAllCompanies\&quot;&gt;/api/Company&lt;/a&gt; | 
 **branchId** | **int**| Get branchId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#Branch/GetAllBranches\&quot;&gt;/api/Branch&lt;/a&gt; | 
 **workorderId** | **int**| Get workorderId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#WorkOrder/GetAllWorkOrdersV112\&quot;&gt;/api/Workorder&lt;/a&gt; | 
 **orderLineId** | **int**| Line id of work order detail to delete. | 
 **orderSubLineId** | **int**| Sub line id of work order detail to delete. | 

### Return type

**bool**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12
 - **Accept**: application/json;v=1.12

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteWorkOrderSchedule**
> bool deleteWorkOrderSchedule(companyId, branchId, scheduleId, series)

Delete a schedule item

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new WorkOrderApi();
var companyId = 56; // int | Get companyId from <a href=\"?deepLinking=true#Company/GetAllCompanies\">/api/Company</a>
var branchId = 56; // int | Get branchId from <a href=\"?deepLinking=true#Branch/GetAllBranches\">/api/Branch</a>.
var scheduleId = 56; // int | Get scheduleId from <a href=\"?deepLinking=true#WorkOrder/GetSchedule\">/api/WorkOrder/Schedule</a>
var series = true; // bool | If item is one of a series of items, delete complete series.

try { 
    var result = api_instance.deleteWorkOrderSchedule(companyId, branchId, scheduleId, series);
    print(result);
} catch (e) {
    print("Exception when calling WorkOrderApi->deleteWorkOrderSchedule: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **companyId** | **int**| Get companyId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#Company/GetAllCompanies\&quot;&gt;/api/Company&lt;/a&gt; | [optional] 
 **branchId** | **int**| Get branchId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#Branch/GetAllBranches\&quot;&gt;/api/Branch&lt;/a&gt;. | [optional] 
 **scheduleId** | **int**| Get scheduleId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#WorkOrder/GetSchedule\&quot;&gt;/api/WorkOrder/Schedule&lt;/a&gt; | [optional] 
 **series** | **bool**| If item is one of a series of items, delete complete series. | [optional] 

### Return type

**bool**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12
 - **Accept**: application/json;v=1.12

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editWorkOrderDate**
> bool editWorkOrderDate(request)

Update work order date

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new WorkOrderApi();
var request = new WorkOrderDateRequest(); // WorkOrderDateRequest | Work order date request, containing the details (incl. new date) to update the date of specified work order.

try { 
    var result = api_instance.editWorkOrderDate(request);
    print(result);
} catch (e) {
    print("Exception when calling WorkOrderApi->editWorkOrderDate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**WorkOrderDateRequest**](WorkOrderDateRequest.md)| Work order date request, containing the details (incl. new date) to update the date of specified work order. | 

### Return type

**bool**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12
 - **Accept**: application/json;v=1.12

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editWorkOrderDescription**
> bool editWorkOrderDescription(request)

Update work order description.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new WorkOrderApi();
var request = new WorkOrderDescriptionRequest(); // WorkOrderDescriptionRequest | Work order description change request, containing the details (incl. new description) to update the description of specified work order.

try { 
    var result = api_instance.editWorkOrderDescription(request);
    print(result);
} catch (e) {
    print("Exception when calling WorkOrderApi->editWorkOrderDescription: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**WorkOrderDescriptionRequest**](WorkOrderDescriptionRequest.md)| Work order description change request, containing the details (incl. new description) to update the description of specified work order. | 

### Return type

**bool**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12
 - **Accept**: application/json;v=1.12

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editWorkOrderDetail**
> bool editWorkOrderDetail(request)

Edit a work order detail from a work order. Please note: products or costs cannot be replaced. That scenario would require   deleting the existing detail and adding the new product / cost.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new WorkOrderApi();
var request = new WorkOrderDetailChangeRequest(); // WorkOrderDetailChangeRequest | Work order detail change request containing details for the required change in the work order.

try { 
    var result = api_instance.editWorkOrderDetail(request);
    print(result);
} catch (e) {
    print("Exception when calling WorkOrderApi->editWorkOrderDetail: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**WorkOrderDetailChangeRequest**](WorkOrderDetailChangeRequest.md)| Work order detail change request containing details for the required change in the work order. | 

### Return type

**bool**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12
 - **Accept**: application/json;v=1.12

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getActiveWorkOrder**
> List<V112WorkOrder> getActiveWorkOrder(companyId, branchId, orderId)

Get active work order by id.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new WorkOrderApi();
var companyId = 56; // int | Get companyId from <a href=\"?deepLinking=true#Company/GetAllCompanies\">/api/Company</a>
var branchId = 56; // int | Get branchId from <a href=\"?deepLinking=true#Branch/GetAllBranches\">/api/Branch</a>
var orderId = 56; // int | Get orderId from <a href=\"?deepLinking=true#/WorkOrder/GetAllWorkOrders\">/api/WorkOrder</a>

try { 
    var result = api_instance.getActiveWorkOrder(companyId, branchId, orderId);
    print(result);
} catch (e) {
    print("Exception when calling WorkOrderApi->getActiveWorkOrder: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **companyId** | **int**| Get companyId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#Company/GetAllCompanies\&quot;&gt;/api/Company&lt;/a&gt; | 
 **branchId** | **int**| Get branchId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#Branch/GetAllBranches\&quot;&gt;/api/Branch&lt;/a&gt; | 
 **orderId** | **int**| Get orderId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/WorkOrder/GetAllWorkOrders\&quot;&gt;/api/WorkOrder&lt;/a&gt; | 

### Return type

[**List<V112WorkOrder>**](V112WorkOrder.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12
 - **Accept**: application/json;v=1.12

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllWorkOrdersV112**
> List<V112WorkOrder> getAllWorkOrdersV112(companyId, branchId, customerId, onlyActive)

Get a list of all work orders for specified branch and company (and customer, if specified). BranchId = 0 will return work orders for all branches.   Option to retrieve all work orders (default is only active work orders).

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new WorkOrderApi();
var companyId = 56; // int | Get companyId from <a href=\"?deepLinking=true#Company/GetAllCompanies\">/api/Company</a>
var branchId = 56; // int | Get branchId from <a href=\"?deepLinking=true#Branch/GetAllBranches\">/api/Branch</a>
var customerId = 56; // int | Get customerId from <a href=\"?deepLinking=true#Customer/GetAllCustomers\">/api/Customer</a>. When customerId = 0, work orders for all customers              will be returned.
var onlyActive = true; // bool | Return only active work orders. Default is true.

try { 
    var result = api_instance.getAllWorkOrdersV112(companyId, branchId, customerId, onlyActive);
    print(result);
} catch (e) {
    print("Exception when calling WorkOrderApi->getAllWorkOrdersV112: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **companyId** | **int**| Get companyId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#Company/GetAllCompanies\&quot;&gt;/api/Company&lt;/a&gt; | 
 **branchId** | **int**| Get branchId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#Branch/GetAllBranches\&quot;&gt;/api/Branch&lt;/a&gt; | [optional] 
 **customerId** | **int**| Get customerId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#Customer/GetAllCustomers\&quot;&gt;/api/Customer&lt;/a&gt;. When customerId &#x3D; 0, work orders for all customers              will be returned. | [optional] 
 **onlyActive** | **bool**| Return only active work orders. Default is true. | [optional] [default to true]

### Return type

[**List<V112WorkOrder>**](V112WorkOrder.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12
 - **Accept**: application/json;v=1.12

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllWorkOrdersV112_0**
> List<V112WorkOrder> getAllWorkOrdersV112_0(employeeId)

Get a list of all active work orders for specified employee.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new WorkOrderApi();
var employeeId = 56; // int | Get employeeId from <a href=\"?deepLinking=true#Employee/GetCompanyEmployee\">/api/Employee</a>

try { 
    var result = api_instance.getAllWorkOrdersV112_0(employeeId);
    print(result);
} catch (e) {
    print("Exception when calling WorkOrderApi->getAllWorkOrdersV112_0: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employeeId** | **int**| Get employeeId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#Employee/GetCompanyEmployee\&quot;&gt;/api/Employee&lt;/a&gt; | 

### Return type

[**List<V112WorkOrder>**](V112WorkOrder.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12
 - **Accept**: application/json;v=1.12

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getJobs**
> List<Job> getJobs(companyId)

Get jobs for work order hour

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new WorkOrderApi();
var companyId = 56; // int | Get companyId from <a href=\"?deepLinking=true#Company/GetAllCompanies\">/api/Company</a>

try { 
    var result = api_instance.getJobs(companyId);
    print(result);
} catch (e) {
    print("Exception when calling WorkOrderApi->getJobs: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **companyId** | **int**| Get companyId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#Company/GetAllCompanies\&quot;&gt;/api/Company&lt;/a&gt; | [optional] 

### Return type

[**List<Job>**](Job.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12
 - **Accept**: application/json;v=1.12

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSchedule**
> List<WorkOrderSchedule> getSchedule(companyId, branchId)

Get (work order) schedule items.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new WorkOrderApi();
var companyId = 56; // int | Get companyId from <a href=\"?deepLinking=true#Company/GetAllCompanies\">/api/Company</a>. Value 0 if all schedule items should              be returned (i.e. work order related and other schedule items).
var branchId = 56; // int | Get branchId from <a href=\"?deepLinking=true#Branch/GetAllBranches\">/api/Branch</a>. Value 0 for all branches.

try { 
    var result = api_instance.getSchedule(companyId, branchId);
    print(result);
} catch (e) {
    print("Exception when calling WorkOrderApi->getSchedule: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **companyId** | **int**| Get companyId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#Company/GetAllCompanies\&quot;&gt;/api/Company&lt;/a&gt;. Value 0 if all schedule items should              be returned (i.e. work order related and other schedule items). | [optional] 
 **branchId** | **int**| Get branchId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#Branch/GetAllBranches\&quot;&gt;/api/Branch&lt;/a&gt;. Value 0 for all branches. | [optional] 

### Return type

[**List<WorkOrderSchedule>**](WorkOrderSchedule.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12
 - **Accept**: application/json;v=1.12

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getScheduleById**
> List<WorkOrderSchedule> getScheduleById(scheduleId, companyId, branchId)

Get specified work order schedule item.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new WorkOrderApi();
var scheduleId = 56; // int | Get scheduleId from <a href=\"?deepLinking=true#WorkOrder/GetSchedule\">/api/WorkOrder/Schedule</a>
var companyId = 56; // int | Get companyId from <a href=\"?deepLinking=true#Company/GetAllCompanies\">/api/Company</a>
var branchId = 56; // int | Get branchId from <a href=\"?deepLinking=true#Branch/GetAllBranches\">/api/Branch</a>.

try { 
    var result = api_instance.getScheduleById(scheduleId, companyId, branchId);
    print(result);
} catch (e) {
    print("Exception when calling WorkOrderApi->getScheduleById: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **scheduleId** | **int**| Get scheduleId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#WorkOrder/GetSchedule\&quot;&gt;/api/WorkOrder/Schedule&lt;/a&gt; | 
 **companyId** | **int**| Get companyId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#Company/GetAllCompanies\&quot;&gt;/api/Company&lt;/a&gt; | [optional] 
 **branchId** | **int**| Get branchId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#Branch/GetAllBranches\&quot;&gt;/api/Branch&lt;/a&gt;. | [optional] 

### Return type

[**List<WorkOrderSchedule>**](WorkOrderSchedule.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12
 - **Accept**: application/json;v=1.12

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getScheduleForEmployee**
> List<WorkOrderSchedule> getScheduleForEmployee(employeeId)

Get work order scheduled items for specified employee.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new WorkOrderApi();
var employeeId = 56; // int | Get employeeId from <a href=\"?deepLinking=true#Employee/GetCompanyEmployee\">/api/Employee</a>. Value 0 for all employees.

try { 
    var result = api_instance.getScheduleForEmployee(employeeId);
    print(result);
} catch (e) {
    print("Exception when calling WorkOrderApi->getScheduleForEmployee: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employeeId** | **int**| Get employeeId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#Employee/GetCompanyEmployee\&quot;&gt;/api/Employee&lt;/a&gt;. Value 0 for all employees. | 

### Return type

[**List<WorkOrderSchedule>**](WorkOrderSchedule.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12
 - **Accept**: application/json;v=1.12

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getScheduleForWorkOrder**
> List<WorkOrderSchedule> getScheduleForWorkOrder(companyId, branchId, workOrderId)

Get work order scheduled items for specified work order.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new WorkOrderApi();
var companyId = 56; // int | Get companyId from <a href=\"?deepLinking=true#Company/GetAllCompanies\">/api/Company</a>
var branchId = 56; // int | Get branchId from <a href=\"?deepLinking=true#Branch/GetAllBranches\">/api/Branch</a>.
var workOrderId = 56; // int | Get workOrderId from <a href=\"?deepLinking=true#WorkOrder/GetAllWorkOrdersV112\">/api/WorkOrder</a>

try { 
    var result = api_instance.getScheduleForWorkOrder(companyId, branchId, workOrderId);
    print(result);
} catch (e) {
    print("Exception when calling WorkOrderApi->getScheduleForWorkOrder: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **companyId** | **int**| Get companyId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#Company/GetAllCompanies\&quot;&gt;/api/Company&lt;/a&gt; | [optional] 
 **branchId** | **int**| Get branchId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#Branch/GetAllBranches\&quot;&gt;/api/Branch&lt;/a&gt;. | [optional] 
 **workOrderId** | **int**| Get workOrderId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#WorkOrder/GetAllWorkOrdersV112\&quot;&gt;/api/WorkOrder&lt;/a&gt; | [optional] 

### Return type

[**List<WorkOrderSchedule>**](WorkOrderSchedule.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12
 - **Accept**: application/json;v=1.12

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWorkOrderClasses**
> List<WorkOrderClass> getWorkOrderClasses(companyId)

Get a list of all workorder classes.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new WorkOrderApi();
var companyId = 56; // int | Get companyId from <a href=\"?deepLinking=true#Company/GetAllCompanies\">/api/Company</a>

try { 
    var result = api_instance.getWorkOrderClasses(companyId);
    print(result);
} catch (e) {
    print("Exception when calling WorkOrderApi->getWorkOrderClasses: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **companyId** | **int**| Get companyId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#Company/GetAllCompanies\&quot;&gt;/api/Company&lt;/a&gt; | [optional] 

### Return type

[**List<WorkOrderClass>**](WorkOrderClass.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12
 - **Accept**: application/json;v=1.12

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateWorkOrderSchedule**
> bool updateWorkOrderSchedule(request)

Update an existing schedule item.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new WorkOrderApi();
var request = new WorkOrderScheduleRequest(); // WorkOrderScheduleRequest | Details of item to schedule.

try { 
    var result = api_instance.updateWorkOrderSchedule(request);
    print(result);
} catch (e) {
    print("Exception when calling WorkOrderApi->updateWorkOrderSchedule: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**WorkOrderScheduleRequest**](WorkOrderScheduleRequest.md)| Details of item to schedule. | [optional] 

### Return type

**bool**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12
 - **Accept**: application/json;v=1.12

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

