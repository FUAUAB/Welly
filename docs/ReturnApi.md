# swagger.api.ReturnApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getReturnById**](ReturnApi.md#getReturnById) | **GET** /api/Return/{companyId}/{branchId}/{returnId} | Get return order
[**getReturnOrders**](ReturnApi.md#getReturnOrders) | **GET** /api/Return/{storeId}/{companyId}/{branchId}/{customerId}/{employeeId}/{onlyShowOwnData} | Get return orders. Please be advised: when including a store ID in the request, the response will only include returns with orders from that respective store. Combined returns (i.e. with orders from different stores) will not be included.
[**requestReturnShipment**](ReturnApi.md#requestReturnShipment) | **POST** /api/Return | Request return shipment
[**returnFormPDF**](ReturnApi.md#returnFormPDF) | **GET** /api/Return/ReturnFormPDF/{companyId}/{branchId}/{returnId} | Get return order form in pdf
[**returnLabelPDF**](ReturnApi.md#returnLabelPDF) | **GET** /api/Return/ReturnLabelPDF/{companyId}/{branchId}/{returnId} | Get return label in pdf
[**returnMethods**](ReturnApi.md#returnMethods) | **GET** /api/Return/Methods/{customerId}/{storeId} | Request return shipment methods
[**returnedItems**](ReturnApi.md#returnedItems) | **GET** /api/Return/Items/{companyId}/{branchId}/{orderId}/{deliveryId} | Request Returned items


# **getReturnById**
> ModelReturn getReturnById(companyId, branchId, returnId)

Get return order

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ReturnApi();
var companyId = 56; // int | Get companyId from <a href=\"?filter=Company\">/api/Company</a>
var branchId = 56; // int | Get branchId from <a href=\"?filter=Branch\">/api/Branch</a>
var returnId = 56; // int | Get returnId from <a href=\"?filter=Return\">/api/Return</a>

try { 
    var result = api_instance.getReturnById(companyId, branchId, returnId);
    print(result);
} catch (e) {
    print("Exception when calling ReturnApi->getReturnById: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **companyId** | **int**| Get companyId from &lt;a href&#x3D;\&quot;?filter&#x3D;Company\&quot;&gt;/api/Company&lt;/a&gt; | 
 **branchId** | **int**| Get branchId from &lt;a href&#x3D;\&quot;?filter&#x3D;Branch\&quot;&gt;/api/Branch&lt;/a&gt; | 
 **returnId** | **int**| Get returnId from &lt;a href&#x3D;\&quot;?filter&#x3D;Return\&quot;&gt;/api/Return&lt;/a&gt; | 

### Return type

[**ModelReturn**](ModelReturn.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getReturnOrders**
> List<ModelReturn> getReturnOrders(storeId, companyId, branchId, customerId, employeeId, onlyShowOwnData)

Get return orders. Please be advised: when including a store ID in the request, the response will only include returns with orders from that respective store. Combined returns (i.e. with orders from different stores) will not be included.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ReturnApi();
var storeId = 56; // int | Get storeId from <a href=\"?filter=Webshop\">/api/Webshop</a>
var companyId = 56; // int | Get companyId from <a href=\"?filter=Company\">/api/Company</a>
var branchId = 56; // int | Get branchId from <a href=\"?filter=Branch\">/api/Branch</a>
var customerId = 56; // int | Get customerId from <a href=\"?filter=Customer\">/api/Customer</a>
var employeeId = 56; // int | Get employeeId from <a href=\"?filter=Employee\">/api/Employee</a>
var onlyShowOwnData = true; // bool | Only show data for speficied webshop login / employee

try { 
    var result = api_instance.getReturnOrders(storeId, companyId, branchId, customerId, employeeId, onlyShowOwnData);
    print(result);
} catch (e) {
    print("Exception when calling ReturnApi->getReturnOrders: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storeId** | **int**| Get storeId from &lt;a href&#x3D;\&quot;?filter&#x3D;Webshop\&quot;&gt;/api/Webshop&lt;/a&gt; | 
 **companyId** | **int**| Get companyId from &lt;a href&#x3D;\&quot;?filter&#x3D;Company\&quot;&gt;/api/Company&lt;/a&gt; | 
 **branchId** | **int**| Get branchId from &lt;a href&#x3D;\&quot;?filter&#x3D;Branch\&quot;&gt;/api/Branch&lt;/a&gt; | 
 **customerId** | **int**| Get customerId from &lt;a href&#x3D;\&quot;?filter&#x3D;Customer\&quot;&gt;/api/Customer&lt;/a&gt; | 
 **employeeId** | **int**| Get employeeId from &lt;a href&#x3D;\&quot;?filter&#x3D;Employee\&quot;&gt;/api/Employee&lt;/a&gt; | 
 **onlyShowOwnData** | **bool**| Only show data for speficied webshop login / employee | 

### Return type

[**List<ModelReturn>**](ModelReturn.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **requestReturnShipment**
> ModelReturn requestReturnShipment(requestedReturn)

Request return shipment

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ReturnApi();
var requestedReturn = new ReturnDelivery(); // ReturnDelivery | 

try { 
    var result = api_instance.requestReturnShipment(requestedReturn);
    print(result);
} catch (e) {
    print("Exception when calling ReturnApi->requestReturnShipment: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestedReturn** | [**ReturnDelivery**](ReturnDelivery.md)|  | [optional] 

### Return type

[**ModelReturn**](ModelReturn.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **returnFormPDF**
> MultipartFile returnFormPDF(companyId, branchId, returnId)

Get return order form in pdf

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ReturnApi();
var companyId = 56; // int | Get companyId from <a href=\"?filter=Company\">/api/Company</a>
var branchId = 56; // int | Get branchId from <a href=\"?filter=Branch\">/api/Branch</a>
var returnId = 56; // int | Get returnId from <a href=\"?filter=Return\">/api/Return</a>

try { 
    var result = api_instance.returnFormPDF(companyId, branchId, returnId);
    print(result);
} catch (e) {
    print("Exception when calling ReturnApi->returnFormPDF: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **companyId** | **int**| Get companyId from &lt;a href&#x3D;\&quot;?filter&#x3D;Company\&quot;&gt;/api/Company&lt;/a&gt; | 
 **branchId** | **int**| Get branchId from &lt;a href&#x3D;\&quot;?filter&#x3D;Branch\&quot;&gt;/api/Branch&lt;/a&gt; | 
 **returnId** | **int**| Get returnId from &lt;a href&#x3D;\&quot;?filter&#x3D;Return\&quot;&gt;/api/Return&lt;/a&gt; | 

### Return type

[**MultipartFile**](File.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2, application/json;v=1.1, application/json;v=1.0
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **returnLabelPDF**
> MultipartFile returnLabelPDF(companyId, branchId, returnId)

Get return label in pdf

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ReturnApi();
var companyId = 56; // int | Get companyId from <a href=\"?filter=Company\">/api/Company</a>
var branchId = 56; // int | Get branchId from <a href=\"?filter=Branch\">/api/Branch</a>
var returnId = 56; // int | Get returnId from <a href=\"?filter=Return\">/api/Return</a>

try { 
    var result = api_instance.returnLabelPDF(companyId, branchId, returnId);
    print(result);
} catch (e) {
    print("Exception when calling ReturnApi->returnLabelPDF: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **companyId** | **int**| Get companyId from &lt;a href&#x3D;\&quot;?filter&#x3D;Company\&quot;&gt;/api/Company&lt;/a&gt; | 
 **branchId** | **int**| Get branchId from &lt;a href&#x3D;\&quot;?filter&#x3D;Branch\&quot;&gt;/api/Branch&lt;/a&gt; | 
 **returnId** | **int**| Get returnId from &lt;a href&#x3D;\&quot;?filter&#x3D;Return\&quot;&gt;/api/Return&lt;/a&gt; | 

### Return type

[**MultipartFile**](File.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2, application/json;v=1.1, application/json;v=1.0
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **returnMethods**
> List<ReturnMethod> returnMethods(customerId, storeId)

Request return shipment methods

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ReturnApi();
var customerId = 56; // int | Get customerId from <a href=\"?filter=Customer\">/api/Customer</a>
var storeId = 56; // int | Get storeId from <a href=\"?filter=Webshop\">/api/Webshop</a>

try { 
    var result = api_instance.returnMethods(customerId, storeId);
    print(result);
} catch (e) {
    print("Exception when calling ReturnApi->returnMethods: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **int**| Get customerId from &lt;a href&#x3D;\&quot;?filter&#x3D;Customer\&quot;&gt;/api/Customer&lt;/a&gt; | 
 **storeId** | **int**| Get storeId from &lt;a href&#x3D;\&quot;?filter&#x3D;Webshop\&quot;&gt;/api/Webshop&lt;/a&gt; | 

### Return type

[**List<ReturnMethod>**](ReturnMethod.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **returnedItems**
> List<ReturnedItem> returnedItems(companyId, branchId, orderId, deliveryId)

Request Returned items

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ReturnApi();
var companyId = 56; // int | Get companyId from <a href=\"?filter=Company\">/api/Company</a>
var branchId = 56; // int | Get branchId from <a href=\"?filter=Branch\">/api/Branch</a>
var orderId = 56; // int | Get orderId from <a href=\"?filter=Order\">/api/Order</a>
var deliveryId = 56; // int | Get deliveryId from <a href=\"?filter=Delivery\">/api/Delivery</a>

try { 
    var result = api_instance.returnedItems(companyId, branchId, orderId, deliveryId);
    print(result);
} catch (e) {
    print("Exception when calling ReturnApi->returnedItems: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **companyId** | **int**| Get companyId from &lt;a href&#x3D;\&quot;?filter&#x3D;Company\&quot;&gt;/api/Company&lt;/a&gt; | 
 **branchId** | **int**| Get branchId from &lt;a href&#x3D;\&quot;?filter&#x3D;Branch\&quot;&gt;/api/Branch&lt;/a&gt; | 
 **orderId** | **int**| Get orderId from &lt;a href&#x3D;\&quot;?filter&#x3D;Order\&quot;&gt;/api/Order&lt;/a&gt; | 
 **deliveryId** | **int**| Get deliveryId from &lt;a href&#x3D;\&quot;?filter&#x3D;Delivery\&quot;&gt;/api/Delivery&lt;/a&gt; | 

### Return type

[**List<ReturnedItem>**](ReturnedItem.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2, application/json;v=1.1, application/json;v=1.0
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.1, application/json;v=1.0

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

