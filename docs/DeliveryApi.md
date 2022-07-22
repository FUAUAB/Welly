# swagger.api.DeliveryApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createDelivery**](DeliveryApi.md#createDelivery) | **POST** /api/Delivery | Create a new delivery.
[**deliveryNotePDF**](DeliveryApi.md#deliveryNotePDF) | **GET** /api/Delivery/DeliveryNote/{companyId}/{branchId}/{orderId}/{deliveryId} | Returns delivery note PDF
[**getAllDeliveryConditions**](DeliveryApi.md#getAllDeliveryConditions) | **GET** /api/Delivery/DeliveryCondition | Get delivery conditions
[**getDeliveries**](DeliveryApi.md#getDeliveries) | **GET** /api/Delivery | Returns deliveries
[**getDeliveriesPagedAndSearch**](DeliveryApi.md#getDeliveriesPagedAndSearch) | **GET** /api/Delivery/Paged | Returns deliveries (paged), optional based on search parameter
[**getDeliveryCondition**](DeliveryApi.md#getDeliveryCondition) | **GET** /api/Delivery/DeliveryCondition/{companyId}/{languageId}/{deliveryConditionId} | Get delivery condition
[**getSingleDelivery**](DeliveryApi.md#getSingleDelivery) | **GET** /api/Delivery/Single | Returns delivery
[**validShippingDates**](DeliveryApi.md#validShippingDates) | **GET** /api/Delivery/ValidShippingDates | Returns a list of valid shipping dates


# **createDelivery**
> DeliveryResult createDelivery(delivery)

Create a new delivery.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new DeliveryApi();
var delivery = new Delivery(); // Delivery | 

try { 
    var result = api_instance.createDelivery(delivery);
    print(result);
} catch (e) {
    print("Exception when calling DeliveryApi->createDelivery: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **delivery** | [**Delivery**](Delivery.md)|  | [optional] 

### Return type

[**DeliveryResult**](DeliveryResult.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deliveryNotePDF**
> MultipartFile deliveryNotePDF(companyId, branchId, orderId, deliveryId, userId)

Returns delivery note PDF

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new DeliveryApi();
var companyId = 56; // int | Get companyId from <a href=\"?deepLinking=true#/Company/Get\">/api/Company</a>
var branchId = 56; // int | Get branchId from <a href=\"?deepLinking=true#/Branch/Get\">/api/Branch</a>
var orderId = 56; // int | Get orderId from <a href=\"?deepLinking=true#/Order/Get\">/api/Order</a>
var deliveryId = 56; // int | Get deliveryId from <a href=\"?deepLinking=true#/Delivery/Get\">/api/Delivery</a>
var userId = userId_example; // String | Optional userId for custom report

try { 
    var result = api_instance.deliveryNotePDF(companyId, branchId, orderId, deliveryId, userId);
    print(result);
} catch (e) {
    print("Exception when calling DeliveryApi->deliveryNotePDF: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **companyId** | **int**| Get companyId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Company/Get\&quot;&gt;/api/Company&lt;/a&gt; | 
 **branchId** | **int**| Get branchId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Branch/Get\&quot;&gt;/api/Branch&lt;/a&gt; | 
 **orderId** | **int**| Get orderId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Order/Get\&quot;&gt;/api/Order&lt;/a&gt; | 
 **deliveryId** | **int**| Get deliveryId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Delivery/Get\&quot;&gt;/api/Delivery&lt;/a&gt; | 
 **userId** | **String**| Optional userId for custom report | [optional] [default to ]

### Return type

[**MultipartFile**](File.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2, application/json;v=1.1, application/json;v=1.0
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllDeliveryConditions**
> List<V12DeliveryCondition> getAllDeliveryConditions(companyId, languageId)

Get delivery conditions

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new DeliveryApi();
var companyId = 56; // int | Get ID from <a href=\"?deepLinking=true#/Company/Get\">/api/Company</a>
var languageId = 56; // int | Get ID from <a href=\"?deepLinking=true#/Language/Get\">/api/Language</a>

try { 
    var result = api_instance.getAllDeliveryConditions(companyId, languageId);
    print(result);
} catch (e) {
    print("Exception when calling DeliveryApi->getAllDeliveryConditions: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **companyId** | **int**| Get ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Company/Get\&quot;&gt;/api/Company&lt;/a&gt; | [optional] 
 **languageId** | **int**| Get ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Language/Get\&quot;&gt;/api/Language&lt;/a&gt; | [optional] 

### Return type

[**List<V12DeliveryCondition>**](V12DeliveryCondition.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDeliveries**
> List<Delivery> getDeliveries(startDate, endDate, storeId, companyId, branchId, customerId, employeeId, webshopLogin, onlyShowOwnData, searchQuerySearchType, searchQuerySearchString)

Returns deliveries

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new DeliveryApi();
var startDate = 2013-10-20T19:20:30+01:00; // DateTime | Start date for requested delivery period
var endDate = 2013-10-20T19:20:30+01:00; // DateTime | End date for requested delivery period
var storeId = 56; // int | StoreId where order is placed, as retrieved from <a href=\"?filter=Webshop\">/api/Webshop</a>. If StoreId = 0, deliveries for all shops AND those entered in ERP will be returned.
var companyId = 56; // int | CompanyId as retrieved from <a href=\"?filter=Company\">/api/Company</a>
var branchId = 56; // int | BranchId as retrieved from <a href=\"?filter=Branch\">/api/Branch</a>
var customerId = 56; // int | CustomerId as retrieved from <a href=\"?filter=Customer\">/api/Customer</a>
var employeeId = 56; // int | EmployeeId as retrieved from <a href=\"?filter=Employee\">/api/Employee</a>
var webshopLogin = webshopLogin_example; // String | Login name for user as retrieved from <a href=\"?filter=WebUser\">/api/WebUser</a>
var onlyShowOwnData = true; // bool | Show only data of specified login / employee
var searchQuerySearchType = searchQuerySearchType_example; // String | Search type
var searchQuerySearchString = searchQuerySearchString_example; // String | String upon which underlying records will be searched.

try { 
    var result = api_instance.getDeliveries(startDate, endDate, storeId, companyId, branchId, customerId, employeeId, webshopLogin, onlyShowOwnData, searchQuerySearchType, searchQuerySearchString);
    print(result);
} catch (e) {
    print("Exception when calling DeliveryApi->getDeliveries: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startDate** | **DateTime**| Start date for requested delivery period | 
 **endDate** | **DateTime**| End date for requested delivery period | 
 **storeId** | **int**| StoreId where order is placed, as retrieved from &lt;a href&#x3D;\&quot;?filter&#x3D;Webshop\&quot;&gt;/api/Webshop&lt;/a&gt;. If StoreId &#x3D; 0, deliveries for all shops AND those entered in ERP will be returned. | [optional] 
 **companyId** | **int**| CompanyId as retrieved from &lt;a href&#x3D;\&quot;?filter&#x3D;Company\&quot;&gt;/api/Company&lt;/a&gt; | [optional] 
 **branchId** | **int**| BranchId as retrieved from &lt;a href&#x3D;\&quot;?filter&#x3D;Branch\&quot;&gt;/api/Branch&lt;/a&gt; | [optional] 
 **customerId** | **int**| CustomerId as retrieved from &lt;a href&#x3D;\&quot;?filter&#x3D;Customer\&quot;&gt;/api/Customer&lt;/a&gt; | [optional] 
 **employeeId** | **int**| EmployeeId as retrieved from &lt;a href&#x3D;\&quot;?filter&#x3D;Employee\&quot;&gt;/api/Employee&lt;/a&gt; | [optional] 
 **webshopLogin** | **String**| Login name for user as retrieved from &lt;a href&#x3D;\&quot;?filter&#x3D;WebUser\&quot;&gt;/api/WebUser&lt;/a&gt; | [optional] 
 **onlyShowOwnData** | **bool**| Show only data of specified login / employee | [optional] 
 **searchQuerySearchType** | **String**| Search type | [optional] 
 **searchQuerySearchString** | **String**| String upon which underlying records will be searched. | [optional] 

### Return type

[**List<Delivery>**](Delivery.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDeliveriesPagedAndSearch**
> List<Delivery> getDeliveriesPagedAndSearch(startDate, endDate, storeId, companyId, branchId, customerId, employeeId, webshopLogin, onlyShowOwnData, searchQuerySearchType, searchQuerySearchString, pageNumber, pageSize)

Returns deliveries (paged), optional based on search parameter

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new DeliveryApi();
var startDate = 2013-10-20T19:20:30+01:00; // DateTime | Start date for requested delivery period
var endDate = 2013-10-20T19:20:30+01:00; // DateTime | End date for requested delivery period
var storeId = 56; // int | StoreId where order is placed, as retrieved from <a href=\"?filter=Webshop\">/api/Webshop</a>. If StoreId = 0, deliveries for all shops AND those entered in ERP will be returned.
var companyId = 56; // int | CompanyId as retrieved from <a href=\"?filter=Company\">/api/Company</a>
var branchId = 56; // int | BranchId as retrieved from <a href=\"?filter=Branch\">/api/Branch</a>
var customerId = 56; // int | CustomerId as retrieved from <a href=\"?filter=Customer\">/api/Customer</a>
var employeeId = 56; // int | EmployeeId as retrieved from <a href=\"?filter=Employee\">/api/Employee</a>
var webshopLogin = webshopLogin_example; // String | Login name for user as retrieved from <a href=\"?filter=WebUser\">/api/WebUser</a>
var onlyShowOwnData = true; // bool | Show only data of specified login / employee
var searchQuerySearchType = searchQuerySearchType_example; // String | Search type
var searchQuerySearchString = searchQuerySearchString_example; // String | String upon which underlying records will be searched.
var pageNumber = 56; // int | Page number for response result
var pageSize = 56; // int | Number of records in result (max. 40)

try { 
    var result = api_instance.getDeliveriesPagedAndSearch(startDate, endDate, storeId, companyId, branchId, customerId, employeeId, webshopLogin, onlyShowOwnData, searchQuerySearchType, searchQuerySearchString, pageNumber, pageSize);
    print(result);
} catch (e) {
    print("Exception when calling DeliveryApi->getDeliveriesPagedAndSearch: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startDate** | **DateTime**| Start date for requested delivery period | 
 **endDate** | **DateTime**| End date for requested delivery period | 
 **storeId** | **int**| StoreId where order is placed, as retrieved from &lt;a href&#x3D;\&quot;?filter&#x3D;Webshop\&quot;&gt;/api/Webshop&lt;/a&gt;. If StoreId &#x3D; 0, deliveries for all shops AND those entered in ERP will be returned. | [optional] 
 **companyId** | **int**| CompanyId as retrieved from &lt;a href&#x3D;\&quot;?filter&#x3D;Company\&quot;&gt;/api/Company&lt;/a&gt; | [optional] 
 **branchId** | **int**| BranchId as retrieved from &lt;a href&#x3D;\&quot;?filter&#x3D;Branch\&quot;&gt;/api/Branch&lt;/a&gt; | [optional] 
 **customerId** | **int**| CustomerId as retrieved from &lt;a href&#x3D;\&quot;?filter&#x3D;Customer\&quot;&gt;/api/Customer&lt;/a&gt; | [optional] 
 **employeeId** | **int**| EmployeeId as retrieved from &lt;a href&#x3D;\&quot;?filter&#x3D;Employee\&quot;&gt;/api/Employee&lt;/a&gt; | [optional] 
 **webshopLogin** | **String**| Login name for user as retrieved from &lt;a href&#x3D;\&quot;?filter&#x3D;WebUser\&quot;&gt;/api/WebUser&lt;/a&gt; | [optional] 
 **onlyShowOwnData** | **bool**| Show only data of specified login / employee | [optional] 
 **searchQuerySearchType** | **String**| Search type | [optional] 
 **searchQuerySearchString** | **String**| String upon which underlying records will be searched. | [optional] 
 **pageNumber** | **int**| Page number for response result | [optional] 
 **pageSize** | **int**| Number of records in result (max. 40) | [optional] 

### Return type

[**List<Delivery>**](Delivery.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10
 - **Accept**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDeliveryCondition**
> V12DeliveryCondition getDeliveryCondition(companyId, languageId, deliveryConditionId)

Get delivery condition

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new DeliveryApi();
var companyId = 56; // int | Get ID from <a href=\"?deepLinking=true#/Company/Get\">/api/Company</a>
var languageId = 56; // int | Get ID from <a href=\"?deepLinking=true#/Language/Get\">/api/Language</a>
var deliveryConditionId = 56; // int | Get ID from <a href=\"?deepLinking=true&amp;urls.primaryName=v1.2#/Delivery/DeliveryCondition\">/api/Delivery</a>

try { 
    var result = api_instance.getDeliveryCondition(companyId, languageId, deliveryConditionId);
    print(result);
} catch (e) {
    print("Exception when calling DeliveryApi->getDeliveryCondition: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **companyId** | **int**| Get ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Company/Get\&quot;&gt;/api/Company&lt;/a&gt; | 
 **languageId** | **int**| Get ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Language/Get\&quot;&gt;/api/Language&lt;/a&gt; | 
 **deliveryConditionId** | **int**| Get ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true&amp;amp;urls.primaryName&#x3D;v1.2#/Delivery/DeliveryCondition\&quot;&gt;/api/Delivery&lt;/a&gt; | 

### Return type

[**V12DeliveryCondition**](V12DeliveryCondition.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSingleDelivery**
> Delivery getSingleDelivery(storeId, companyId, branchId, customerId, orderId, deliveryId)

Returns delivery

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new DeliveryApi();
var storeId = 56; // int | StoreId where order is placed, as retrieved from <a href=\"?filter=Webshop\">/api/Webshop</a>
var companyId = 56; // int | CompanyId as retrieved from <a href=\"?filter=Company\">/api/Company</a>
var branchId = 56; // int | BranchId as retrieved from <a href=\"?filter=Branch\">/api/Branch</a>
var customerId = 56; // int | CustomerId as retrieved from <a href=\"?filter=Customer\">/api/Customer</a>
var orderId = 56; // int | OrderId as retrieved from <a href=\"?filter=Order\">/api/Order</a>
var deliveryId = 56; // int | DeliveryId as retrieved from <a href=\"?filter=Delivery\">/api/Delivery</a>

try { 
    var result = api_instance.getSingleDelivery(storeId, companyId, branchId, customerId, orderId, deliveryId);
    print(result);
} catch (e) {
    print("Exception when calling DeliveryApi->getSingleDelivery: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storeId** | **int**| StoreId where order is placed, as retrieved from &lt;a href&#x3D;\&quot;?filter&#x3D;Webshop\&quot;&gt;/api/Webshop&lt;/a&gt; | [optional] 
 **companyId** | **int**| CompanyId as retrieved from &lt;a href&#x3D;\&quot;?filter&#x3D;Company\&quot;&gt;/api/Company&lt;/a&gt; | [optional] 
 **branchId** | **int**| BranchId as retrieved from &lt;a href&#x3D;\&quot;?filter&#x3D;Branch\&quot;&gt;/api/Branch&lt;/a&gt; | [optional] 
 **customerId** | **int**| CustomerId as retrieved from &lt;a href&#x3D;\&quot;?filter&#x3D;Customer\&quot;&gt;/api/Customer&lt;/a&gt; | [optional] 
 **orderId** | **int**| OrderId as retrieved from &lt;a href&#x3D;\&quot;?filter&#x3D;Order\&quot;&gt;/api/Order&lt;/a&gt; | [optional] 
 **deliveryId** | **int**| DeliveryId as retrieved from &lt;a href&#x3D;\&quot;?filter&#x3D;Delivery\&quot;&gt;/api/Delivery&lt;/a&gt; | [optional] 

### Return type

[**Delivery**](Delivery.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **validShippingDates**
> List<DateTime> validShippingDates(companyId, numberOfDates)

Returns a list of valid shipping dates

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new DeliveryApi();
var companyId = 56; // int | Get companyId from <a href=\"?deepLinking=true#/Company/Get\">/api/Company</a>
var numberOfDates = 56; // int | Number of valid delivery dates to be returned

try { 
    var result = api_instance.validShippingDates(companyId, numberOfDates);
    print(result);
} catch (e) {
    print("Exception when calling DeliveryApi->validShippingDates: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **companyId** | **int**| Get companyId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Company/Get\&quot;&gt;/api/Company&lt;/a&gt; | [optional] 
 **numberOfDates** | **int**| Number of valid delivery dates to be returned | [optional] 

### Return type

[**List<DateTime>**](DateTime.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2, application/json;v=1.1, application/json;v=1.0
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.1, application/json;v=1.0

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

