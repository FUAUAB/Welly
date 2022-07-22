# swagger.api.SalesAccountApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addSalesAccount**](SalesAccountApi.md#addSalesAccount) | **POST** /api/SalesAccount | Add Sales Account
[**deleteSalesAccount**](SalesAccountApi.md#deleteSalesAccount) | **DELETE** /api/SalesAccount | Delete Sales Account
[**getSalesAccountById**](SalesAccountApi.md#getSalesAccountById) | **GET** /api/SalesAccount | Get Sales account
[**getSalesAccounts**](SalesAccountApi.md#getSalesAccounts) | **GET** /api/SalesAccount/SalesAccount/All | Get all Sales accounts (account type &#x3D; C)
[**updateSalesAccount**](SalesAccountApi.md#updateSalesAccount) | **PUT** /api/SalesAccount | Update Sales Account


# **addSalesAccount**
> V12SalesAccountResult addSalesAccount(salesAccount)

Add Sales Account

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new SalesAccountApi();
var salesAccount = new V12SalesAccount(); // V12SalesAccount | 

try { 
    var result = api_instance.addSalesAccount(salesAccount);
    print(result);
} catch (e) {
    print("Exception when calling SalesAccountApi->addSalesAccount: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **salesAccount** | [**V12SalesAccount**](V12SalesAccount.md)|  | [optional] 

### Return type

[**V12SalesAccountResult**](V12SalesAccountResult.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteSalesAccount**
> bool deleteSalesAccount(accountType, customerId, employeeId, shippingAddressId)

Delete Sales Account

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new SalesAccountApi();
var accountType = accountType_example; // String | Account type in ERP, C = Customer, E = Employee, A = Shipping Address
var customerId = 56; // int | Get Id from <a href=\"?deepLinking=true#/Customer/Get\">/api/Customer</a>
var employeeId = 56; // int | Get from <a href=\"?deepLinking=true#/Employee/Get\">/api/Employee</a>
var shippingAddressId = 56; // int | Get from <a href=\"?deepLinking=true#/Shipping/Get\">/api/Shipping</a>

try { 
    var result = api_instance.deleteSalesAccount(accountType, customerId, employeeId, shippingAddressId);
    print(result);
} catch (e) {
    print("Exception when calling SalesAccountApi->deleteSalesAccount: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountType** | **String**| Account type in ERP, C &#x3D; Customer, E &#x3D; Employee, A &#x3D; Shipping Address | [optional] 
 **customerId** | **int**| Get Id from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Customer/Get\&quot;&gt;/api/Customer&lt;/a&gt; | [optional] 
 **employeeId** | **int**| Get from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Employee/Get\&quot;&gt;/api/Employee&lt;/a&gt; | [optional] 
 **shippingAddressId** | **int**| Get from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Shipping/Get\&quot;&gt;/api/Shipping&lt;/a&gt; | [optional] 

### Return type

**bool**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSalesAccountById**
> V12SalesAccount getSalesAccountById(accountType, customerId, shippingAddressId, employeeId)

Get Sales account

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new SalesAccountApi();
var accountType = accountType_example; // String | Account type in ERP, C = Customer, E = Employee, A = Shipping Address
var customerId = 56; // int | Get Id from <a href=\"?deepLinking=true#/Customer/Get\">/api/Customer</a>
var shippingAddressId = 56; // int | Get from <a href=\"?deepLinking=true#/Shipping/Get\">/api/Shipping</a>
var employeeId = 56; // int | Get from <a href=\"?deepLinking=true#/Employee/Get\">/api/Employee</a>

try { 
    var result = api_instance.getSalesAccountById(accountType, customerId, shippingAddressId, employeeId);
    print(result);
} catch (e) {
    print("Exception when calling SalesAccountApi->getSalesAccountById: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountType** | **String**| Account type in ERP, C &#x3D; Customer, E &#x3D; Employee, A &#x3D; Shipping Address | [optional] 
 **customerId** | **int**| Get Id from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Customer/Get\&quot;&gt;/api/Customer&lt;/a&gt; | [optional] 
 **shippingAddressId** | **int**| Get from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Shipping/Get\&quot;&gt;/api/Shipping&lt;/a&gt; | [optional] 
 **employeeId** | **int**| Get from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Employee/Get\&quot;&gt;/api/Employee&lt;/a&gt; | [optional] 

### Return type

[**V12SalesAccount**](V12SalesAccount.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSalesAccounts**
> V12SalesAccount getSalesAccounts()

Get all Sales accounts (account type = C)

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new SalesAccountApi();

try { 
    var result = api_instance.getSalesAccounts();
    print(result);
} catch (e) {
    print("Exception when calling SalesAccountApi->getSalesAccounts: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**V12SalesAccount**](V12SalesAccount.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateSalesAccount**
> bool updateSalesAccount(salesAccount)

Update Sales Account

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new SalesAccountApi();
var salesAccount = new V12SalesAccount(); // V12SalesAccount | 

try { 
    var result = api_instance.updateSalesAccount(salesAccount);
    print(result);
} catch (e) {
    print("Exception when calling SalesAccountApi->updateSalesAccount: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **salesAccount** | [**V12SalesAccount**](V12SalesAccount.md)|  | [optional] 

### Return type

**bool**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

