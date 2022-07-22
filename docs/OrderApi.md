# swagger.api.OrderApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**changeOrder**](OrderApi.md#changeOrder) | **PUT** /api/Order/ChangeOrder | Change order into delivery in parts and/or cancel specified order lines.
[**orderAttachment**](OrderApi.md#orderAttachment) | **POST** /api/Order/OrderAttachment | Add Attachment to order
[**orderChanges**](OrderApi.md#orderChanges) | **GET** /api/Order/OrderChanges | Get Order changes
[**orderSelectionV17**](OrderApi.md#orderSelectionV17) | **GET** /api/Order/OrderSelection | Get collection of orders for customer, specified by a starting point (offset) and limit.
[**orderV12**](OrderApi.md#orderV12) | **GET** /api/Order/Order/{orderId} | Get Order by Id
[**orderWithPaginationAndSearch**](OrderApi.md#orderWithPaginationAndSearch) | **GET** /api/Order/Order | Get Orders for customer, optional based on search parameter


# **changeOrder**
> bool changeOrder(request)

Change order into delivery in parts and/or cancel specified order lines.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new OrderApi();
var request = new ChangeOrderRequest(); // ChangeOrderRequest | Request containing order change data.

try { 
    var result = api_instance.changeOrder(request);
    print(result);
} catch (e) {
    print("Exception when calling OrderApi->changeOrder: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**ChangeOrderRequest**](ChangeOrderRequest.md)| Request containing order change data. | [optional] 

### Return type

**bool**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11
 - **Accept**: application/json;v=1.12, application/json;v=1.11

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **orderAttachment**
> bool orderAttachment(uploadedFile, companyId, branchId, orderId)

Add Attachment to order

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new OrderApi();
var uploadedFile = /path/to/file.txt; // MultipartFile | Upload File
var companyId = 56; // int | Get companyId from <a href=\"?filter=Company\">/api/Company</a>
var branchId = 56; // int | Get branchId from <a href=\"?filter=Branch\">/api/Branch</a>
var orderId = 56; // int | Get orderId for <a href=\"?filter=Order\">/api/Order</a>

try { 
    var result = api_instance.orderAttachment(uploadedFile, companyId, branchId, orderId);
    print(result);
} catch (e) {
    print("Exception when calling OrderApi->orderAttachment: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uploadedFile** | **MultipartFile**| Upload File | 
 **companyId** | **int**| Get companyId from &lt;a href&#x3D;\&quot;?filter&#x3D;Company\&quot;&gt;/api/Company&lt;/a&gt; | [optional] 
 **branchId** | **int**| Get branchId from &lt;a href&#x3D;\&quot;?filter&#x3D;Branch\&quot;&gt;/api/Branch&lt;/a&gt; | [optional] 
 **orderId** | **int**| Get orderId for &lt;a href&#x3D;\&quot;?filter&#x3D;Order\&quot;&gt;/api/Order&lt;/a&gt; | [optional] 

### Return type

**bool**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2, application/json;v=1.1, application/json;v=1.0, multipart/form-data;v=1.12, multipart/form-data;v=1.11, multipart/form-data;v=1.10, multipart/form-data;v=1.9, multipart/form-data;v=1.8, multipart/form-data;v=1.7, multipart/form-data;v=1.6, multipart/form-data;v=1.5, multipart/form-data;v=1.4, multipart/form-data;v=1.3, multipart/form-data;v=1.2, multipart/form-data;v=1.1, multipart/form-data;v=1.0
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.1, application/json;v=1.0

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **orderChanges**
> OrderChangeResult orderChanges(storeId, fromDate)

Get Order changes

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new OrderApi();
var storeId = 56; // int | Get storeId from <a href=\"?deepLinking=true#/Webshop/Store/Get\">/api/Store</a>
var fromDate = 2013-10-20T19:20:30+01:00; // DateTime | Start date for retrieval order changes

try { 
    var result = api_instance.orderChanges(storeId, fromDate);
    print(result);
} catch (e) {
    print("Exception when calling OrderApi->orderChanges: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storeId** | **int**| Get storeId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Webshop/Store/Get\&quot;&gt;/api/Store&lt;/a&gt; | [optional] 
 **fromDate** | **DateTime**| Start date for retrieval order changes | [optional] 

### Return type

[**OrderChangeResult**](OrderChangeResult.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2, application/json;v=1.1
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.1

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **orderSelectionV17**
> List<V12Order> orderSelectionV17(storeId, companyId, branchId, customerId, quotationsOnly, startDate, endDate, employeeId, wLogin, showOnlyOwnData, offset, limit)

Get collection of orders for customer, specified by a starting point (offset) and limit.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new OrderApi();
var storeId = 56; // int | Get storeId from <a href=\"?filter=Webshop\">/api/Webshop</a>. Value 0 for all stores.
var companyId = 56; // int | Get companyId from <a href=\"?filter=Company\">/api/Company</a>
var branchId = 56; // int | Get branchId from <a href=\"?filter=Branch\">/api/Branch</a>. Value 0 for all branches.
var customerId = 56; // int | Get customerId from <a href=\"?filter=Customer\">/api/Customer</a>
var quotationsOnly = true; // bool | Show only quotations
var startDate = 2013-10-20T19:20:30+01:00; // DateTime | Start date for requested order period
var endDate = 2013-10-20T19:20:30+01:00; // DateTime | End date for requested order period
var employeeId = 56; // int | Get employeeId from <a href=\"?filter=Employee\">/api/Employee</a>
var wLogin = wLogin_example; // String | Get login name from <a href=\"?filter=WebUser\">/api/WebUser</a>
var showOnlyOwnData = true; // bool | Only show data for specified storeId, webshop login or employee
var offset = 56; // int | Starting point to return records
var limit = 56; // int | Maximum number of records to return

try { 
    var result = api_instance.orderSelectionV17(storeId, companyId, branchId, customerId, quotationsOnly, startDate, endDate, employeeId, wLogin, showOnlyOwnData, offset, limit);
    print(result);
} catch (e) {
    print("Exception when calling OrderApi->orderSelectionV17: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storeId** | **int**| Get storeId from &lt;a href&#x3D;\&quot;?filter&#x3D;Webshop\&quot;&gt;/api/Webshop&lt;/a&gt;. Value 0 for all stores. | 
 **companyId** | **int**| Get companyId from &lt;a href&#x3D;\&quot;?filter&#x3D;Company\&quot;&gt;/api/Company&lt;/a&gt; | 
 **branchId** | **int**| Get branchId from &lt;a href&#x3D;\&quot;?filter&#x3D;Branch\&quot;&gt;/api/Branch&lt;/a&gt;. Value 0 for all branches. | 
 **customerId** | **int**| Get customerId from &lt;a href&#x3D;\&quot;?filter&#x3D;Customer\&quot;&gt;/api/Customer&lt;/a&gt; | 
 **quotationsOnly** | **bool**| Show only quotations | 
 **startDate** | **DateTime**| Start date for requested order period | 
 **endDate** | **DateTime**| End date for requested order period | 
 **employeeId** | **int**| Get employeeId from &lt;a href&#x3D;\&quot;?filter&#x3D;Employee\&quot;&gt;/api/Employee&lt;/a&gt; | [optional] 
 **wLogin** | **String**| Get login name from &lt;a href&#x3D;\&quot;?filter&#x3D;WebUser\&quot;&gt;/api/WebUser&lt;/a&gt; | [optional] 
 **showOnlyOwnData** | **bool**| Only show data for specified storeId, webshop login or employee | [optional] 
 **offset** | **int**| Starting point to return records | [optional] 
 **limit** | **int**| Maximum number of records to return | [optional] 

### Return type

[**List<V12Order>**](V12Order.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **orderV12**
> V12Order orderV12(orderId, companyId, branchId)

Get Order by Id

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new OrderApi();
var orderId = 56; // int | Get orderId for <a href=\"?filter=Order\">/api/Order</a>
var companyId = 56; // int | Get companyId from <a href=\"?filter=Company\">/api/Company</a>
var branchId = 56; // int | Get branchId from <a href=\"?filter=Branch\">/api/Branch</a>

try { 
    var result = api_instance.orderV12(orderId, companyId, branchId);
    print(result);
} catch (e) {
    print("Exception when calling OrderApi->orderV12: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **int**| Get orderId for &lt;a href&#x3D;\&quot;?filter&#x3D;Order\&quot;&gt;/api/Order&lt;/a&gt; | 
 **companyId** | **int**| Get companyId from &lt;a href&#x3D;\&quot;?filter&#x3D;Company\&quot;&gt;/api/Company&lt;/a&gt; | [optional] 
 **branchId** | **int**| Get branchId from &lt;a href&#x3D;\&quot;?filter&#x3D;Branch\&quot;&gt;/api/Branch&lt;/a&gt; | [optional] 

### Return type

[**V12Order**](V12Order.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **orderWithPaginationAndSearch**
> List<V12Order> orderWithPaginationAndSearch(storeId, companyId, branchId, customerId, quotationsOnly, startDate, endDate, employeeId, wLogin, showOnlyOwnData, pageNumber, pageSize, currentOrdersOnly, searchType, searchString)

Get Orders for customer, optional based on search parameter

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new OrderApi();
var storeId = 56; // int | Get storeId from <a href=\"?filter=Webshop\">/api/Webshop</a>. Value 0 for all stores.
var companyId = 56; // int | Get companyId from <a href=\"?filter=Company\">/api/Company</a>
var branchId = 56; // int | Get branchId from <a href=\"?filter=Branch\">/api/Branch</a>. Value 0 for all branches.
var customerId = 56; // int | Get customerId from <a href=\"?filter=Customer\">/api/Customer</a>
var quotationsOnly = true; // bool | Show only quotations
var startDate = 2013-10-20T19:20:30+01:00; // DateTime | Start date for requested order period
var endDate = 2013-10-20T19:20:30+01:00; // DateTime | End date for requested order period
var employeeId = 56; // int | Get employeeId from <a href=\"?filter=Employee\">/api/Employee</a>
var wLogin = wLogin_example; // String | Get login name from <a href=\"?filter=WebUser\">/api/WebUser</a>
var showOnlyOwnData = true; // bool | Only show data for specified storeId, webshop login or employee
var pageNumber = 56; // int | Page number for response result
var pageSize = 56; // int | Number of records in result (max. 40)
var currentOrdersOnly = true; // bool | Return only current orders
var searchType = searchType_example; // String | Search type
var searchString = searchString_example; // String | String upon which underlying records will be searched.

try { 
    var result = api_instance.orderWithPaginationAndSearch(storeId, companyId, branchId, customerId, quotationsOnly, startDate, endDate, employeeId, wLogin, showOnlyOwnData, pageNumber, pageSize, currentOrdersOnly, searchType, searchString);
    print(result);
} catch (e) {
    print("Exception when calling OrderApi->orderWithPaginationAndSearch: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storeId** | **int**| Get storeId from &lt;a href&#x3D;\&quot;?filter&#x3D;Webshop\&quot;&gt;/api/Webshop&lt;/a&gt;. Value 0 for all stores. | 
 **companyId** | **int**| Get companyId from &lt;a href&#x3D;\&quot;?filter&#x3D;Company\&quot;&gt;/api/Company&lt;/a&gt; | 
 **branchId** | **int**| Get branchId from &lt;a href&#x3D;\&quot;?filter&#x3D;Branch\&quot;&gt;/api/Branch&lt;/a&gt;. Value 0 for all branches. | 
 **customerId** | **int**| Get customerId from &lt;a href&#x3D;\&quot;?filter&#x3D;Customer\&quot;&gt;/api/Customer&lt;/a&gt; | 
 **quotationsOnly** | **bool**| Show only quotations | 
 **startDate** | **DateTime**| Start date for requested order period | 
 **endDate** | **DateTime**| End date for requested order period | 
 **employeeId** | **int**| Get employeeId from &lt;a href&#x3D;\&quot;?filter&#x3D;Employee\&quot;&gt;/api/Employee&lt;/a&gt; | [optional] 
 **wLogin** | **String**| Get login name from &lt;a href&#x3D;\&quot;?filter&#x3D;WebUser\&quot;&gt;/api/WebUser&lt;/a&gt; | [optional] 
 **showOnlyOwnData** | **bool**| Only show data for specified storeId, webshop login or employee | [optional] 
 **pageNumber** | **int**| Page number for response result | [optional] 
 **pageSize** | **int**| Number of records in result (max. 40) | [optional] 
 **currentOrdersOnly** | **bool**| Return only current orders | [optional] [default to false]
 **searchType** | **String**| Search type | [optional] 
 **searchString** | **String**| String upon which underlying records will be searched. | [optional] 

### Return type

[**List<V12Order>**](V12Order.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10
 - **Accept**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

