# swagger.model.WorkOrderRequest

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**companyId** | **int** | Company ID, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Company/GetAllCompanies\&quot;&gt;/api/Company&lt;/a&gt; | [default to null]
**branchId** | **int** | Branch ID, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Branch/GetAllBranches\&quot;&gt;/api/Branch&lt;/a&gt; | [default to null]
**warehouseId** | **int** | Warehouse ID | [optional] [default to null]
**customerId** | **int** | Customer ID, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Customer/GetAllCustomers\&quot;&gt;/api/Customer&lt;/a&gt; | [default to null]
**productId** | **String** | Product ID, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Product/ShopProductInformation\&quot;&gt;/api/Product&lt;/a&gt; | [optional] [default to null]
**projectId** | **String** | Project Id, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Project/GetAllProjects\&quot;&gt;/api/Project&lt;/a&gt;. | [optional] [default to null]
**date** | [**DateTime**](DateTime.md) | Work order date | [optional] [default to null]
**description** | **String** | Work order description | [default to null]
**customerOrderNumber** | **String** | Ordernumber as submitted by customer | [optional] [default to null]
**customerReference** | **String** | Reference as submitted by customer | [optional] [default to null]
**salesPersonId** | **int** | ID of employee who is assigned as sales person for this workorder, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Employee/GetAllCustomerEmployeesV111\&quot;&gt;/api/Employee&lt;/a&gt; | [optional] [default to null]
**responsibleEmployeeId** | **int** | ID of employee who is assigned to this workorder, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Employee/GetAllCustomerEmployeesV111\&quot;&gt;/api/Employee&lt;/a&gt; | [optional] [default to null]
**workOrderClassId** | **int** | Work order classification Id, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/WorkOrder/GetWorkOrderClasses\&quot;&gt;/api/WorkOrder&lt;/a&gt;.   If Id &#x3D; 0, default of customer will be used. | [optional] [default to null]
**netAmount** | [**Amount**](Amount.md) | Net cash amount of workorder | [optional] [default to null]
**estimatedCosts** | [**Amount**](Amount.md) | Estimated costs of  work order | [optional] [default to null]
**estimatedHours** | **double** | Estimated hours for this work order | [optional] [default to null]
**shippingMethodId** | **int** | Shipping method Id for this order, as retrievable from &lt;a href&#x3D;\&quot;?deepLinking&#x3D;true#/Shipping/ShippingMethods\&quot;&gt;/api/Shippig&lt;/a&gt; | [optional] [default to null]
**shippingAddress** | [**V19ShippingAddress**](V19ShippingAddress.md) | Shipping address for work order | [optional] [default to null]
**schedule** | [**Schedule**](Schedule.md) | Scheduled dates (from / untill) for workorder | [optional] [default to null]
**details** | [**List&lt;V112WorkOrderDetail&gt;**](V112WorkOrderDetail.md) | Workorder details | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


