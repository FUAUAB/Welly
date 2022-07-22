# swagger.api.LedgerApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**generalLedgerAccount**](LedgerApi.md#generalLedgerAccount) | **GET** /api/Ledger/GeneralLedgerAccount | Get a list of all general ledger accounts.
[**generalLedgerAccountById**](LedgerApi.md#generalLedgerAccountById) | **GET** /api/Ledger/GeneralLedgerAccount/{LedgerAccountNumber} | Get general ledger account by LedgerAccountNumber.
[**ledgerJournal**](LedgerApi.md#ledgerJournal) | **POST** /api/Ledger/LedgerJournal | Create ledger journal.
[**supplierGeneralLedgerAccounts**](LedgerApi.md#supplierGeneralLedgerAccounts) | **GET** /api/Ledger/SupplierGeneralLedgerAccounts/{CompanyId} | Get general ledger accounts per supplier
[**supplierGeneralLedgerAccountsBySupplier**](LedgerApi.md#supplierGeneralLedgerAccountsBySupplier) | **GET** /api/Ledger/SupplierGeneralLedgerAccounts/{CompanyId}/{SupplierId} | Get general ledger accounts for specified SupplierId.


# **generalLedgerAccount**
> List<GeneralLedgerAccount> generalLedgerAccount()

Get a list of all general ledger accounts.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new LedgerApi();

try { 
    var result = api_instance.generalLedgerAccount();
    print(result);
} catch (e) {
    print("Exception when calling LedgerApi->generalLedgerAccount: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<GeneralLedgerAccount>**](GeneralLedgerAccount.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generalLedgerAccountById**
> List<GeneralLedgerAccount> generalLedgerAccountById(ledgerAccountNumber)

Get general ledger account by LedgerAccountNumber.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new LedgerApi();
var ledgerAccountNumber = 56; // int | 

try { 
    var result = api_instance.generalLedgerAccountById(ledgerAccountNumber);
    print(result);
} catch (e) {
    print("Exception when calling LedgerApi->generalLedgerAccountById: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ledgerAccountNumber** | **int**|  | 

### Return type

[**List<GeneralLedgerAccount>**](GeneralLedgerAccount.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ledgerJournal**
> ledgerJournal(ledgerJournal)

Create ledger journal.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new LedgerApi();
var ledgerJournal = new LedgerJournal(); // LedgerJournal | 

try { 
    api_instance.ledgerJournal(ledgerJournal);
} catch (e) {
    print("Exception when calling LedgerApi->ledgerJournal: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ledgerJournal** | [**LedgerJournal**](LedgerJournal.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2, application/json;v=1.1, application/json;v=1.0
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.1, application/json;v=1.0

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **supplierGeneralLedgerAccounts**
> List<SupplierGeneralLedgerAccounts> supplierGeneralLedgerAccounts(companyId)

Get general ledger accounts per supplier

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new LedgerApi();
var companyId = 56; // int | 

try { 
    var result = api_instance.supplierGeneralLedgerAccounts(companyId);
    print(result);
} catch (e) {
    print("Exception when calling LedgerApi->supplierGeneralLedgerAccounts: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **companyId** | **int**|  | 

### Return type

[**List<SupplierGeneralLedgerAccounts>**](SupplierGeneralLedgerAccounts.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **supplierGeneralLedgerAccountsBySupplier**
> List<GeneralLedgerAccount> supplierGeneralLedgerAccountsBySupplier(companyId, supplierId)

Get general ledger accounts for specified SupplierId.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new LedgerApi();
var companyId = 56; // int | 
var supplierId = 56; // int | 

try { 
    var result = api_instance.supplierGeneralLedgerAccountsBySupplier(companyId, supplierId);
    print(result);
} catch (e) {
    print("Exception when calling LedgerApi->supplierGeneralLedgerAccountsBySupplier: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **companyId** | **int**|  | 
 **supplierId** | **int**|  | 

### Return type

[**List<GeneralLedgerAccount>**](GeneralLedgerAccount.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

