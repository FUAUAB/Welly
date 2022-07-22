# swagger.model.WorkOrderDetailChangeRequest

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**companyId** | **int** | Company ID, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Company/GetAllCompanies\&quot;&gt;/api/Company&lt;/a&gt; | [default to null]
**branchId** | **int** | Branch ID, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Branch/GetAllBranches\&quot;&gt;/api/Branch&lt;/a&gt; | [default to null]
**orderId** | **int** | WorkOrder ID, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/WorkOrder/GetAllWorkOrders\&quot;&gt;/api/WorkOrder&lt;/a&gt; | [default to null]
**orderLineId** | **int** | WorkOrder line ID | [optional] [default to null]
**orderSubLineId** | **int** | Workorder subline ID | [optional] [default to null]
**description** | **String** | Description (applicable if work order is of line type 3) | [optional] [default to null]
**cost** | [**CostDetail**](CostDetail.md) | Cost for workorder (if work order is of line type 2) | [optional] [default to null]
**lineType** | **String** | Linetype: 0&#x3D;Article, 2&#x3D;Costs, 3&#x3D;Text, 6&#x3D;Hours | [optional] [default to null]
**product** | [**WorkOrderProduct**](WorkOrderProduct.md) | Product for work order (if work order is of line type 0) | [optional] [default to null]
**hours** | [**WorkOrderHours**](WorkOrderHours.md) | Hours for work order (if work order is of line type 6) | [optional] [default to null]
**warranty** | **bool** | Covered by warranty | [optional] [default to null]
**alwaysTakeTextline** | **bool** | Always take textline (default &#x3D; true) | [optional] [default to null]
**idealPackagingAllowanceApplied** | **bool** | Ideal packaging allowance applied (default &#x3D; false) | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


