# swagger.api.CrmApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createAppointment**](CrmApi.md#createAppointment) | **POST** /api/CRM/Appointment | Creates a new appointment.
[**getAllAppointments**](CrmApi.md#getAllAppointments) | **GET** /api/CRM/Appointment | Retrieve a list of appointments for a specified period, optionally by sales representative and/or status.
[**updateAppointment**](CrmApi.md#updateAppointment) | **PUT** /api/CRM/Appointment | Update an existing CRM appointment


# **createAppointment**
> int createAppointment(request)

Creates a new appointment.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new CrmApi();
var request = new CrmAppointmentRequest(); // CrmAppointmentRequest | Details of appointment to create

try { 
    var result = api_instance.createAppointment(request);
    print(result);
} catch (e) {
    print("Exception when calling CrmApi->createAppointment: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**CrmAppointmentRequest**](CrmAppointmentRequest.md)| Details of appointment to create | [optional] 

### Return type

**int**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12
 - **Accept**: application/json;v=1.12

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllAppointments**
> List<CrmAppointment> getAllAppointments(startDate, endDate, salesRepresentativeId, visitStatus)

Retrieve a list of appointments for a specified period, optionally by sales representative and/or status.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new CrmApi();
var startDate = 2013-10-20T19:20:30+01:00; // DateTime | Start date of period
var endDate = 2013-10-20T19:20:30+01:00; // DateTime | End date of period
var salesRepresentativeId = 56; // int | Sales representative ID for customer,               as retrievable from <a href=\"?deepLinking=true#/Representative/Representative\">/api/Representative</a>.
var visitStatus = visitStatus_example; // String | Appointment status, 10 = scheduled, 20 = fixed, 97 = cancelled, 98 = finished.

try { 
    var result = api_instance.getAllAppointments(startDate, endDate, salesRepresentativeId, visitStatus);
    print(result);
} catch (e) {
    print("Exception when calling CrmApi->getAllAppointments: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startDate** | **DateTime**| Start date of period | [optional] 
 **endDate** | **DateTime**| End date of period | [optional] 
 **salesRepresentativeId** | **int**| Sales representative ID for customer,               as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Representative/Representative\&quot;&gt;/api/Representative&lt;/a&gt;. | [optional] [default to 0]
 **visitStatus** | **String**| Appointment status, 10 &#x3D; scheduled, 20 &#x3D; fixed, 97 &#x3D; cancelled, 98 &#x3D; finished. | [optional] [default to 0]

### Return type

[**List<CrmAppointment>**](CrmAppointment.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12
 - **Accept**: application/json;v=1.12

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateAppointment**
> bool updateAppointment(request)

Update an existing CRM appointment

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new CrmApi();
var request = new CrmAppointment(); // CrmAppointment | Updated details of appointment

try { 
    var result = api_instance.updateAppointment(request);
    print(result);
} catch (e) {
    print("Exception when calling CrmApi->updateAppointment: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**CrmAppointment**](CrmAppointment.md)| Updated details of appointment | [optional] 

### Return type

**bool**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json;v=1.12
 - **Accept**: application/json;v=1.12

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

