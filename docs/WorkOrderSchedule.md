# swagger.model.WorkOrderSchedule

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**scheduleId** | **int** | Schedule ID, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/WorkOrder/GetSchedule\&quot;&gt;/api/WorkOrder/Schedule&lt;/a&gt; | [optional] [default to null]
**companyId** | **int** | Company ID, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Company/GetAllCompanies\&quot;&gt;/api/Company&lt;/a&gt; | [optional] [default to null]
**branchId** | **int** | Branch ID, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Branch/GetAllBranches\&quot;&gt;/api/Branch&lt;/a&gt; | [optional] [default to null]
**workOrderId** | **int** | Order ID, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/WorkOrder/GetAllWorkOrdersV112\&quot;&gt;/api/WorkOrder&lt;/a&gt; | [optional] [default to null]
**employeeId** | **int** | ID of employee who is assigned to this workorder, retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Employee/GetAllCustomerEmployeesV111\&quot;&gt;/api/Employee&lt;/a&gt; | [optional] [default to null]
**startTime** | [**DateTime**](DateTime.md) | Starting time of schedule item | [optional] [default to null]
**endTime** | [**DateTime**](DateTime.md) | End time of schedule item | [optional] [default to null]
**jobId** | **int** | Job ID, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/WorkOrder/GetJobs \&quot;&gt;/api/WorkOrder/Job&lt;/a&gt; | [optional] [default to null]
**jobDescription** | **String** | Job description. Please note: this description may differ from the default retrieved via  &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/WorkOrder/GetJobs \&quot;&gt;/api/WorkOrder/Job&lt;/a&gt;, since the   description can be manually modified in ERP. | [optional] [default to null]
**binding** | **bool** | Scheduled job is binding and cannot be rescheduled | [optional] [default to null]
**firstScheduleId** | **int** | ID of first scheduled job | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


