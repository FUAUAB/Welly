# swagger.model.WorkOrderHours

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**startTime** | [**DateTime**](DateTime.md) | Start time of work order | [optional] [default to null]
**endTime** | [**DateTime**](DateTime.md) | Time when work order is finished | [optional] [default to null]
**employeeId** | **int** | Id of employee to which work order hours are assigned, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Employee/GetAllCustomerEmployeesV111\&quot;&gt;/api/Employee&lt;/a&gt; | [optional] [default to null]
**job** | [**Job**](Job.md) | Job undertaken during work order hours | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


