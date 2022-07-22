# swagger.api.AppointmentApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**appointment**](AppointmentApi.md#appointment) | **POST** /api/Appointments/Appointment | Updates or Creates a appointment
[**changedAppointments**](AppointmentApi.md#changedAppointments) | **GET** /api/Appointments/ChangedAppointments | Get a list of all changed appointments from given sync state


# **appointment**
> String appointment(account, start, end, subject, body, status, categoryId, category, location, exchangeID, erpID)

Updates or Creates a appointment

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new AppointmentApi();
var account = new EWSAccount(); // EWSAccount | 
var start = 2013-10-20T19:20:30+01:00; // DateTime | 
var end = 2013-10-20T19:20:30+01:00; // DateTime | 
var subject = subject_example; // String | 
var body = body_example; // String | 
var status = 56; // int | 
var categoryId = 56; // int | 
var category = category_example; // String | 
var location = location_example; // String | 
var exchangeID = exchangeID_example; // String | 
var erpID = erpID_example; // String | 

try { 
    var result = api_instance.appointment(account, start, end, subject, body, status, categoryId, category, location, exchangeID, erpID);
    print(result);
} catch (e) {
    print("Exception when calling AppointmentApi->appointment: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account** | [**EWSAccount**](EWSAccount.md)|  | [optional] 
 **start** | **DateTime**|  | [optional] 
 **end** | **DateTime**|  | [optional] 
 **subject** | **String**|  | [optional] 
 **body** | **String**|  | [optional] 
 **status** | **int**|  | [optional] 
 **categoryId** | **int**|  | [optional] 
 **category** | **String**|  | [optional] 
 **location** | **String**|  | [optional] 
 **exchangeID** | **String**|  | [optional] 
 **erpID** | **String**|  | [optional] 

### Return type

**String**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2, application/json;v=1.1, application/json;v=1.0
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.1, application/json;v=1.0

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **changedAppointments**
> SyncAppointments changedAppointments(account, syncState)

Get a list of all changed appointments from given sync state

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new AppointmentApi();
var account = new EWSAccount(); // EWSAccount | 
var syncState = syncState_example; // String | 

try { 
    var result = api_instance.changedAppointments(account, syncState);
    print(result);
} catch (e) {
    print("Exception when calling AppointmentApi->changedAppointments: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account** | [**EWSAccount**](EWSAccount.md)|  | [optional] 
 **syncState** | **String**|  | [optional] 

### Return type

[**SyncAppointments**](SyncAppointments.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2, application/json;v=1.1, application/json;v=1.0
 - **Accept**: application/json;v=1.9, application/json;v=1.8, application/json;v=1.7, application/json;v=1.6, application/json;v=1.5, application/json;v=1.4, application/json;v=1.3, application/json;v=1.2, application/json;v=1.12, application/json;v=1.11, application/json;v=1.10, application/json;v=1.1, application/json;v=1.0

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

