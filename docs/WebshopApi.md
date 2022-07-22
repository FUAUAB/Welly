# swagger.api.WebshopApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addOrUpdateAuthorizationRequest**](WebshopApi.md#addOrUpdateAuthorizationRequest) | **PUT** /api/Webshop/AuthorizationRequest | Add or update authorization request for webshoporder
[**addWebshopOrderV16**](WebshopApi.md#addWebshopOrderV16) | **POST** /api/Webshop/AddOrder | Add webshop order
[**cancelAuthorizationRequest**](WebshopApi.md#cancelAuthorizationRequest) | **DELETE** /api/Webshop/api/Webshop/CancelAuthorizationRequest | Cancel authorization request for webshoporder
[**categoriesForShop**](WebshopApi.md#categoriesForShop) | **GET** /api/Webshop/Category | Get categories for shop
[**categoriesWithProductsForShop**](WebshopApi.md#categoriesWithProductsForShop) | **GET** /api/Webshop/CategoryWithProducts | Get categories including underlying products for shop
[**categoryById**](WebshopApi.md#categoryById) | **GET** /api/Webshop/Category/{categoryId}/{position} | Get category for shop
[**deleteCategory**](WebshopApi.md#deleteCategory) | **DELETE** /api/Webshop/Category/{categoryId}/{position} | Delete category for shop
[**modifiedCategories**](WebshopApi.md#modifiedCategories) | **POST** /api/Webshop/Category | Get modified / new categories for shop
[**ociCustomFields**](WebshopApi.md#ociCustomFields) | **GET** /api/Webshop/OciCustomFields | Get OCI custom fields
[**productSpecificationAllowFiltering**](WebshopApi.md#productSpecificationAllowFiltering) | **GET** /api/Webshop/ProductSpecification/Allowfiltering | Get Product Specificationfiltering
[**receptionMethod**](WebshopApi.md#receptionMethod) | **GET** /api/Webshop/ReceptionMethod | Get reception methods for webshop orders.
[**specificationAllowFiltering**](WebshopApi.md#specificationAllowFiltering) | **GET** /api/Webshop/Specification/Allowfiltering | Get Specificationfiltering
[**store**](WebshopApi.md#store) | **GET** /api/Webshop/Store | Get Stores


# **addOrUpdateAuthorizationRequest**
> List<AuthorizationResult> addOrUpdateAuthorizationRequest(request)

Add or update authorization request for webshoporder

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new WebshopApi();
var request = new AuthorizationRequest(); // AuthorizationRequest | 

try { 
    var result = api_instance.addOrUpdateAuthorizationRequest(request);
    print(result);
} catch (e) {
    print("Exception when calling WebshopApi->addOrUpdateAuthorizationRequest: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**AuthorizationRequest**](AuthorizationRequest.md)|  | [optional] 

### Return type

[**List<AuthorizationResult>**](AuthorizationResult.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11
 - **Accept**: application/json;v=1.12, application/json;v=1.11

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addWebshopOrderV16**
> int addWebshopOrderV16(order)

Add webshop order

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new WebshopApi();
var order = new WebshopOrder(); // WebshopOrder | 

try { 
    var result = api_instance.addWebshopOrderV16(order);
    print(result);
} catch (e) {
    print("Exception when calling WebshopApi->addWebshopOrderV16: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order** | [**WebshopOrder**](WebshopOrder.md)|  | [optional] 

### Return type

**int**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cancelAuthorizationRequest**
> bool cancelAuthorizationRequest(storeId, customerId, employeeId, weborderId)

Cancel authorization request for webshoporder

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new WebshopApi();
var storeId = 56; // int | Get storeId from <a href=\"?deepLinking=true#/Webshop/Store\">/api/Webshop/Store</a>
var customerId = 56; // int | Get customer ID from <a href=\"?deepLinking=true#/Customer/GetAllCustomers\">/api/Customer</a>
var employeeId = 56; // int | Get employeeId from <a href=\"?deepLinking=true&amp;urls.primaryName=v1.4#/Employee/GetCustomerEmployees\">/api/Employee</a>
var weborderId = weborderId_example; // String | Weborder identification (note: this id differs from the (ERP) order Id!).

try { 
    var result = api_instance.cancelAuthorizationRequest(storeId, customerId, employeeId, weborderId);
    print(result);
} catch (e) {
    print("Exception when calling WebshopApi->cancelAuthorizationRequest: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storeId** | **int**| Get storeId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Webshop/Store\&quot;&gt;/api/Webshop/Store&lt;/a&gt; | [optional] 
 **customerId** | **int**| Get customer ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Customer/GetAllCustomers\&quot;&gt;/api/Customer&lt;/a&gt; | [optional] 
 **employeeId** | **int**| Get employeeId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true&amp;amp;urls.primaryName&#x3D;v1.4#/Employee/GetCustomerEmployees\&quot;&gt;/api/Employee&lt;/a&gt; | [optional] 
 **weborderId** | **String**| Weborder identification (note: this id differs from the (ERP) order Id!). | [optional] 

### Return type

**bool**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **categoriesForShop**
> List<Category> categoriesForShop(storeId, languageId)

Get categories for shop

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new WebshopApi();
var storeId = 56; // int | Get store ID from <a href=\"?deepLinking=true#/Webshop/Get\">/api/Webshop</a>
var languageId = 56; // int | Get languageId from <a href=\"?deepLinking=true#/Language/Get\">/api/Language</a>

try { 
    var result = api_instance.categoriesForShop(storeId, languageId);
    print(result);
} catch (e) {
    print("Exception when calling WebshopApi->categoriesForShop: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storeId** | **int**| Get store ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Webshop/Get\&quot;&gt;/api/Webshop&lt;/a&gt; | 
 **languageId** | **int**| Get languageId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Language/Get\&quot;&gt;/api/Language&lt;/a&gt; | 

### Return type

[**List<Category>**](Category.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **categoriesWithProductsForShop**
> List<Category> categoriesWithProductsForShop(storeId, languageId)

Get categories including underlying products for shop

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new WebshopApi();
var storeId = 56; // int | Get store ID from <a href=\"?deepLinking=true#/Webshop/Get\">/api/Webshop</a>
var languageId = 56; // int | Get languageId from <a href=\"?deepLinking=true#/Language/Get\">/api/Language</a>

try { 
    var result = api_instance.categoriesWithProductsForShop(storeId, languageId);
    print(result);
} catch (e) {
    print("Exception when calling WebshopApi->categoriesWithProductsForShop: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storeId** | **int**| Get store ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Webshop/Get\&quot;&gt;/api/Webshop&lt;/a&gt; | 
 **languageId** | **int**| Get languageId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Language/Get\&quot;&gt;/api/Language&lt;/a&gt; | 

### Return type

[**List<Category>**](Category.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10
 - **Accept**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **categoryById**
> Category categoryById(storeId, languageId, categoryId, position)

Get category for shop

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new WebshopApi();
var storeId = 56; // int | Get store ID from <a href=\"?deepLinking=true#/Webshop/Get\">/api/Webshop</a>
var languageId = 56; // int | Get language ID from <a href=\"?deepLinking=true#/Language/Get\">/api/Language</a>
var categoryId = 56; // int | Get category ID from <a href=\"?deepLinking=true&amp;urls.primaryName=v1.3#/Webshop/Category/Get\">/api/Webshop/Category</a>
var position = 56; // int | Category's position

try { 
    var result = api_instance.categoryById(storeId, languageId, categoryId, position);
    print(result);
} catch (e) {
    print("Exception when calling WebshopApi->categoryById: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storeId** | **int**| Get store ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Webshop/Get\&quot;&gt;/api/Webshop&lt;/a&gt; | 
 **languageId** | **int**| Get language ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Language/Get\&quot;&gt;/api/Language&lt;/a&gt; | 
 **categoryId** | **int**| Get category ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true&amp;amp;urls.primaryName&#x3D;v1.3#/Webshop/Category/Get\&quot;&gt;/api/Webshop/Category&lt;/a&gt; | 
 **position** | **int**| Category&#39;s position | 

### Return type

[**Category**](Category.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCategory**
> bool deleteCategory(storeId, languageId, categoryId, position)

Delete category for shop

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new WebshopApi();
var storeId = 56; // int | Get store ID from <a href=\"?deepLinking=true#/Webshop/Store\">/api/Webshop</a>
var languageId = 56; // int | Get language ID from <a href=\"?deepLinking=true#/Language/Get\">/api/Language</a>
var categoryId = 56; // int | Get category ID from <a href=\"?deepLinking=true&amp;urls.primaryName=v1.3#/Webshop/Category/Get\">/api/Webshop/Category</a>
var position = 56; // int | Category's position

try { 
    var result = api_instance.deleteCategory(storeId, languageId, categoryId, position);
    print(result);
} catch (e) {
    print("Exception when calling WebshopApi->deleteCategory: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storeId** | **int**| Get store ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Webshop/Store\&quot;&gt;/api/Webshop&lt;/a&gt; | 
 **languageId** | **int**| Get language ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Language/Get\&quot;&gt;/api/Language&lt;/a&gt; | 
 **categoryId** | **int**| Get category ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true&amp;amp;urls.primaryName&#x3D;v1.3#/Webshop/Category/Get\&quot;&gt;/api/Webshop/Category&lt;/a&gt; | 
 **position** | **int**| Category&#39;s position | 

### Return type

**bool**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifiedCategories**
> List<Category> modifiedCategories(categoryRequest)

Get modified / new categories for shop

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new WebshopApi();
var categoryRequest = new V13CategoryRequest(); // V13CategoryRequest | Request body for retrieval of modified/changed categories

try { 
    var result = api_instance.modifiedCategories(categoryRequest);
    print(result);
} catch (e) {
    print("Exception when calling WebshopApi->modifiedCategories: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **categoryRequest** | [**V13CategoryRequest**](V13CategoryRequest.md)| Request body for retrieval of modified/changed categories | [optional] 

### Return type

[**List<Category>**](Category.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ociCustomFields**
> List<V12OciCustomField> ociCustomFields(companyId, storeId, customerId, productIds, quantities, employeeId)

Get OCI custom fields

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new WebshopApi();
var companyId = 56; // int | Company ID for wich OCI custom fields apply, as retrievable from <a href=\"?deepLinking=true#/Company/Get\">/api/Company</a>
var storeId = 56; // int | Store ID for wich OCI custom fields apply, as retrievable from <a href=\"?deepLinking=true#/Webshop/Store/Get\">/api/Store</a>
var customerId = 56; // int | Customer ID for which OCI custom fields apply, as retrievable from <a href=\"?deepLinking=true&amp;urls.primaryName=v1.2#/Customer/Get\">/api/Customer</a>
var productIds = []; // List<String> | Product Ids for which OCI custom fields apply, as retrievable from <a href=\"?filter=Product/ShopProducts\">/api/Product/Product</a>
var quantities = []; // List<double> | Quantities for products in OCI order
var employeeId = 56; // int | Employee ID for which OCI custom fields apply, as retrievable from <a href=\"?deepLinking=true&amp;urls.primaryName=v1.2#/Employee/Get\">/api/Employee</a>

try { 
    var result = api_instance.ociCustomFields(companyId, storeId, customerId, productIds, quantities, employeeId);
    print(result);
} catch (e) {
    print("Exception when calling WebshopApi->ociCustomFields: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **companyId** | **int**| Company ID for wich OCI custom fields apply, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Company/Get\&quot;&gt;/api/Company&lt;/a&gt; | 
 **storeId** | **int**| Store ID for wich OCI custom fields apply, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Webshop/Store/Get\&quot;&gt;/api/Store&lt;/a&gt; | 
 **customerId** | **int**| Customer ID for which OCI custom fields apply, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true&amp;amp;urls.primaryName&#x3D;v1.2#/Customer/Get\&quot;&gt;/api/Customer&lt;/a&gt; | 
 **productIds** | [**List&lt;String&gt;**](String.md)| Product Ids for which OCI custom fields apply, as retrievable from &lt;a href&#x3D;\&quot;?filter&#x3D;Product/ShopProducts\&quot;&gt;/api/Product/Product&lt;/a&gt; | 
 **quantities** | [**List&lt;double&gt;**](double.md)| Quantities for products in OCI order | 
 **employeeId** | **int**| Employee ID for which OCI custom fields apply, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true&amp;amp;urls.primaryName&#x3D;v1.2#/Employee/Get\&quot;&gt;/api/Employee&lt;/a&gt; | [optional] 

### Return type

[**List<V12OciCustomField>**](V12OciCustomField.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **productSpecificationAllowFiltering**
> List<Specification> productSpecificationAllowFiltering(storeId, offset, limit)

Get Product Specificationfiltering

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new WebshopApi();
var storeId = 56; // int | Get store ID from <a href=\"?deepLinking=true#/Webshop/Store\">/api/Webshop</a>
var offset = 56; // int | Position where to start the query
var limit = 56; // int | Number of attributes in request (maximum is 25 000)

try { 
    var result = api_instance.productSpecificationAllowFiltering(storeId, offset, limit);
    print(result);
} catch (e) {
    print("Exception when calling WebshopApi->productSpecificationAllowFiltering: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storeId** | **int**| Get store ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Webshop/Store\&quot;&gt;/api/Webshop&lt;/a&gt; | [optional] 
 **offset** | **int**| Position where to start the query | [optional] 
 **limit** | **int**| Number of attributes in request (maximum is 25 000) | [optional] 

### Return type

[**List<Specification>**](Specification.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **receptionMethod**
> List<ReceptionMethod> receptionMethod()

Get reception methods for webshop orders.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new WebshopApi();

try { 
    var result = api_instance.receptionMethod();
    print(result);
} catch (e) {
    print("Exception when calling WebshopApi->receptionMethod: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<ReceptionMethod>**](ReceptionMethod.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9
 - **Accept**: application/json;v=1.9, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **specificationAllowFiltering**
> List<Specification> specificationAllowFiltering(storeId)

Get Specificationfiltering

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new WebshopApi();
var storeId = 56; // int | Get store ID from <a href=\"?deepLinking=true#/Webshop/Store\">/api/Webshop</a>

try { 
    var result = api_instance.specificationAllowFiltering(storeId);
    print(result);
} catch (e) {
    print("Exception when calling WebshopApi->specificationAllowFiltering: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storeId** | **int**| Get store ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Webshop/Store\&quot;&gt;/api/Webshop&lt;/a&gt; | [optional] 

### Return type

[**List<Specification>**](Specification.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **store**
> List<Store> store()

Get Stores

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new WebshopApi();

try { 
    var result = api_instance.store();
    print(result);
} catch (e) {
    print("Exception when calling WebshopApi->store: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<Store>**](Store.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2, application/json;v=1.1, application/json;v=1.0
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.1, application/json;v=1.0

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

