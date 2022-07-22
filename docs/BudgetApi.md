# swagger.api.BudgetApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addUsage**](BudgetApi.md#addUsage) | **POST** /api/Budget/api/Budget | Adds budget usage for specific budget of employee
[**deActivate**](BudgetApi.md#deActivate) | **PUT** /api/Budget/api/Budget/Deactivate | Deactivate specific budget of employee
[**deleteUsage**](BudgetApi.md#deleteUsage) | **DELETE** /api/Budget/api/Budget | Delete budget usage of specific budget of employee
[**getActiveBudgetUsageForUser**](BudgetApi.md#getActiveBudgetUsageForUser) | **GET** /api/Budget/active/{lsoort}/{debinr}/{medwnr} | Gets usage of active budget of specified employee
[**getAllBudgetsForCustomer**](BudgetApi.md#getAllBudgetsForCustomer) | **GET** /api/Budget/{lsoort}/{debinr} | Gets all available budgets of customer
[**getBudgetById**](BudgetApi.md#getBudgetById) | **GET** /api/Budget/{bgtpnr} | Gets specific budget
[**getBudgetOverviewForUserV111**](BudgetApi.md#getBudgetOverviewForUserV111) | **GET** /api/Budget/BudgetOverview | Gets budget overview for specified user
[**getBudgetUsageForUser**](BudgetApi.md#getBudgetUsageForUser) | **GET** /api/Budget/{lsoort}/{debinr}/{medwnr} | Gets budget usage of selected employee
[**getEndDate**](BudgetApi.md#getEndDate) | **GET** /api/Budget/api/Budget/enddate/{bgtpnr}/{stardd} | Gets enddate of specific budget
[**updateUsage**](BudgetApi.md#updateUsage) | **PUT** /api/Budget/api/Budget | Update specific budget of employee


# **addUsage**
> bool addUsage(lsoort, debinr, medwnr, bgtpnr, stardd, einddd, budgbd)

Adds budget usage for specific budget of employee

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new BudgetApi();
var lsoort = 56; // int | Get store ID from <a href=\"?deepLinking=true#/Webshop/Get\">/api/Webshop</a>
var debinr = 56; // int | Get customer ID from <a href=\"?deepLinking=true#/Customer/Get\">/api/Customer</a>
var medwnr = 56; // int | Get employeeId from <a href=\"?deepLinking=true&amp;urls.primaryName=v1.2#/Employee/Get\">/api/Employee</a>
var bgtpnr = 56; // int | Budget type ID
var stardd = 2013-10-20T19:20:30+01:00; // DateTime | Start date of budget
var einddd = 2013-10-20T19:20:30+01:00; // DateTime | End date of budget
var budgbd = 1.2; // double | Budget amount

try { 
    var result = api_instance.addUsage(lsoort, debinr, medwnr, bgtpnr, stardd, einddd, budgbd);
    print(result);
} catch (e) {
    print("Exception when calling BudgetApi->addUsage: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lsoort** | **int**| Get store ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Webshop/Get\&quot;&gt;/api/Webshop&lt;/a&gt; | [optional] 
 **debinr** | **int**| Get customer ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Customer/Get\&quot;&gt;/api/Customer&lt;/a&gt; | [optional] 
 **medwnr** | **int**| Get employeeId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true&amp;amp;urls.primaryName&#x3D;v1.2#/Employee/Get\&quot;&gt;/api/Employee&lt;/a&gt; | [optional] 
 **bgtpnr** | **int**| Budget type ID | [optional] 
 **stardd** | **DateTime**| Start date of budget | [optional] 
 **einddd** | **DateTime**| End date of budget | [optional] 
 **budgbd** | **double**| Budget amount | [optional] 

### Return type

**bool**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2, application/json;v=1.1, application/json;v=1.0
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.1, application/json;v=1.0

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deActivate**
> bool deActivate(lsoort, debinr, medwnr, bgtpnr, stardd, user)

Deactivate specific budget of employee

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new BudgetApi();
var lsoort = 56; // int | Get store ID from <a href=\"?deepLinking=true#/Webshop/Get\">/api/Webshop</a>
var debinr = 56; // int | Get customer ID from <a href=\"?deepLinking=true#/Customer/Get\">/api/Customer</a>
var medwnr = 56; // int | Get employeeId from <a href=\"?deepLinking=true&amp;urls.primaryName=v1.2#/Employee/Get\">/api/Employee</a>
var bgtpnr = 56; // int | Budget type ID
var stardd = 2013-10-20T19:20:30+01:00; // DateTime | Start date of budget
var user = user_example; // String | User who deactivated account

try { 
    var result = api_instance.deActivate(lsoort, debinr, medwnr, bgtpnr, stardd, user);
    print(result);
} catch (e) {
    print("Exception when calling BudgetApi->deActivate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lsoort** | **int**| Get store ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Webshop/Get\&quot;&gt;/api/Webshop&lt;/a&gt; | [optional] 
 **debinr** | **int**| Get customer ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Customer/Get\&quot;&gt;/api/Customer&lt;/a&gt; | [optional] 
 **medwnr** | **int**| Get employeeId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true&amp;amp;urls.primaryName&#x3D;v1.2#/Employee/Get\&quot;&gt;/api/Employee&lt;/a&gt; | [optional] 
 **bgtpnr** | **int**| Budget type ID | [optional] 
 **stardd** | **DateTime**| Start date of budget | [optional] 
 **user** | **String**| User who deactivated account | [optional] [default to ]

### Return type

**bool**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2, application/json;v=1.1, application/json;v=1.0
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.1, application/json;v=1.0

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteUsage**
> bool deleteUsage(lsoort, debinr, medwnr, bgtpnr, stardd)

Delete budget usage of specific budget of employee

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new BudgetApi();
var lsoort = 56; // int | Get store ID from <a href=\"?deepLinking=true#/Webshop/Get\">/api/Webshop</a>
var debinr = 56; // int | Get customer ID from <a href=\"?deepLinking=true#/Customer/Get\">/api/Customer</a>
var medwnr = 56; // int | Get employeeId from <a href=\"?deepLinking=true&amp;urls.primaryName=v1.2#/Employee/Get\">/api/Employee</a>
var bgtpnr = 56; // int | Budget type ID
var stardd = 2013-10-20T19:20:30+01:00; // DateTime | Start date of budget

try { 
    var result = api_instance.deleteUsage(lsoort, debinr, medwnr, bgtpnr, stardd);
    print(result);
} catch (e) {
    print("Exception when calling BudgetApi->deleteUsage: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lsoort** | **int**| Get store ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Webshop/Get\&quot;&gt;/api/Webshop&lt;/a&gt; | [optional] 
 **debinr** | **int**| Get customer ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Customer/Get\&quot;&gt;/api/Customer&lt;/a&gt; | [optional] 
 **medwnr** | **int**| Get employeeId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true&amp;amp;urls.primaryName&#x3D;v1.2#/Employee/Get\&quot;&gt;/api/Employee&lt;/a&gt; | [optional] 
 **bgtpnr** | **int**| Budget type ID | [optional] 
 **stardd** | **DateTime**| Start date of budget | [optional] 

### Return type

**bool**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2, application/json;v=1.1, application/json;v=1.0
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.1, application/json;v=1.0

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getActiveBudgetUsageForUser**
> List<UmsModelsBudgetUsage> getActiveBudgetUsageForUser(lsoort, debinr, medwnr)

Gets usage of active budget of specified employee

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new BudgetApi();
var lsoort = 56; // int | Get store ID from <a href=\"?deepLinking=true#/Webshop/Get\">/api/Webshop</a>
var debinr = 56; // int | Get customer ID from <a href=\"?deepLinking=true#/Customer/Get\">/api/Customer</a>
var medwnr = 56; // int | Get employeeId from <a href=\"?deepLinking=true&amp;urls.primaryName=v1.2#/Employee/Get\">/api/Employee</a>

try { 
    var result = api_instance.getActiveBudgetUsageForUser(lsoort, debinr, medwnr);
    print(result);
} catch (e) {
    print("Exception when calling BudgetApi->getActiveBudgetUsageForUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lsoort** | **int**| Get store ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Webshop/Get\&quot;&gt;/api/Webshop&lt;/a&gt; | 
 **debinr** | **int**| Get customer ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Customer/Get\&quot;&gt;/api/Customer&lt;/a&gt; | 
 **medwnr** | **int**| Get employeeId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true&amp;amp;urls.primaryName&#x3D;v1.2#/Employee/Get\&quot;&gt;/api/Employee&lt;/a&gt; | 

### Return type

[**List<UmsModelsBudgetUsage>**](UmsModelsBudgetUsage.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11
 - **Accept**: application/json;v=1.12, application/json;v=1.11

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllBudgetsForCustomer**
> List<Budget> getAllBudgetsForCustomer(lsoort, debinr)

Gets all available budgets of customer

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new BudgetApi();
var lsoort = 56; // int | Get store ID from <a href=\"?deepLinking=true#/Webshop/Get\">/api/Webshop</a>
var debinr = 56; // int | Get customer ID from <a href=\"?deepLinking=true#/Customer/Get\">/api/Customer</a>

try { 
    var result = api_instance.getAllBudgetsForCustomer(lsoort, debinr);
    print(result);
} catch (e) {
    print("Exception when calling BudgetApi->getAllBudgetsForCustomer: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lsoort** | **int**| Get store ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Webshop/Get\&quot;&gt;/api/Webshop&lt;/a&gt; | 
 **debinr** | **int**| Get customer ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Customer/Get\&quot;&gt;/api/Customer&lt;/a&gt; | 

### Return type

[**List<Budget>**](Budget.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11
 - **Accept**: application/json;v=1.12, application/json;v=1.11

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBudgetById**
> Budget getBudgetById(bgtpnr)

Gets specific budget

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new BudgetApi();
var bgtpnr = 56; // int | Budget type ID

try { 
    var result = api_instance.getBudgetById(bgtpnr);
    print(result);
} catch (e) {
    print("Exception when calling BudgetApi->getBudgetById: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bgtpnr** | **int**| Budget type ID | 

### Return type

[**Budget**](Budget.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11
 - **Accept**: application/json;v=1.12, application/json;v=1.11

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBudgetOverviewForUserV111**
> List<V111BudgetOverview> getBudgetOverviewForUserV111(storeId, customerId, employeeId, budgetTypeCode, productIds, orderQty)

Gets budget overview for specified user

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new BudgetApi();
var storeId = 56; // int | Get store ID from <a href=\"?deepLinking=true#/Webshop/Get\">/api/Webshop</a>
var customerId = 56; // int | Get customer ID from <a href=\"?deepLinking=true#/Customer/Get\">/api/Customer</a>
var employeeId = 56; // int | Get employeeId from <a href=\"?deepLinking=true&amp;urls.primaryName=v1.2#/Employee/Get\">/api/Employee</a>
var budgetTypeCode = budgetTypeCode_example; // String | Budget type identification, where \"A\" = authorization budget, \"B\" = user budget
var productIds = []; // List<String> | List of product IDs, get product ID from <a href=\"?deepLinking=true&amp;urls.primaryName=v1.2#/Product/Get\">/api/Product</a>
var orderQty = []; // List<double> | List of order quantity

try { 
    var result = api_instance.getBudgetOverviewForUserV111(storeId, customerId, employeeId, budgetTypeCode, productIds, orderQty);
    print(result);
} catch (e) {
    print("Exception when calling BudgetApi->getBudgetOverviewForUserV111: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storeId** | **int**| Get store ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Webshop/Get\&quot;&gt;/api/Webshop&lt;/a&gt; | [optional] 
 **customerId** | **int**| Get customer ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Customer/Get\&quot;&gt;/api/Customer&lt;/a&gt; | [optional] 
 **employeeId** | **int**| Get employeeId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true&amp;amp;urls.primaryName&#x3D;v1.2#/Employee/Get\&quot;&gt;/api/Employee&lt;/a&gt; | [optional] 
 **budgetTypeCode** | **String**| Budget type identification, where \&quot;A\&quot; &#x3D; authorization budget, \&quot;B\&quot; &#x3D; user budget | [optional] 
 **productIds** | [**List&lt;String&gt;**](String.md)| List of product IDs, get product ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true&amp;amp;urls.primaryName&#x3D;v1.2#/Product/Get\&quot;&gt;/api/Product&lt;/a&gt; | [optional] 
 **orderQty** | [**List&lt;double&gt;**](double.md)| List of order quantity | [optional] 

### Return type

[**List<V111BudgetOverview>**](V111BudgetOverview.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11
 - **Accept**: application/json;v=1.12, application/json;v=1.11

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBudgetUsageForUser**
> List<UmsModelsBudgetUsage> getBudgetUsageForUser(lsoort, debinr, medwnr)

Gets budget usage of selected employee

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new BudgetApi();
var lsoort = 56; // int | Get store ID from <a href=\"?deepLinking=true#/Webshop/Get\">/api/Webshop</a>
var debinr = 56; // int | Get customer ID from <a href=\"?deepLinking=true#/Customer/Get\">/api/Customer</a>
var medwnr = 56; // int | Get employeeId from <a href=\"?deepLinking=true&amp;urls.primaryName=v1.2#/Employee/Get\">/api/Employee</a>

try { 
    var result = api_instance.getBudgetUsageForUser(lsoort, debinr, medwnr);
    print(result);
} catch (e) {
    print("Exception when calling BudgetApi->getBudgetUsageForUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lsoort** | **int**| Get store ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Webshop/Get\&quot;&gt;/api/Webshop&lt;/a&gt; | 
 **debinr** | **int**| Get customer ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Customer/Get\&quot;&gt;/api/Customer&lt;/a&gt; | 
 **medwnr** | **int**| Get employeeId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true&amp;amp;urls.primaryName&#x3D;v1.2#/Employee/Get\&quot;&gt;/api/Employee&lt;/a&gt; | 

### Return type

[**List<UmsModelsBudgetUsage>**](UmsModelsBudgetUsage.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11
 - **Accept**: application/json;v=1.12, application/json;v=1.11

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEndDate**
> DateTime getEndDate(bgtpnr, stardd)

Gets enddate of specific budget

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new BudgetApi();
var bgtpnr = 56; // int | Budget type ID
var stardd = 2013-10-20T19:20:30+01:00; // DateTime | Start date of budget

try { 
    var result = api_instance.getEndDate(bgtpnr, stardd);
    print(result);
} catch (e) {
    print("Exception when calling BudgetApi->getEndDate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bgtpnr** | **int**| Budget type ID | 
 **stardd** | **DateTime**| Start date of budget | 

### Return type

[**DateTime**](DateTime.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2, application/json;v=1.1, application/json;v=1.0
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.1, application/json;v=1.0

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUsage**
> bool updateUsage(lsoort, debinr, medwnr, bgtpnr, ostardd, nstardd, neinddd, budgbd, txtblk)

Update specific budget of employee

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new BudgetApi();
var lsoort = 56; // int | Get store ID from <a href=\"?deepLinking=true#/Webshop/Get\">/api/Webshop</a>
var debinr = 56; // int | Get customer ID from <a href=\"?deepLinking=true#/Customer/Get\">/api/Customer</a>
var medwnr = 56; // int | Get employeeId from <a href=\"?deepLinking=true&amp;urls.primaryName=v1.2#/Employee/Get\">/api/Employee</a>
var bgtpnr = 56; // int | Budget type ID
var ostardd = 2013-10-20T19:20:30+01:00; // DateTime | Previous start date for budget
var nstardd = 2013-10-20T19:20:30+01:00; // DateTime | New start date for budget
var neinddd = 2013-10-20T19:20:30+01:00; // DateTime | New end date for budget
var budgbd = 1.2; // double | Budget amount
var txtblk = txtblk_example; // String | Description for budget change

try { 
    var result = api_instance.updateUsage(lsoort, debinr, medwnr, bgtpnr, ostardd, nstardd, neinddd, budgbd, txtblk);
    print(result);
} catch (e) {
    print("Exception when calling BudgetApi->updateUsage: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lsoort** | **int**| Get store ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Webshop/Get\&quot;&gt;/api/Webshop&lt;/a&gt; | [optional] 
 **debinr** | **int**| Get customer ID from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Customer/Get\&quot;&gt;/api/Customer&lt;/a&gt; | [optional] 
 **medwnr** | **int**| Get employeeId from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true&amp;amp;urls.primaryName&#x3D;v1.2#/Employee/Get\&quot;&gt;/api/Employee&lt;/a&gt; | [optional] 
 **bgtpnr** | **int**| Budget type ID | [optional] 
 **ostardd** | **DateTime**| Previous start date for budget | [optional] 
 **nstardd** | **DateTime**| New start date for budget | [optional] 
 **neinddd** | **DateTime**| New end date for budget | [optional] 
 **budgbd** | **double**| Budget amount | [optional] 
 **txtblk** | **String**| Description for budget change | [optional] 

### Return type

**bool**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2, application/json;v=1.1, application/json;v=1.0
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.1, application/json;v=1.0

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

