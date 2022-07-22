# swagger.api.CostCentreApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCostCentreLevel**](CostCentreApi.md#getCostCentreLevel) | **GET** /api/CostCentre | Get a list of active cost centres.
[**getCostCentreLevelById**](CostCentreApi.md#getCostCentreLevelById) | **GET** /api/CostCentre/{CompanyId}/{CostCentreLevelId} | Get a list of all cost centres by costcentre level.
[**perGeneralLedgerAccount**](CostCentreApi.md#perGeneralLedgerAccount) | **GET** /api/CostCentre/PerGeneralLedgerAccount/{CompanyId}/{LedgerAccountNumber} | Get a list of all required costcentres per general ledger account.


# **getCostCentreLevel**
> List<CostCentreLevel> getCostCentreLevel(companyId, branchId)

Get a list of active cost centres.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new CostCentreApi();
var companyId = 56; // int | Company Id, as retrievable from <a href=\"?deepLinking=true#/Company/GetAllCompanies\">api/Company</a>
var branchId = 56; // int | Branch Id, as retrievable from <a href=\"?deepLinking=true#/Branch/GetAllBranches\">api/Branch</a>

try { 
    var result = api_instance.getCostCentreLevel(companyId, branchId);
    print(result);
} catch (e) {
    print("Exception when calling CostCentreApi->getCostCentreLevel: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **companyId** | **int**| Company Id, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Company/GetAllCompanies\&quot;&gt;api/Company&lt;/a&gt; | [optional] 
 **branchId** | **int**| Branch Id, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Branch/GetAllBranches\&quot;&gt;api/Branch&lt;/a&gt; | [optional] [default to 0]

### Return type

[**List<CostCentreLevel>**](CostCentreLevel.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10
 - **Accept**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCostCentreLevelById**
> CostCentreLevel getCostCentreLevelById(companyId, costCentreLevelId)

Get a list of all cost centres by costcentre level.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new CostCentreApi();
var companyId = 56; // int | 
var costCentreLevelId = 56; // int | 

try { 
    var result = api_instance.getCostCentreLevelById(companyId, costCentreLevelId);
    print(result);
} catch (e) {
    print("Exception when calling CostCentreApi->getCostCentreLevelById: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **companyId** | **int**|  | 
 **costCentreLevelId** | **int**|  | 

### Return type

[**CostCentreLevel**](CostCentreLevel.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **perGeneralLedgerAccount**
> CostCentrePerGeneralLedgerAccount perGeneralLedgerAccount(companyId, ledgerAccountNumber)

Get a list of all required costcentres per general ledger account.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new CostCentreApi();
var companyId = 56; // int | 
var ledgerAccountNumber = 56; // int | 

try { 
    var result = api_instance.perGeneralLedgerAccount(companyId, ledgerAccountNumber);
    print(result);
} catch (e) {
    print("Exception when calling CostCentreApi->perGeneralLedgerAccount: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **companyId** | **int**|  | 
 **ledgerAccountNumber** | **int**|  | 

### Return type

[**CostCentrePerGeneralLedgerAccount**](CostCentrePerGeneralLedgerAccount.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

