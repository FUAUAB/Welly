# swagger.api.ShippingApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addShippingAddressV19**](ShippingApi.md#addShippingAddressV19) | **POST** /api/Shipping | Add shipping address
[**costs**](ShippingApi.md#costs) | **POST** /api/Shipping/Costs | This will calculate the shipping costs for a specified list of products.
[**deleteShippingAddress**](ShippingApi.md#deleteShippingAddress) | **DELETE** /api/Shipping | Delete shipping address
[**getAllShippingAddressStatus**](ShippingApi.md#getAllShippingAddressStatus) | **GET** /api/ShippingAddress/ShippingAddressStatus | Get shipping address statusses
[**getShippingAddressV111**](ShippingApi.md#getShippingAddressV111) | **GET** /api/Shipping | Get shipping address
[**getShippingMethodById**](ShippingApi.md#getShippingMethodById) | **GET** /api/Shipping/Method | Get shipping method
[**shippingAddressStatusById**](ShippingApi.md#shippingAddressStatusById) | **GET** /api/ShippingAddress/ShippingAddressStatus/{shippingAddressStatusId} | Get shipping address status by ID
[**shippingMethods**](ShippingApi.md#shippingMethods) | **GET** /api/Shipping/Methods | Get shipping methods
[**shippingMethodsWebshop**](ShippingApi.md#shippingMethodsWebshop) | **GET** /api/Shipping/MethodsWebshop | Get shipping methods for webshop
[**shippingMethodsWebshopForCustomer**](ShippingApi.md#shippingMethodsWebshopForCustomer) | **GET** /api/Shipping/MethodsWebshop/{customerId} | Get webshop shipping methods for customer
[**updateShippingAddressV111**](ShippingApi.md#updateShippingAddressV111) | **PUT** /api/Shipping | Update shipping address


# **addShippingAddressV19**
> int addShippingAddressV19(shippingAddress)

Add shipping address

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ShippingApi();
var shippingAddress = new V19ShippingAddress(); // V19ShippingAddress | 

try { 
    var result = api_instance.addShippingAddressV19(shippingAddress);
    print(result);
} catch (e) {
    print("Exception when calling ShippingApi->addShippingAddressV19: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shippingAddress** | [**V19ShippingAddress**](V19ShippingAddress.md)|  | [optional] 

### Return type

**int**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9
 - **Accept**: application/json;v=1.9, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **costs**
> ShippingCostResult costs(costsRequest)

This will calculate the shipping costs for a specified list of products.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ShippingApi();
var costsRequest = new ShippingCostRequest(); // ShippingCostRequest | 

try { 
    var result = api_instance.costs(costsRequest);
    print(result);
} catch (e) {
    print("Exception when calling ShippingApi->costs: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **costsRequest** | [**ShippingCostRequest**](ShippingCostRequest.md)|  | [optional] 

### Return type

[**ShippingCostResult**](ShippingCostResult.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2, application/json;v=1.1, application/json;v=1.0
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.1, application/json;v=1.0

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteShippingAddress**
> deleteShippingAddress(customerId, shippingAddressId)

Delete shipping address

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ShippingApi();
var customerId = 56; // int | Get Id from <a href=\"?deepLinking=true#/Customer/Get\">/api/Customer</a>
var shippingAddressId = 56; // int | Get from <a href=\"?deepLinking=true#/Shipping/Get\">/api/Shipping</a>

try { 
    api_instance.deleteShippingAddress(customerId, shippingAddressId);
} catch (e) {
    print("Exception when calling ShippingApi->deleteShippingAddress: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **int**| Get Id from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Customer/Get\&quot;&gt;/api/Customer&lt;/a&gt; | [optional] 
 **shippingAddressId** | **int**| Get from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Shipping/Get\&quot;&gt;/api/Shipping&lt;/a&gt; | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllShippingAddressStatus**
> List<V12ShippingAddressStatus> getAllShippingAddressStatus()

Get shipping address statusses

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ShippingApi();

try { 
    var result = api_instance.getAllShippingAddressStatus();
    print(result);
} catch (e) {
    print("Exception when calling ShippingApi->getAllShippingAddressStatus: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<V12ShippingAddressStatus>**](V12ShippingAddressStatus.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getShippingAddressV111**
> V19ShippingAddress getShippingAddressV111(customerId, shippingAddressId)

Get shipping address

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ShippingApi();
var customerId = 56; // int | Get Id from <a href=\"?deepLinking=true#/Customer/Get\">/api/Customer</a>
var shippingAddressId = 56; // int | Get from <a href=\"?deepLinking=true#/Shipping/Get\">/api/Shipping</a>

try { 
    var result = api_instance.getShippingAddressV111(customerId, shippingAddressId);
    print(result);
} catch (e) {
    print("Exception when calling ShippingApi->getShippingAddressV111: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **int**| Get Id from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Customer/Get\&quot;&gt;/api/Customer&lt;/a&gt; | [optional] 
 **shippingAddressId** | **int**| Get from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Shipping/Get\&quot;&gt;/api/Shipping&lt;/a&gt; | [optional] 

### Return type

[**V19ShippingAddress**](V19ShippingAddress.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11
 - **Accept**: application/json;v=1.12, application/json;v=1.11

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getShippingMethodById**
> ShippingMethod getShippingMethodById(id, languageId)

Get shipping method

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ShippingApi();
var id = 56; // int | Get Id from <a href=\"?filter=Shipping\">/api/Shipping/Methods</a>
var languageId = 56; // int | Get languageId from <a href=\"?filter=Language\">/api/Language</a>

try { 
    var result = api_instance.getShippingMethodById(id, languageId);
    print(result);
} catch (e) {
    print("Exception when calling ShippingApi->getShippingMethodById: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Get Id from &lt;a href&#x3D;\&quot;?filter&#x3D;Shipping\&quot;&gt;/api/Shipping/Methods&lt;/a&gt; | [optional] 
 **languageId** | **int**| Get languageId from &lt;a href&#x3D;\&quot;?filter&#x3D;Language\&quot;&gt;/api/Language&lt;/a&gt; | [optional] 

### Return type

[**ShippingMethod**](ShippingMethod.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **shippingAddressStatusById**
> V12ShippingAddressStatus shippingAddressStatusById(shippingAddressStatusId)

Get shipping address status by ID

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ShippingApi();
var shippingAddressStatusId = 56; // int | Get ID from <a href=\"?deepLinking=true&amp;urls.primaryName=v1.2#/Shipping/ShippingAddressStatus/Get\">/api/Shipping/ShippingAddressStatus</a>

try { 
    var result = api_instance.shippingAddressStatusById(shippingAddressStatusId);
    print(result);
} catch (e) {
    print("Exception when calling ShippingApi->shippingAddressStatusById: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shippingAddressStatusId** | **int**| Get ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true&amp;amp;urls.primaryName&#x3D;v1.2#/Shipping/ShippingAddressStatus/Get\&quot;&gt;/api/Shipping/ShippingAddressStatus&lt;/a&gt; | 

### Return type

[**V12ShippingAddressStatus**](V12ShippingAddressStatus.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **shippingMethods**
> List<ShippingMethod> shippingMethods(languageId)

Get shipping methods

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ShippingApi();
var languageId = 56; // int | Get languageId from <a href=\"?filter=Language\">/api/Language</a>

try { 
    var result = api_instance.shippingMethods(languageId);
    print(result);
} catch (e) {
    print("Exception when calling ShippingApi->shippingMethods: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **languageId** | **int**| Get languageId from &lt;a href&#x3D;\&quot;?filter&#x3D;Language\&quot;&gt;/api/Language&lt;/a&gt; | [optional] 

### Return type

[**List<ShippingMethod>**](ShippingMethod.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **shippingMethodsWebshop**
> List<ShippingMethodWebshop> shippingMethodsWebshop(storeId)

Get shipping methods for webshop

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ShippingApi();
var storeId = 56; // int | Get storeId from <a href=\"?deepLinking=true#/Webshop/Store/Get\">/api/Store</a>

try { 
    var result = api_instance.shippingMethodsWebshop(storeId);
    print(result);
} catch (e) {
    print("Exception when calling ShippingApi->shippingMethodsWebshop: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storeId** | **int**| Get storeId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Webshop/Store/Get\&quot;&gt;/api/Store&lt;/a&gt; | [optional] 

### Return type

[**List<ShippingMethodWebshop>**](ShippingMethodWebshop.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **shippingMethodsWebshopForCustomer**
> List<ShippingMethodWebshop> shippingMethodsWebshopForCustomer(customerId, storeId)

Get webshop shipping methods for customer

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ShippingApi();
var customerId = 56; // int | Get customer ID from <a href=\"?deepLinking=true#/Customer/GetAllCustomers\">/api/Customer</a>
var storeId = 56; // int | Get storeId from <a href=\"?deepLinking=true#/Webshop/Store/Get\">/api/Store</a>

try { 
    var result = api_instance.shippingMethodsWebshopForCustomer(customerId, storeId);
    print(result);
} catch (e) {
    print("Exception when calling ShippingApi->shippingMethodsWebshopForCustomer: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **int**| Get customer ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Customer/GetAllCustomers\&quot;&gt;/api/Customer&lt;/a&gt; | 
 **storeId** | **int**| Get storeId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Webshop/Store/Get\&quot;&gt;/api/Store&lt;/a&gt; | [optional] 

### Return type

[**List<ShippingMethodWebshop>**](ShippingMethodWebshop.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateShippingAddressV111**
> updateShippingAddressV111(shippingAddress)

Update shipping address

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ShippingApi();
var shippingAddress = new V19ShippingAddress(); // V19ShippingAddress | 

try { 
    api_instance.updateShippingAddressV111(shippingAddress);
} catch (e) {
    print("Exception when calling ShippingApi->updateShippingAddressV111: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shippingAddress** | [**V19ShippingAddress**](V19ShippingAddress.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11
 - **Accept**: application/json;v=1.12, application/json;v=1.11

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

