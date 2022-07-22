# swagger.api.ProductSelectionApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add**](ProductSelectionApi.md#add) | **POST** /api/Productselection/api/Productselection | Add product selection to employee
[**deleteProductSelection**](ProductSelectionApi.md#deleteProductSelection) | **DELETE** /api/Productselection/api/Productselection | Delete product selection from employee
[**getByCustomerV16**](ProductSelectionApi.md#getByCustomerV16) | **GET** /api/Productselection/Customer/{storeId}/{customerId} | Get product selections of specific customer
[**getCategoryBudgets**](ProductSelectionApi.md#getCategoryBudgets) | **GET** /api/Productselection/api/Productselection/Category/{lsoort}/{debinr}/{medwnr}/{webanr} | Get categories of product selection
[**getForEmployeeV16**](ProductSelectionApi.md#getForEmployeeV16) | **GET** /api/Productselection/{storeId}/{customerId}/{employeeId} | Get product selections for employee
[**getPerfectSizesForUser**](ProductSelectionApi.md#getPerfectSizesForUser) | **GET** /api/Productselection/api/Productselection/PerfectSize | Get registrated sizes for webshopuser
[**getProductSelectionById**](ProductSelectionApi.md#getProductSelectionById) | **GET** /api/Productselection/api/Productselection/{lsoort}/{webanr} | Get specific product selection
[**productSelectionWithSize**](ProductSelectionApi.md#productSelectionWithSize) | **GET** /api/Productselection/api/ProductSelection/Size | Get all possible sizes for customer&#39;s product selection
[**updateCategoryBudgetV14**](ProductSelectionApi.md#updateCategoryBudgetV14) | **PUT** /api/Productselection/api/Productselection/Category | Updates categories in budget
[**updatePerfectSizeForUser**](ProductSelectionApi.md#updatePerfectSizeForUser) | **POST** /api/Productselection/api/ProductSelection/PerfectSize | Set or reset size of specified product group for user


# **add**
> add(lsoort, debinr, medwnr, webanr)

Add product selection to employee

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ProductSelectionApi();
var lsoort = 56; // int | 
var debinr = 56; // int | 
var medwnr = 56; // int | 
var webanr = 56; // int | 

try { 
    api_instance.add(lsoort, debinr, medwnr, webanr);
} catch (e) {
    print("Exception when calling ProductSelectionApi->add: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lsoort** | **int**|  | [optional] 
 **debinr** | **int**|  | [optional] 
 **medwnr** | **int**|  | [optional] 
 **webanr** | **int**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2, application/json;v=1.1, application/json;v=1.0
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.1, application/json;v=1.0

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteProductSelection**
> deleteProductSelection(lsoort, debinr, medwnr, webanr)

Delete product selection from employee

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ProductSelectionApi();
var lsoort = 56; // int | 
var debinr = 56; // int | 
var medwnr = 56; // int | 
var webanr = 56; // int | 

try { 
    api_instance.deleteProductSelection(lsoort, debinr, medwnr, webanr);
} catch (e) {
    print("Exception when calling ProductSelectionApi->deleteProductSelection: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lsoort** | **int**|  | [optional] 
 **debinr** | **int**|  | [optional] 
 **medwnr** | **int**|  | [optional] 
 **webanr** | **int**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getByCustomerV16**
> List<UmsCustomerProductSelection> getByCustomerV16(storeId, customerId)

Get product selections of specific customer

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ProductSelectionApi();
var storeId = 56; // int | Get store ID from <a href=\"?deepLinking=true#/Webshop/Store\">/api/Webshop</a>
var customerId = 56; // int | Get customer ID from <a href=\"?deepLinking=true#/Customer/GetAllCustomers\">/api/Customer</a>

try { 
    var result = api_instance.getByCustomerV16(storeId, customerId);
    print(result);
} catch (e) {
    print("Exception when calling ProductSelectionApi->getByCustomerV16: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storeId** | **int**| Get store ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Webshop/Store\&quot;&gt;/api/Webshop&lt;/a&gt; | 
 **customerId** | **int**| Get customer ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Customer/GetAllCustomers\&quot;&gt;/api/Customer&lt;/a&gt; | 

### Return type

[**List<UmsCustomerProductSelection>**](UmsCustomerProductSelection.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCategoryBudgets**
> UmsModelsProductSelectionCategoryBudgets getCategoryBudgets(lsoort, debinr, medwnr, webanr)

Get categories of product selection

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ProductSelectionApi();
var lsoort = 56; // int | 
var debinr = 56; // int | 
var medwnr = 56; // int | 
var webanr = 56; // int | 

try { 
    var result = api_instance.getCategoryBudgets(lsoort, debinr, medwnr, webanr);
    print(result);
} catch (e) {
    print("Exception when calling ProductSelectionApi->getCategoryBudgets: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lsoort** | **int**|  | 
 **debinr** | **int**|  | 
 **medwnr** | **int**|  | 
 **webanr** | **int**|  | 

### Return type

[**UmsModelsProductSelectionCategoryBudgets**](UmsModelsProductSelectionCategoryBudgets.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2, application/json;v=1.1, application/json;v=1.0
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.1, application/json;v=1.0

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getForEmployeeV16**
> List<UmsCustomerProductSelection> getForEmployeeV16(storeId, customerId, employeeId)

Get product selections for employee

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ProductSelectionApi();
var storeId = 56; // int | Get store ID from <a href=\"?deepLinking=true#/Webshop/Store\">/api/Webshop</a>
var customerId = 56; // int | Get customer ID from <a href=\"?deepLinking=true#/Customer/GetAllCustomers\">/api/Customer</a>
var employeeId = 56; // int | Get employee ID from <a href=\"?deepLinking=true#/Employee/GetCustomerEmployees\">/api/Employee</a>

try { 
    var result = api_instance.getForEmployeeV16(storeId, customerId, employeeId);
    print(result);
} catch (e) {
    print("Exception when calling ProductSelectionApi->getForEmployeeV16: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storeId** | **int**| Get store ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Webshop/Store\&quot;&gt;/api/Webshop&lt;/a&gt; | 
 **customerId** | **int**| Get customer ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Customer/GetAllCustomers\&quot;&gt;/api/Customer&lt;/a&gt; | 
 **employeeId** | **int**| Get employee ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Employee/GetCustomerEmployees\&quot;&gt;/api/Employee&lt;/a&gt; | 

### Return type

[**List<UmsCustomerProductSelection>**](UmsCustomerProductSelection.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPerfectSizesForUser**
> List<ProductTailoredSize> getPerfectSizesForUser(storeId, customerId, employeeId, productGroupId)

Get registrated sizes for webshopuser

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ProductSelectionApi();
var storeId = 56; // int | Get store ID from <a href=\"?deepLinking=true&amp;urls.primaryName=v1.5#/Webshop/Store\">/api/Webshop</a>
var customerId = 56; // int | Get customer ID from <a href=\"?deepLinking=true#/Customer/GetAllCustomers\">/api/Customer</a>
var employeeId = 56; // int | Get employeeId from <a href=\"?deepLinking=true&amp;urls.primaryName=v1.4#/Employee/GetCustomerEmployees\">/api/Employee</a>
var productGroupId = productGroupId_example; // String | Product group ID for which a size is registered for user (Optional)

try { 
    var result = api_instance.getPerfectSizesForUser(storeId, customerId, employeeId, productGroupId);
    print(result);
} catch (e) {
    print("Exception when calling ProductSelectionApi->getPerfectSizesForUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storeId** | **int**| Get store ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true&amp;amp;urls.primaryName&#x3D;v1.5#/Webshop/Store\&quot;&gt;/api/Webshop&lt;/a&gt; | [optional] 
 **customerId** | **int**| Get customer ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Customer/GetAllCustomers\&quot;&gt;/api/Customer&lt;/a&gt; | [optional] 
 **employeeId** | **int**| Get employeeId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true&amp;amp;urls.primaryName&#x3D;v1.4#/Employee/GetCustomerEmployees\&quot;&gt;/api/Employee&lt;/a&gt; | [optional] 
 **productGroupId** | **String**| Product group ID for which a size is registered for user (Optional) | [optional] 

### Return type

[**List<ProductTailoredSize>**](ProductTailoredSize.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProductSelectionById**
> UmsModelsProductSelection getProductSelectionById(lsoort, webanr)

Get specific product selection

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ProductSelectionApi();
var lsoort = 56; // int | 
var webanr = 56; // int | 

try { 
    var result = api_instance.getProductSelectionById(lsoort, webanr);
    print(result);
} catch (e) {
    print("Exception when calling ProductSelectionApi->getProductSelectionById: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lsoort** | **int**|  | 
 **webanr** | **int**|  | 

### Return type

[**UmsModelsProductSelection**](UmsModelsProductSelection.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **productSelectionWithSize**
> ProductSelectionSize productSelectionWithSize(storeId, customerId, employeeId)

Get all possible sizes for customer's product selection

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ProductSelectionApi();
var storeId = 56; // int | Get store ID from <a href=\"?deepLinking=true&amp;urls.primaryName=v1.4#/Webshop/Store/Get\">/api/Webshop</a>
var customerId = 56; // int | Get customer ID from <a href=\"?deepLinking=true&amp;urls.primaryName=v1.4#/Customer/GetCustomerById\">/api/Customer</a>
var employeeId = 56; // int | Get employeeId from <a href=\"?deepLinking=true&amp;urls.primaryName=v1.4#/Employee/GetCustomerEmployeeById\">/api/Employee</a>

try { 
    var result = api_instance.productSelectionWithSize(storeId, customerId, employeeId);
    print(result);
} catch (e) {
    print("Exception when calling ProductSelectionApi->productSelectionWithSize: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storeId** | **int**| Get store ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true&amp;amp;urls.primaryName&#x3D;v1.4#/Webshop/Store/Get\&quot;&gt;/api/Webshop&lt;/a&gt; | [optional] 
 **customerId** | **int**| Get customer ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true&amp;amp;urls.primaryName&#x3D;v1.4#/Customer/GetCustomerById\&quot;&gt;/api/Customer&lt;/a&gt; | [optional] 
 **employeeId** | **int**| Get employeeId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true&amp;amp;urls.primaryName&#x3D;v1.4#/Employee/GetCustomerEmployeeById\&quot;&gt;/api/Employee&lt;/a&gt; | [optional] 

### Return type

[**ProductSelectionSize**](ProductSelectionSize.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCategoryBudgetV14**
> bool updateCategoryBudgetV14(storeId, customerId, employeeId, productSelectionId, level1, level2, level3, level4, level5, budgbd, txtblk)

Updates categories in budget

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ProductSelectionApi();
var storeId = 56; // int | Get store ID from <a href=\"?deepLinking=true&amp;urls.primaryName=v1.4#/Webshop/Store/Get\">/api/Webshop</a>
var customerId = 56; // int | Get customer ID from <a href=\"?deepLinking=true&amp;urls.primaryName=v1.4#/Customer/GetCustomerById\">/api/Customer</a>
var employeeId = 56; // int | Get employeeId from <a href=\"?deepLinking=true&amp;urls.primaryName=v1.4#/Employee/GetCustomerEmployeeById\">/api/Employee</a>
var productSelectionId = 56; // int | Get productSelectionId from <a href=\"?deepLinking=true&amp;urls.primaryName=v1.4#/ProductSelection/GetProductSelectionById\">/api/Productselection</a>
var level1 = 56; // int | First level of productselection
var level2 = 56; // int | Second level of productselection
var level3 = 56; // int | Third level of productselection
var level4 = 56; // int | Fourth level of productselection
var level5 = 56; // int | Fifth level of productselection
var budgbd = 1.2; // double | Changed amount
var txtblk = txtblk_example; // String | Reason for change

try { 
    var result = api_instance.updateCategoryBudgetV14(storeId, customerId, employeeId, productSelectionId, level1, level2, level3, level4, level5, budgbd, txtblk);
    print(result);
} catch (e) {
    print("Exception when calling ProductSelectionApi->updateCategoryBudgetV14: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storeId** | **int**| Get store ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true&amp;amp;urls.primaryName&#x3D;v1.4#/Webshop/Store/Get\&quot;&gt;/api/Webshop&lt;/a&gt; | [optional] 
 **customerId** | **int**| Get customer ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true&amp;amp;urls.primaryName&#x3D;v1.4#/Customer/GetCustomerById\&quot;&gt;/api/Customer&lt;/a&gt; | [optional] 
 **employeeId** | **int**| Get employeeId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true&amp;amp;urls.primaryName&#x3D;v1.4#/Employee/GetCustomerEmployeeById\&quot;&gt;/api/Employee&lt;/a&gt; | [optional] 
 **productSelectionId** | **int**| Get productSelectionId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true&amp;amp;urls.primaryName&#x3D;v1.4#/ProductSelection/GetProductSelectionById\&quot;&gt;/api/Productselection&lt;/a&gt; | [optional] 
 **level1** | **int**| First level of productselection | [optional] 
 **level2** | **int**| Second level of productselection | [optional] 
 **level3** | **int**| Third level of productselection | [optional] 
 **level4** | **int**| Fourth level of productselection | [optional] 
 **level5** | **int**| Fifth level of productselection | [optional] 
 **budgbd** | **double**| Changed amount | [optional] 
 **txtblk** | **String**| Reason for change | [optional] 

### Return type

**bool**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updatePerfectSizeForUser**
> bool updatePerfectSizeForUser(productSizeRequest)

Set or reset size of specified product group for user

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new ProductSelectionApi();
var productSizeRequest = new V112ProductSizeRequest(); // V112ProductSizeRequest | 

try { 
    var result = api_instance.updatePerfectSizeForUser(productSizeRequest);
    print(result);
} catch (e) {
    print("Exception when calling ProductSelectionApi->updatePerfectSizeForUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productSizeRequest** | [**V112ProductSizeRequest**](V112ProductSizeRequest.md)|  | [optional] 

### Return type

**bool**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12
 - **Accept**: application/json;v=1.12

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

