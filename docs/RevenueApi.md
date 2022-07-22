# swagger.api.RevenueApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**revenueDetailedForPeriod**](RevenueApi.md#revenueDetailedForPeriod) | **GET** /api/Revenue/PeriodDetailed | Get detailed revenue for selected period
[**revenueForArticleGroup**](RevenueApi.md#revenueForArticleGroup) | **GET** /api/Revenue/ArticleGroup | Get revenue for article group for a specified period.
[**revenueForArticleSubGroup**](RevenueApi.md#revenueForArticleSubGroup) | **GET** /api/Revenue/ArticleSubGroup | Get revenue for article sub group for specified period.
[**revenueForBrand**](RevenueApi.md#revenueForBrand) | **GET** /api/Revenue/Brand | Get revenue for specific brand for a specified period.
[**revenueForCustomer**](RevenueApi.md#revenueForCustomer) | **GET** /api/Revenue/Customer | Get revenue for customer for a specified period.
[**revenueForProduct**](RevenueApi.md#revenueForProduct) | **GET** /api/Revenue/Product | Get revenue for product for specified period.
[**revenueForSalesRepresentative**](RevenueApi.md#revenueForSalesRepresentative) | **GET** /api/Revenue/SalesRepresentative | Get revenue for sales representative for a specified period.
[**revenueForSupplier**](RevenueApi.md#revenueForSupplier) | **GET** /api/Revenue/Supplier | Get revenue for supplier for specified period.


# **revenueDetailedForPeriod**
> List<RevenueItem> revenueDetailedForPeriod(startDate, endDate)

Get detailed revenue for selected period

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new RevenueApi();
var startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
var endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try { 
    var result = api_instance.revenueDetailedForPeriod(startDate, endDate);
    print(result);
} catch (e) {
    print("Exception when calling RevenueApi->revenueDetailedForPeriod: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 

### Return type

[**List<RevenueItem>**](RevenueItem.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2, application/json;v=1.1, application/json;v=1.0
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.1, application/json;v=1.0

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **revenueForArticleGroup**
> List<Revenue> revenueForArticleGroup(startDate, endDate, articleGroupId)

Get revenue for article group for a specified period.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new RevenueApi();
var startDate = 2013-10-20T19:20:30+01:00; // DateTime | Start date of period
var endDate = 2013-10-20T19:20:30+01:00; // DateTime | End date of period
var articleGroupId = 56; // int | Article group ID, as retrievable from <a href=\"?deepLinking=true#Product/ArticleGroup\">/api/Product/ArticleGroup</a>

try { 
    var result = api_instance.revenueForArticleGroup(startDate, endDate, articleGroupId);
    print(result);
} catch (e) {
    print("Exception when calling RevenueApi->revenueForArticleGroup: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startDate** | **DateTime**| Start date of period | [optional] 
 **endDate** | **DateTime**| End date of period | [optional] 
 **articleGroupId** | **int**| Article group ID, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#Product/ArticleGroup\&quot;&gt;/api/Product/ArticleGroup&lt;/a&gt; | [optional] 

### Return type

[**List<Revenue>**](Revenue.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12
 - **Accept**: application/json;v=1.12

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **revenueForArticleSubGroup**
> List<Revenue> revenueForArticleSubGroup(startDate, endDate, articleGroupId, articleSubGroupId)

Get revenue for article sub group for specified period.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new RevenueApi();
var startDate = 2013-10-20T19:20:30+01:00; // DateTime | Start date of period
var endDate = 2013-10-20T19:20:30+01:00; // DateTime | End date of period
var articleGroupId = 56; // int | Article group ID, as retrievable from <a href=\"?deepLinking=true#Product/ArticleGroup\">/api/Product/ArticleGroup</a>
var articleSubGroupId = 56; // int | Article sub group ID, as retrievable from <a href=\"?deepLinking=true#Product/ArticleSubGroups\">/api/Product/ArticleSubGroup</a>

try { 
    var result = api_instance.revenueForArticleSubGroup(startDate, endDate, articleGroupId, articleSubGroupId);
    print(result);
} catch (e) {
    print("Exception when calling RevenueApi->revenueForArticleSubGroup: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startDate** | **DateTime**| Start date of period | [optional] 
 **endDate** | **DateTime**| End date of period | [optional] 
 **articleGroupId** | **int**| Article group ID, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#Product/ArticleGroup\&quot;&gt;/api/Product/ArticleGroup&lt;/a&gt; | [optional] 
 **articleSubGroupId** | **int**| Article sub group ID, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#Product/ArticleSubGroups\&quot;&gt;/api/Product/ArticleSubGroup&lt;/a&gt; | [optional] 

### Return type

[**List<Revenue>**](Revenue.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12
 - **Accept**: application/json;v=1.12

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **revenueForBrand**
> List<Revenue> revenueForBrand(startDate, endDate, brandId)

Get revenue for specific brand for a specified period.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new RevenueApi();
var startDate = 2013-10-20T19:20:30+01:00; // DateTime | Start date of period
var endDate = 2013-10-20T19:20:30+01:00; // DateTime | End date of period
var brandId = 56; // int | Brand ID, as retrievable from <a href=\"?deepLinking=true#Product/Brands\">/api/Product/Brand</a>

try { 
    var result = api_instance.revenueForBrand(startDate, endDate, brandId);
    print(result);
} catch (e) {
    print("Exception when calling RevenueApi->revenueForBrand: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startDate** | **DateTime**| Start date of period | [optional] 
 **endDate** | **DateTime**| End date of period | [optional] 
 **brandId** | **int**| Brand ID, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#Product/Brands\&quot;&gt;/api/Product/Brand&lt;/a&gt; | [optional] 

### Return type

[**List<Revenue>**](Revenue.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12
 - **Accept**: application/json;v=1.12

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **revenueForCustomer**
> List<Revenue> revenueForCustomer(startDate, endDate, customerId)

Get revenue for customer for a specified period.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new RevenueApi();
var startDate = 2013-10-20T19:20:30+01:00; // DateTime | Start date of period
var endDate = 2013-10-20T19:20:30+01:00; // DateTime | End date of period
var customerId = 56; // int | Customer ID, as retrievable from <a href=\"?deepLinking=true#Customer/GetAllCustomers\">/api/Customer</a>

try { 
    var result = api_instance.revenueForCustomer(startDate, endDate, customerId);
    print(result);
} catch (e) {
    print("Exception when calling RevenueApi->revenueForCustomer: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startDate** | **DateTime**| Start date of period | [optional] 
 **endDate** | **DateTime**| End date of period | [optional] 
 **customerId** | **int**| Customer ID, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#Customer/GetAllCustomers\&quot;&gt;/api/Customer&lt;/a&gt; | [optional] 

### Return type

[**List<Revenue>**](Revenue.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12
 - **Accept**: application/json;v=1.12

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **revenueForProduct**
> List<Revenue> revenueForProduct(startDate, endDate, productId)

Get revenue for product for specified period.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new RevenueApi();
var startDate = 2013-10-20T19:20:30+01:00; // DateTime | Start date of period
var endDate = 2013-10-20T19:20:30+01:00; // DateTime | End date of period
var productId = productId_example; // String | Product ID, as retrievable from <a href=\"?deepLinking=true#Product/ShopProductInformation\">/api/Product/ShopProducts</a>

try { 
    var result = api_instance.revenueForProduct(startDate, endDate, productId);
    print(result);
} catch (e) {
    print("Exception when calling RevenueApi->revenueForProduct: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startDate** | **DateTime**| Start date of period | [optional] 
 **endDate** | **DateTime**| End date of period | [optional] 
 **productId** | **String**| Product ID, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#Product/ShopProductInformation\&quot;&gt;/api/Product/ShopProducts&lt;/a&gt; | [optional] 

### Return type

[**List<Revenue>**](Revenue.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12
 - **Accept**: application/json;v=1.12

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **revenueForSalesRepresentative**
> List<Revenue> revenueForSalesRepresentative(startDate, endDate, salesRepresentativeId)

Get revenue for sales representative for a specified period.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new RevenueApi();
var startDate = 2013-10-20T19:20:30+01:00; // DateTime | Start date of period
var endDate = 2013-10-20T19:20:30+01:00; // DateTime | End date of period
var salesRepresentativeId = 56; // int | Sales representative ID               as retrievable from <a href=\"?deepLinking=true#/Representative/Representative\">/api/Representative</a>.

try { 
    var result = api_instance.revenueForSalesRepresentative(startDate, endDate, salesRepresentativeId);
    print(result);
} catch (e) {
    print("Exception when calling RevenueApi->revenueForSalesRepresentative: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startDate** | **DateTime**| Start date of period | [optional] 
 **endDate** | **DateTime**| End date of period | [optional] 
 **salesRepresentativeId** | **int**| Sales representative ID               as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Representative/Representative\&quot;&gt;/api/Representative&lt;/a&gt;. | [optional] 

### Return type

[**List<Revenue>**](Revenue.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12
 - **Accept**: application/json;v=1.12

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **revenueForSupplier**
> List<Revenue> revenueForSupplier(startDate, endDate, supplierId)

Get revenue for supplier for specified period.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new RevenueApi();
var startDate = 2013-10-20T19:20:30+01:00; // DateTime | Start date of period
var endDate = 2013-10-20T19:20:30+01:00; // DateTime | End date of period
var supplierId = 56; // int | Supplier ID, as retrievable from <a href=\"?deepLinking=true#Supplier/AllSuppliers\">/api/Supplier</a>

try { 
    var result = api_instance.revenueForSupplier(startDate, endDate, supplierId);
    print(result);
} catch (e) {
    print("Exception when calling RevenueApi->revenueForSupplier: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startDate** | **DateTime**| Start date of period | [optional] 
 **endDate** | **DateTime**| End date of period | [optional] 
 **supplierId** | **int**| Supplier ID, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#Supplier/AllSuppliers\&quot;&gt;/api/Supplier&lt;/a&gt; | [optional] 

### Return type

[**List<Revenue>**](Revenue.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12
 - **Accept**: application/json;v=1.12

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

