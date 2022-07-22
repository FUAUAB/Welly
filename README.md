# swagger
REST API to use Mavis functionality.</br> </br> <i> Please be advised: API requests without an Accept header (i.e. \"accept: application/json;v=x.x\") will be routed automatically to the latest API-version. </i> </br> <div class=\"release-notes\">Changes and additions compared to previous versions:</div></br> - GET <a href=\"?deepLinking=true#/Customer/GetCustomersForSalesRep\">Customer/SalesRepresentative</a>: retrieve all customers for a specified sales representative.</br></br>- GET <a href=\"?deepLinking=true#/Delivery\">Delivery</a>: retrieving deliveries using parameter StoreId = 0 will now include all deliveries in response, irrespective of store (thus also those entered in ERP).</br></br>- POST <a href=\"?deepLinking=true#/ProductSelection/UpdatePerfectSizeForUser\">Perfectsize</a>: Resetting the size is now also available. If no sizeId is submitted, stored size will be removed. Therefore, model for the request has been changed, now featuring a nullable sizeId-property.</br></br>- GET <a href=\"?deepLinking=true#/Product/Brands\">Product/Brands</a>:Get a list of all product brands.</br></br> <b>CRM endpoints:</b> </br></br>A number of endpoints are added to retrieve, create or update <a href=\"?deepLinking=true#/Crm\">CRM appointments</a>:</br></br>- GET <a href=\"?deepLinking=true#/Crm/GetAllAppointments\">Appointment:</a> Retrieve a list of CRM appointments for a specified period, optionally by sales representative and/or status.</br></br>- PUT <a href=\"?deepLinking=true#/Crm/UpdateAppointment\">Appointment:</a> Update an existing CRM appointment.</br></br>- POST <a href=\"?deepLinking=true#/Crm/CreateAppointment\">Appointment:</a> Create a new CRM appointment.</br></br><b>Revenue endpoints:</b> </br></br>A number of endpoints are added to retrieve specific <a href=\"?deepLinking=true#/Revenue\">revenue</a>, for instance for a specified product or sales representative:</br></br>- GET <a href=\"?deepLinking=true#/Revenue/RevenueForArticleGroup\">Revenue/ArticleGroup:</a> Retrieve revenue details for a specified article group for specified period.</br></br>- GET <a href=\"?deepLinking=true#/Revenue/RevenueForArticleSubGroup\">Revenue/ArticleSubGroup:</a> Retrieve revenue details for a specified article sub group for specified period.</br></br>- GET <a href=\"?deepLinking=true#/Revenue/RevenueForBrand\">Revenue/Brand:</a> Retrieve revenue details for a specified brand for specified period.</br></br>- GET <a href=\"?deepLinking=true#/Revenue/RevenueForCustomer\">Revenue/Customer:</a> Retrieve revenue details for a specified customer for specified period.</br></br>- GET <a href=\"?deepLinking=true#/Revenue/RevenueForProduct\">Revenue/Product:</a> Retrieve revenue details for a specified product for specified period.</br></br>- GET <a href=\"?deepLinking=true#/Revenue/RevenueForSalesRepresentative\">Revenue/SalesRepresentative:</a> Retrieve revenue details for a specified sales representative for specified period.</br></br>- GET <a href=\"?deepLinking=true#/Revenue/RevenueForSupplier\">Revenue/Supplier:</a> Retrieve revenue details for a specified supplier for specified period.</br></br><b>Work order endpoints:</b> </br></br>A number of endpoints are added to retrieve or update <a href=\"?deepLinking=true#/WorkOrder\">work orders</a>(please see below for the most important additions / changes). Also previous endpoints may have been revisited (most notably adding a work order via <a href=\"?deepLinking=true#/WorkOrder/CreateWorkOrderInERP\">POST WorkOrder</a>) or deactivated as per version 1.12. </br></br>- GET <a href=\"?deepLinking=true#/WorkOrder/GetAllWorkOrdersV112\">WorkOrder:</a> Retrieve all work orders. Optional parameters: for specified customeronly and / or active work orders only. </br></br>- GET <a href=\"?deepLinking=true#/WorkOrder/GetAllWorkOrdersV112\">WorkOrder/{employeeId}:</a> retrieve active work orders for specified employee. </br></br>- GET <a href=\"?deepLinking=true#/WorkOrder/GetWorkOrderClasses\">WorkOrder/Class:</a> retrieve work order classes <i>(formerly known as work order types).</i></br></br>- <a href=\"?deepLinking=true#/WorkOrder/EditWorkOrderDetail\">PUT</a> / <a href=\"?deepLinking=true#/WorkOrder/CreateWorkOrderDetail\">POST</a> / <a href=\"?deepLinking=true#/WorkOrder/DeleteWorkOrderDetail\">DELETE</a> WorkOrder: update / add / delete work order detail from active work order.</br></br>- PUT <a href=\"?deepLinking=true#/WorkOrder/EditWorkOrderDescription\">WorkOrder/Description:</a> update description of active work order.</br></br>- PUT <a href=\"?deepLinking=true#/WorkOrder/EditWorkOrderDate\">WorkOrder/Date:</a> update date of active work order.</br></br>- POST <a href=\"?deepLinking=true#/WorkOrder/AddWorkOrderAttachment\">WorkOrder/Attachment:</a> Attach a file to work order. </br></br>- GET <a href=\"?deepLinking=true#/WorkOrder/GetJobs\">Job:</a> retrieve a list of jobs for work order hours.</br></br>- GET <a href=\"?deepLinking=true#/WorkOrder/GetSchedule\">Schedule</a>: retrieves a list of all (work order) schedule items.</br></br>- GET <a href=\"?deepLinking=true#/WorkOrder/GetScheduleForEmployee\">Schedule/Employee</a>: retrieves a list of all schedule items.</br></br>- GET <a href=\"?deepLinking=true#/WorkOrder/GetScheduleForWorkOrder\">Schedule/WorkOrder</a>: retrieves a list of schedule items for specified work order.</br></br>- GET <a href=\"?deepLinking=true#/WorkOrder/GetScheduleById\">Schedule/{scheduleId}</a>: retrieves specified schedule item.</br></br>- POST <a href=\"?deepLinking=true#/WorkOrder/CreateWorkOrderSchedule\">Schedule</a>: creates a schedule item.</br></br>- PUT <a href=\"?deepLinking=true#/WorkOrder/UpdateWorkOrderSchedule\">Schedule</a>: updates a schedule item.</br></br>- DELETE <a href=\"?deepLinking=true#/WorkOrder/DeleteWorkOrderSchedule\">Schedule</a>: deletes a (series of) schedule items.</br></br>

This Dart package is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: v1.12
- Build package: io.swagger.codegen.languages.DartClientCodegen

## Requirements

Dart 1.20.0 or later OR Flutter 0.0.20 or later

## Installation & Usage

### Github
If this Dart package is published to Github, please include the following in pubspec.yaml
```
name: swagger
version: 1.0.0
description: Swagger API client
dependencies:
  swagger:
    git: https://github.com//.git
      version: 'any'
```

### Local
To use the package in your local drive, please include the following in pubspec.yaml
```
dependencies:
  swagger:
    path: /path/to/swagger
```

## Tests

TODO

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```dart
import 'package:swagger/api.dart';

// TODO Configure API key authorization: Bearer
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new AccountApi();

try {
    var result = api_instance.getInfo();
    print(result);
} catch (e) {
    print("Exception when calling AccountApi->getInfo: $e\n");
}

```

## Documentation for API Endpoints

All URIs are relative to *https://localhost*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AccountApi* | [**getInfo**](docs//AccountApi.md#getinfo) | **GET** /api/Account | Get the account information of the user.
*AccountApi* | [**token**](docs//AccountApi.md#token) | **POST** /api/Account/Token | Login the API.
*AddressApi* | [**checkPostalcode**](docs//AddressApi.md#checkpostalcode) | **GET** /api/Address/CheckPostalcode | Validate dutch address
*AddressApi* | [**checkPostalcodeBE**](docs//AddressApi.md#checkpostalcodebe) | **GET** /api/Address/CheckPostalcodeBE | Validate belgian address
*AppointmentApi* | [**appointment**](docs//AppointmentApi.md#appointment) | **POST** /api/Appointments/Appointment | Updates or Creates a appointment
*AppointmentApi* | [**changedAppointments**](docs//AppointmentApi.md#changedappointments) | **GET** /api/Appointments/ChangedAppointments | Get a list of all changed appointments from given sync state
*BranchApi* | [**getAllBranches**](docs//BranchApi.md#getallbranches) | **GET** /api/Branch | Get a list of all branches.
*BranchApi* | [**getBranchById**](docs//BranchApi.md#getbranchbyid) | **GET** /api/Branch/{companyId}/{branchId} | Get branch by company/branch id.
*BranchApi* | [**getBranchesForCompany**](docs//BranchApi.md#getbranchesforcompany) | **GET** /api/Branch/{companyId} | Get a list of all branches for a specified companyId.
*BudgetApi* | [**addUsage**](docs//BudgetApi.md#addusage) | **POST** /api/Budget/api/Budget | Adds budget usage for specific budget of employee
*BudgetApi* | [**deActivate**](docs//BudgetApi.md#deactivate) | **PUT** /api/Budget/api/Budget/Deactivate | Deactivate specific budget of employee
*BudgetApi* | [**deleteUsage**](docs//BudgetApi.md#deleteusage) | **DELETE** /api/Budget/api/Budget | Delete budget usage of specific budget of employee
*BudgetApi* | [**getActiveBudgetUsageForUser**](docs//BudgetApi.md#getactivebudgetusageforuser) | **GET** /api/Budget/active/{lsoort}/{debinr}/{medwnr} | Gets usage of active budget of specified employee
*BudgetApi* | [**getAllBudgetsForCustomer**](docs//BudgetApi.md#getallbudgetsforcustomer) | **GET** /api/Budget/{lsoort}/{debinr} | Gets all available budgets of customer
*BudgetApi* | [**getBudgetById**](docs//BudgetApi.md#getbudgetbyid) | **GET** /api/Budget/{bgtpnr} | Gets specific budget
*BudgetApi* | [**getBudgetOverviewForUserV111**](docs//BudgetApi.md#getbudgetoverviewforuserv111) | **GET** /api/Budget/BudgetOverview | Gets budget overview for specified user
*BudgetApi* | [**getBudgetUsageForUser**](docs//BudgetApi.md#getbudgetusageforuser) | **GET** /api/Budget/{lsoort}/{debinr}/{medwnr} | Gets budget usage of selected employee
*BudgetApi* | [**getEndDate**](docs//BudgetApi.md#getenddate) | **GET** /api/Budget/api/Budget/enddate/{bgtpnr}/{stardd} | Gets enddate of specific budget
*BudgetApi* | [**updateUsage**](docs//BudgetApi.md#updateusage) | **PUT** /api/Budget/api/Budget | Update specific budget of employee
*CompanyApi* | [**getAllCompanies**](docs//CompanyApi.md#getallcompanies) | **GET** /api/Company | Get a list of all companies.
*CompanyApi* | [**getCompanyDetails**](docs//CompanyApi.md#getcompanydetails) | **GET** /api/Company/{companyId} | Get company by id.
*CostCentreApi* | [**getCostCentreLevel**](docs//CostCentreApi.md#getcostcentrelevel) | **GET** /api/CostCentre | Get a list of active cost centres.
*CostCentreApi* | [**getCostCentreLevelById**](docs//CostCentreApi.md#getcostcentrelevelbyid) | **GET** /api/CostCentre/{CompanyId}/{CostCentreLevelId} | Get a list of all cost centres by costcentre level.
*CostCentreApi* | [**perGeneralLedgerAccount**](docs//CostCentreApi.md#pergeneralledgeraccount) | **GET** /api/CostCentre/PerGeneralLedgerAccount/{CompanyId}/{LedgerAccountNumber} | Get a list of all required costcentres per general ledger account.
*CostTypeApi* | [**getAllCostTypes**](docs//CostTypeApi.md#getallcosttypes) | **GET** /api/CostType | Get a list of all cost types.
*CostTypeApi* | [**getCostType**](docs//CostTypeApi.md#getcosttype) | **GET** /api/CostType/{Id} | Get a cost type by id.
*CountryApi* | [**getAllCountries**](docs//CountryApi.md#getallcountries) | **GET** /api/Country | Get a list of all countries.
*CountryApi* | [**getCountryDetails**](docs//CountryApi.md#getcountrydetails) | **GET** /api/Country/{countryId} | Get country by id.
*CountryApi* | [**getDetailsByIso3166**](docs//CountryApi.md#getdetailsbyiso3166) | **GET** /api/Country/{ISO3166} | Get country by ISO3166 code.
*CrmApi* | [**createAppointment**](docs//CrmApi.md#createappointment) | **POST** /api/CRM/Appointment | Creates a new appointment.
*CrmApi* | [**getAllAppointments**](docs//CrmApi.md#getallappointments) | **GET** /api/CRM/Appointment | Retrieve a list of appointments for a specified period, optionally by sales representative and/or status.
*CrmApi* | [**updateAppointment**](docs//CrmApi.md#updateappointment) | **PUT** /api/CRM/Appointment | Update an existing CRM appointment
*CurrencyApi* | [**currencyCodes**](docs//CurrencyApi.md#currencycodes) | **GET** /api/Currency/CurrencyCodes | Get a list of all available currency codes.
*CurrencyApi* | [**currencyCodesById**](docs//CurrencyApi.md#currencycodesbyid) | **GET** /api/Currency/{CurrencyId} | Get a currency by its CurrencyId.
*CustomerApi* | [**addV12**](docs//CustomerApi.md#addv12) | **POST** /api/Customer | Add customer
*CustomerApi* | [**customerBranche**](docs//CustomerApi.md#customerbranche) | **GET** /api/Customer/CustomerBranche | Get Branches assigned to Customers
*CustomerApi* | [**customerGroupById**](docs//CustomerApi.md#customergroupbyid) | **GET** /api/Customer/CustomerGroup/{customerGroupId} | Get customer group
*CustomerApi* | [**delete**](docs//CustomerApi.md#delete) | **DELETE** /api/Customer | Delete customer
*CustomerApi* | [**downloadProductPriceList**](docs//CustomerApi.md#downloadproductpricelist) | **GET** /api/Customer/DownloadProductPriceList/{fileName} | Download ProductPriceList
*CustomerApi* | [**getAllCustomerGroup**](docs//CustomerApi.md#getallcustomergroup) | **GET** /api/Customer/CustomerGroup | Get customer groups
*CustomerApi* | [**getAllCustomers**](docs//CustomerApi.md#getallcustomers) | **GET** /api/Customer | Get a list of all customer.
*CustomerApi* | [**getCustomerByGLN**](docs//CustomerApi.md#getcustomerbygln) | **GET** /api/Customer/{GLN} | Get customers by GLN.
*CustomerApi* | [**getCustomerById**](docs//CustomerApi.md#getcustomerbyid) | **GET** /api/Customer/{customerId} | Get customer by id.
*CustomerApi* | [**getCustomerEnhanced**](docs//CustomerApi.md#getcustomerenhanced) | **GET** /api/Customer/Enhanced/Paged | Get (paged) enchanced customer information for all customers, including full shipping method, shipping addresses and contactpersons.
*CustomerApi* | [**getCustomerEnhancedV111ById**](docs//CustomerApi.md#getcustomerenhancedv111byid) | **GET** /api/Customer/Enhanced | Get enchanced customer information for customer, including full shipping method, shipping addresses and contactpersons
*CustomerApi* | [**getCustomersForSalesRep**](docs//CustomerApi.md#getcustomersforsalesrep) | **GET** /api/Customer/SalesRepresentative | Get all customers for specified sales representative.
*CustomerApi* | [**paymentMethod**](docs//CustomerApi.md#paymentmethod) | **GET** /api/Customer/PaymentMethod | Get payment methods for customer
*CustomerApi* | [**requestProductPriceList**](docs//CustomerApi.md#requestproductpricelist) | **POST** /api/Customer/RequestProductPriceList | Request product price list for specified customer.
*CustomerApi* | [**shippingAddresses**](docs//CustomerApi.md#shippingaddresses) | **GET** /api/Customer/ShippingAddress | Get Addresses assigned to Customers
*CustomerApi* | [**updateV12**](docs//CustomerApi.md#updatev12) | **PUT** /api/Customer | Update customer.
*DeliveryApi* | [**createDelivery**](docs//DeliveryApi.md#createdelivery) | **POST** /api/Delivery | Create a new delivery.
*DeliveryApi* | [**deliveryNotePDF**](docs//DeliveryApi.md#deliverynotepdf) | **GET** /api/Delivery/DeliveryNote/{companyId}/{branchId}/{orderId}/{deliveryId} | Returns delivery note PDF
*DeliveryApi* | [**getAllDeliveryConditions**](docs//DeliveryApi.md#getalldeliveryconditions) | **GET** /api/Delivery/DeliveryCondition | Get delivery conditions
*DeliveryApi* | [**getDeliveries**](docs//DeliveryApi.md#getdeliveries) | **GET** /api/Delivery | Returns deliveries
*DeliveryApi* | [**getDeliveriesPagedAndSearch**](docs//DeliveryApi.md#getdeliveriespagedandsearch) | **GET** /api/Delivery/Paged | Returns deliveries (paged), optional based on search parameter
*DeliveryApi* | [**getDeliveryCondition**](docs//DeliveryApi.md#getdeliverycondition) | **GET** /api/Delivery/DeliveryCondition/{companyId}/{languageId}/{deliveryConditionId} | Get delivery condition
*DeliveryApi* | [**getSingleDelivery**](docs//DeliveryApi.md#getsingledelivery) | **GET** /api/Delivery/Single | Returns delivery
*DeliveryApi* | [**validShippingDates**](docs//DeliveryApi.md#validshippingdates) | **GET** /api/Delivery/ValidShippingDates | Returns a list of valid shipping dates
*DocumentTypeApi* | [**getAllDocumentTypes**](docs//DocumentTypeApi.md#getalldocumenttypes) | **GET** /api/DocumentType | Get a list of all document types.
*DocumentTypeApi* | [**getDocumentById**](docs//DocumentTypeApi.md#getdocumentbyid) | **GET** /api/DocumentType/{Id} | Get documenttype by id.
*EmployeeApi* | [**addCustomerEmployeeV111**](docs//EmployeeApi.md#addcustomeremployeev111) | **POST** /api/Employee/CustomerEmployee | Add customer employee
*EmployeeApi* | [**deleteCustomerEmployee**](docs//EmployeeApi.md#deletecustomeremployee) | **DELETE** /api/Employee/CustomerEmployee | Delete customer employee
*EmployeeApi* | [**getAllCustomerEmployeesV111**](docs//EmployeeApi.md#getallcustomeremployeesv111) | **GET** /api/Employee/CustomerEmployee/All | Get customer employees for all customers
*EmployeeApi* | [**getAllRoles**](docs//EmployeeApi.md#getallroles) | **GET** /api/Employee/Role | Get roles
*EmployeeApi* | [**getAllSalesPersons**](docs//EmployeeApi.md#getallsalespersons) | **GET** /api/Employee/SalesPerson | Get Sales persons
*EmployeeApi* | [**getAllTitles**](docs//EmployeeApi.md#getalltitles) | **GET** /api/Employee/Title | Get titles
*EmployeeApi* | [**getCompanyEmployee**](docs//EmployeeApi.md#getcompanyemployee) | **GET** /api/Employee | Get company&#39;s employees
*EmployeeApi* | [**getCustomerEmployeeUMS**](docs//EmployeeApi.md#getcustomeremployeeums) | **GET** /api/Employee/{companyId}/{storeId}/{customerId}/{employeeId} | Get Employee for UMS
*EmployeeApi* | [**getCustomerEmployeeV111ById**](docs//EmployeeApi.md#getcustomeremployeev111byid) | **GET** /api/Employee/CustomerEmployee | Get customer employee
*EmployeeApi* | [**getCustomerEmployeesUMS**](docs//EmployeeApi.md#getcustomeremployeesums) | **GET** /api/Employee/api/Employee/{companyId}/{storeId}/{customerId} | Get employees of selected customer
*EmployeeApi* | [**getCustomerEmployeesV111**](docs//EmployeeApi.md#getcustomeremployeesv111) | **GET** /api/Employee/CustomerEmployee/{customerId} | Get customer employees for specified customer
*EmployeeApi* | [**getEmployeeDictionary**](docs//EmployeeApi.md#getemployeedictionary) | **GET** /api/Employee/api/EmployeeDictionary/{companyId}/{storeId}/{customerId} | Get employee dictionary of selected customer
*EmployeeApi* | [**getRoleById**](docs//EmployeeApi.md#getrolebyid) | **GET** /api/Employee/Role/{roleId} | Get role by ID
*EmployeeApi* | [**salesPersonById**](docs//EmployeeApi.md#salespersonbyid) | **GET** /api/Employee/SalesPerson/{employeeId} | Get Sales person by employee ID
*EmployeeApi* | [**titleById**](docs//EmployeeApi.md#titlebyid) | **GET** /api/Employee/Title/{titleId} | Get title by ID
*EmployeeApi* | [**updateCustomerEmployee**](docs//EmployeeApi.md#updatecustomeremployee) | **PUT** /api/Employee/CustomerEmployee | Update customer employee
*HotlistApi* | [**addToHotlist**](docs//HotlistApi.md#addtohotlist) | **POST** /api/hotlist/Hotlist/Product | Add product to hotlist
*HotlistApi* | [**createHotlist**](docs//HotlistApi.md#createhotlist) | **POST** /api/hotlist/Hotlist | Create hotlist
*HotlistApi* | [**deleteFromHotlist**](docs//HotlistApi.md#deletefromhotlist) | **DELETE** /api/hotlist/Hotlist/Product | Delete product from hotlist
*HotlistApi* | [**deleteHotlist**](docs//HotlistApi.md#deletehotlist) | **DELETE** /api/hotlist/Hotlist | Delete hotlist
*HotlistApi* | [**editHotlist**](docs//HotlistApi.md#edithotlist) | **PUT** /api/hotlist/Hotlist | Edit hotlist
*HotlistApi* | [**getHotlistsForCustomer**](docs//HotlistApi.md#gethotlistsforcustomer) | **GET** /api/hotlist/Hotlist/Customer | Get hotlists for customer
*HotlistApi* | [**hotListDetailed**](docs//HotlistApi.md#hotlistdetailed) | **GET** /api/hotlist/Hotlist | Get hotlist
*HotlistApi* | [**hotlistForUser**](docs//HotlistApi.md#hotlistforuser) | **GET** /api/hotlist/Hotlist/User | Get hotlists for user
*InternalInvoiceApi* | [**internalInvoice**](docs//InternalInvoiceApi.md#internalinvoice) | **GET** /api/InternalInvoice/InternalInvoice/{companyId}/{branchId}/{purchaseId}/{deliverySequenceId} | Get internal invoice
*InternalInvoiceApi* | [**matchInternalInvoice**](docs//InternalInvoiceApi.md#matchinternalinvoice) | **PUT** /api/InternalInvoice/MatchInternalInvoice | Match internal invoice lines with purchase invoice
*InternalInvoiceApi* | [**outstandingInternalInvoices**](docs//InternalInvoiceApi.md#outstandinginternalinvoices) | **GET** /api/InternalInvoice/OutstandingInternalInvoices/{companyId}/{branchId} | Get all outstanding internal invoices
*InvoiceApi* | [**detailedInvoice**](docs//InvoiceApi.md#detailedinvoice) | **GET** /api/Invoice/Invoice/{companyId}/{invoiceNumber} | Get invoice by invoice number
*InvoiceApi* | [**getAllPaymentConditions**](docs//InvoiceApi.md#getallpaymentconditions) | **GET** /api/Invoice/PaymentCondition | Get payment conditions
*InvoiceApi* | [**getPaymentConditionById**](docs//InvoiceApi.md#getpaymentconditionbyid) | **GET** /api/Invoice/PaymentCondition/{paymentConditionId} | Get payment condition by Id
*InvoiceApi* | [**invoice**](docs//InvoiceApi.md#invoice) | **POST** /api/Invoice/Invoice | Create invoice.  (All amounts must be provided in the supplied currency)
*InvoiceApi* | [**invoiceByDeliveryInformation**](docs//InvoiceApi.md#invoicebydeliveryinformation) | **GET** /api/Invoice/Invoice/{companyId}/{orderId}/{deliveryId} | Get invoice by delivery information (orderId and deliveryId)
*InvoiceApi* | [**invoicePDF**](docs//InvoiceApi.md#invoicepdf) | **GET** /api/Invoice/InvoicePDF/{companyId}/{branchId}/{invoiceId} | Return Invoice pdf-stream
*InvoiceApi* | [**invoicePDFByWeborderId**](docs//InvoiceApi.md#invoicepdfbyweborderid) | **GET** /api/Invoice/InvoicePDF | Return invoice pdf-stream, based on weborderId
*InvoiceApi* | [**invoices**](docs//InvoiceApi.md#invoices) | **POST** /api/Invoice/Invoices | Create multiple invoices in one transaction.  (All amounts must be provided in the supplied currency)
*InvoiceApi* | [**invoicesForCustomerWithSearch**](docs//InvoiceApi.md#invoicesforcustomerwithsearch) | **GET** /api/Invoice/Invoice | Get invoices of customer, optional based on search parameter
*LanguageApi* | [**getAllLanguages**](docs//LanguageApi.md#getalllanguages) | **GET** /api/Language | Get a list of all languages.
*LanguageApi* | [**getLanguageById**](docs//LanguageApi.md#getlanguagebyid) | **GET** /api/Language/{languageId} | Get language by id.
*LanguageApi* | [**getLanguageByIso**](docs//LanguageApi.md#getlanguagebyiso) | **GET** /api/Language/{ISO} | Get language by ISO code.
*LedgerApi* | [**generalLedgerAccount**](docs//LedgerApi.md#generalledgeraccount) | **GET** /api/Ledger/GeneralLedgerAccount | Get a list of all general ledger accounts.
*LedgerApi* | [**generalLedgerAccountById**](docs//LedgerApi.md#generalledgeraccountbyid) | **GET** /api/Ledger/GeneralLedgerAccount/{LedgerAccountNumber} | Get general ledger account by LedgerAccountNumber.
*LedgerApi* | [**ledgerJournal**](docs//LedgerApi.md#ledgerjournal) | **POST** /api/Ledger/LedgerJournal | Create ledger journal.
*LedgerApi* | [**supplierGeneralLedgerAccounts**](docs//LedgerApi.md#suppliergeneralledgeraccounts) | **GET** /api/Ledger/SupplierGeneralLedgerAccounts/{CompanyId} | Get general ledger accounts per supplier
*LedgerApi* | [**supplierGeneralLedgerAccountsBySupplier**](docs//LedgerApi.md#suppliergeneralledgeraccountsbysupplier) | **GET** /api/Ledger/SupplierGeneralLedgerAccounts/{CompanyId}/{SupplierId} | Get general ledger accounts for specified SupplierId.
*LoggingApi* | [**addLogging**](docs//LoggingApi.md#addlogging) | **POST** /api/Logging | Add logging to ERP logfile.
*MarketSegmentApi* | [**getMarketSegments**](docs//MarketSegmentApi.md#getmarketsegments) | **GET** /api/MarketSegment/MarketSegment | Get a list of all market segments
*MarketSegmentApi* | [**segmentation**](docs//MarketSegmentApi.md#segmentation) | **GET** /api/MarketSegment/Segmentation | Get a list of market segmentation of customers
*MediaApi* | [**media**](docs//MediaApi.md#media) | **GET** /api/Media | Get media for products (may contain a large number of records)
*MediaApi* | [**mediaById**](docs//MediaApi.md#mediabyid) | **GET** /api/Media/{productId} | Get media for product
*OrderApi* | [**changeOrder**](docs//OrderApi.md#changeorder) | **PUT** /api/Order/ChangeOrder | Change order into delivery in parts and/or cancel specified order lines.
*OrderApi* | [**orderAttachment**](docs//OrderApi.md#orderattachment) | **POST** /api/Order/OrderAttachment | Add Attachment to order
*OrderApi* | [**orderChanges**](docs//OrderApi.md#orderchanges) | **GET** /api/Order/OrderChanges | Get Order changes
*OrderApi* | [**orderSelectionV17**](docs//OrderApi.md#orderselectionv17) | **GET** /api/Order/OrderSelection | Get collection of orders for customer, specified by a starting point (offset) and limit.
*OrderApi* | [**orderV12**](docs//OrderApi.md#orderv12) | **GET** /api/Order/Order/{orderId} | Get Order by Id
*OrderApi* | [**orderWithPaginationAndSearch**](docs//OrderApi.md#orderwithpaginationandsearch) | **GET** /api/Order/Order | Get Orders for customer, optional based on search parameter
*PartnerApi* | [**deletePartnerObject**](docs//PartnerApi.md#deletepartnerobject) | **DELETE** /api/Partner | Delete partner ID for Mavis entity, for example account, order, invoice or contact
*PartnerApi* | [**registerPartnerObject**](docs//PartnerApi.md#registerpartnerobject) | **PUT** /api/Partner/Register | Register partner object ID for Mavis entity, for example account, order, invoice or contact
*PeriodApi* | [**outstandingPeriods**](docs//PeriodApi.md#outstandingperiods) | **GET** /api/Period/OutstandingPeriods | Get a list of outstanding periods per company
*PeriodApi* | [**outstandingPeriodsForCompany**](docs//PeriodApi.md#outstandingperiodsforcompany) | **GET** /api/Period/OutstandingPeriods/{CompanyId} | Get outstanding periods for the specified company
*PeriodApi* | [**periodsForRange**](docs//PeriodApi.md#periodsforrange) | **GET** /api/Period | Get a list of periods
*ProductApi* | [**addProductV14**](docs//ProductApi.md#addproductv14) | **POST** /api/Product/Product | Add product to ERP from Product Information Management system
*ProductApi* | [**allPackageInformation**](docs//ProductApi.md#allpackageinformation) | **GET** /api/Product/Package | Get package information
*ProductApi* | [**articleGroup**](docs//ProductApi.md#articlegroup) | **GET** /api/Product/ArticleGroup | Get article groups including applicable ledger accounts
*ProductApi* | [**articleGroupById**](docs//ProductApi.md#articlegroupbyid) | **GET** /api/Product/ArticleGroup/{Id} | Get article group by Id including applicable ledger accounts
*ProductApi* | [**articleSubGroups**](docs//ProductApi.md#articlesubgroups) | **GET** /api/Product/ArticleSubGroup | Get article sub groups, optionally specified by parent article group ID.
*ProductApi* | [**branchAvailability**](docs//ProductApi.md#branchavailability) | **GET** /api/Product/BranchAvailability | Get a list of all product availability per branch for a specific company
*ProductApi* | [**brands**](docs//ProductApi.md#brands) | **GET** /api/Product/Brand | Return a list of all product brands.
*ProductApi* | [**createCustomerProductReference**](docs//ProductApi.md#createcustomerproductreference) | **POST** /api/Product/CustomerProductReference | Create customer product reference in ERP for specified customer and product
*ProductApi* | [**customerProductReference**](docs//ProductApi.md#customerproductreference) | **GET** /api/Product/CustomerProductReference/{customerId}/{productId} | Get customer product references for specified customer and product
*ProductApi* | [**customerProductReferenceList**](docs//ProductApi.md#customerproductreferencelist) | **GET** /api/Product/CustomerProductReference/{customerId} | Get a list of customer product references for specified customer
*ProductApi* | [**customerSpecific**](docs//ProductApi.md#customerspecific) | **GET** /api/Product/CustomerSpecific | Get customer specific products
*ProductApi* | [**customerSpecificById**](docs//ProductApi.md#customerspecificbyid) | **GET** /api/Product/CustomerSpecific/{customerId} | Get customer specific products for specified customer
*ProductApi* | [**deleteCustomerProductReference**](docs//ProductApi.md#deletecustomerproductreference) | **DELETE** /api/Product/CustomerProductReference | Remove customer product reference in ERP for specified customer and product
*ProductApi* | [**deleteProduct**](docs//ProductApi.md#deleteproduct) | **DELETE** /api/Product/Product | Delete product in ERP
*ProductApi* | [**editCustomerProductReference**](docs//ProductApi.md#editcustomerproductreference) | **PUT** /api/Product/CustomerProductReference | Edit customer product reference in ERP for specified customer and product
*ProductApi* | [**editProductV14**](docs//ProductApi.md#editproductv14) | **PUT** /api/Product/Product | Edit product in ERP from Product Information Management system
*ProductApi* | [**getProductInformation**](docs//ProductApi.md#getproductinformation) | **GET** /api/Product/ProductInformation | Get Product information for specified product
*ProductApi* | [**getProductInformationPaged**](docs//ProductApi.md#getproductinformationpaged) | **GET** /api/Product/ProductInformation/Paged | Get product information for shop products
*ProductApi* | [**package**](docs//ProductApi.md#package) | **GET** /api/Product/Package/{unitId} | Get package information
*ProductApi* | [**priceAndStockStoreForRange**](docs//ProductApi.md#priceandstockstoreforrange) | **GET** /api/Product/PricesAndStock/{storeId} | Get price and stock information for specified store and range
*ProductApi* | [**priceAndStockV14SingleProduct**](docs//ProductApi.md#priceandstockv14singleproduct) | **GET** /api/Product/PriceAndStock | Get price and stock information for specified product
*ProductApi* | [**priceTiers**](docs//ProductApi.md#pricetiers) | **GET** /api/Product/PriceTiers | Get price tiers
*ProductApi* | [**pricesAndStockMultipleProducts**](docs//ProductApi.md#pricesandstockmultipleproducts) | **GET** /api/Product/PricesAndStock | Get price and stock information for specified products
*ProductApi* | [**pricesAndStockSizeV14**](docs//ProductApi.md#pricesandstocksizev14) | **POST** /api/Product/PricesAndStock | Get price and stock information for specified products
*ProductApi* | [**product**](docs//ProductApi.md#product) | **GET** /api/Product/Product | Get product by productId
*ProductApi* | [**productAlternative**](docs//ProductApi.md#productalternative) | **POST** /api/Product/Alternative | Get product alternatives / replacements for specified products
*ProductApi* | [**productAlternativeByStore**](docs//ProductApi.md#productalternativebystore) | **GET** /api/Product/Alternative | Get product alternatives / replacements for specified store.
*ProductApi* | [**productAttribute**](docs//ProductApi.md#productattribute) | **POST** /api/Product/ProductAttribute | Get modified data about product attributes for shop products
*ProductApi* | [**productAttributeById**](docs//ProductApi.md#productattributebyid) | **GET** /api/Product/ProductAttribute/Options/{attributeId} | Get product attribute including options
*ProductApi* | [**productAttributeForSingleProduct**](docs//ProductApi.md#productattributeforsingleproduct) | **GET** /api/Product/ProductAttribute/{productId} | Get product attributes for product
*ProductApi* | [**productAttributeSets**](docs//ProductApi.md#productattributesets) | **GET** /api/Product/ProductAttributeSet | Get product attribute sets including underlying attributes. Please be advised: underlying attributes are returned without options.
*ProductApi* | [**productAttributes**](docs//ProductApi.md#productattributes) | **GET** /api/Product/ProductAttribute | Get all product attributes (incl. options if applicable).
*ProductApi* | [**productAttributesBySelection**](docs//ProductApi.md#productattributesbyselection) | **POST** /api/Product/ProductAttributeBySelection | Get product attributes for a selection of products
*ProductApi* | [**productAttributesInclOptions**](docs//ProductApi.md#productattributesincloptions) | **GET** /api/Product/ProductAttribute/Options | Get product attribute sets including options
*ProductApi* | [**productAttributesInclOptionsByHash**](docs//ProductApi.md#productattributesincloptionsbyhash) | **POST** /api/Product/ProductAttribute/Options | Get product attribute including options
*ProductApi* | [**productAvailability**](docs//ProductApi.md#productavailability) | **GET** /api/Product/ProductAvailability | Get a list of all product availability changes from a specific store since a certain date+time
*ProductApi* | [**productDeliveryDays**](docs//ProductApi.md#productdeliverydays) | **GET** /api/Product/ProductDeliveryDays | Get estimated delivery time for products of specificied store
*ProductApi* | [**productDeliveryDaysById**](docs//ProductApi.md#productdeliverydaysbyid) | **POST** /api/Product/ProductDeliveryDays/ById | Get estimated delivery times for specified products of specificied store
*ProductApi* | [**productEan**](docs//ProductApi.md#productean) | **GET** /api/Product/Ean | Get additional EANs for products, as specified by store.
*ProductApi* | [**productEanById**](docs//ProductApi.md#producteanbyid) | **GET** /api/Product/Ean/{productId} | Get additional EANs for specified product.
*ProductApi* | [**productSynonym**](docs//ProductApi.md#productsynonym) | **GET** /api/Product/Synonym | Get synonyms for product descriptions.
*ProductApi* | [**productsForSale**](docs//ProductApi.md#productsforsale) | **GET** /api/Product/ProductsForSale | Get all products available for sale in ERP
*ProductApi* | [**promotionalPrice**](docs//ProductApi.md#promotionalprice) | **GET** /api/Product/PromotionalPrice | Get promotional price and available stock for products currently promoted
*ProductApi* | [**relatedProduct**](docs//ProductApi.md#relatedproduct) | **GET** /api/Product/RelatedProduct/{storeId}/{productId} | Get related products for specified product
*ProductApi* | [**relatedProducts**](docs//ProductApi.md#relatedproducts) | **GET** /api/Product/RelatedProduct/{storeId} | Get related products for specified store
*ProductApi* | [**shopProductInformation**](docs//ProductApi.md#shopproductinformation) | **GET** /api/Product/ShopProducts | Get shop product information
*ProductApi* | [**shopProductsV13**](docs//ProductApi.md#shopproductsv13) | **POST** /api/Product/ShopProducts | Get modified shop product information based on parsed HashData recieved at product retrieval.
*ProductSelectionApi* | [**add**](docs//ProductSelectionApi.md#add) | **POST** /api/Productselection/api/Productselection | Add product selection to employee
*ProductSelectionApi* | [**deleteProductSelection**](docs//ProductSelectionApi.md#deleteproductselection) | **DELETE** /api/Productselection/api/Productselection | Delete product selection from employee
*ProductSelectionApi* | [**getByCustomerV16**](docs//ProductSelectionApi.md#getbycustomerv16) | **GET** /api/Productselection/Customer/{storeId}/{customerId} | Get product selections of specific customer
*ProductSelectionApi* | [**getCategoryBudgets**](docs//ProductSelectionApi.md#getcategorybudgets) | **GET** /api/Productselection/api/Productselection/Category/{lsoort}/{debinr}/{medwnr}/{webanr} | Get categories of product selection
*ProductSelectionApi* | [**getForEmployeeV16**](docs//ProductSelectionApi.md#getforemployeev16) | **GET** /api/Productselection/{storeId}/{customerId}/{employeeId} | Get product selections for employee
*ProductSelectionApi* | [**getPerfectSizesForUser**](docs//ProductSelectionApi.md#getperfectsizesforuser) | **GET** /api/Productselection/api/Productselection/PerfectSize | Get registrated sizes for webshopuser
*ProductSelectionApi* | [**getProductSelectionById**](docs//ProductSelectionApi.md#getproductselectionbyid) | **GET** /api/Productselection/api/Productselection/{lsoort}/{webanr} | Get specific product selection
*ProductSelectionApi* | [**productSelectionWithSize**](docs//ProductSelectionApi.md#productselectionwithsize) | **GET** /api/Productselection/api/ProductSelection/Size | Get all possible sizes for customer&#39;s product selection
*ProductSelectionApi* | [**updateCategoryBudgetV14**](docs//ProductSelectionApi.md#updatecategorybudgetv14) | **PUT** /api/Productselection/api/Productselection/Category | Updates categories in budget
*ProductSelectionApi* | [**updatePerfectSizeForUser**](docs//ProductSelectionApi.md#updateperfectsizeforuser) | **POST** /api/Productselection/api/ProductSelection/PerfectSize | Set or reset size of specified product group for user
*ProjectApi* | [**create**](docs//ProjectApi.md#create) | **POST** /api/Project | Create a new project
*ProjectApi* | [**delete**](docs//ProjectApi.md#delete) | **DELETE** /api/Project | Deactivate a specified project
*ProjectApi* | [**getAllProjects**](docs//ProjectApi.md#getallprojects) | **GET** /api/Project | Get a list of all projects.
*ProjectApi* | [**getProjectV19ById**](docs//ProjectApi.md#getprojectv19byid) | **GET** /api/Project/{customerId}/{projectId} | Get project by customerId/projectId.
*ProjectApi* | [**getProjectsByGLN**](docs//ProjectApi.md#getprojectsbygln) | **GET** /api/Project/{GLN} | Get projects by GLN.
*ProjectApi* | [**getProjectsForCustomer**](docs//ProjectApi.md#getprojectsforcustomer) | **GET** /api/Project/{customerId} | Get projects by customerId.
*ProjectApi* | [**getUmsProjectByProjectId**](docs//ProjectApi.md#getumsprojectbyprojectid) | **GET** /api/Project/{companyId}/{customerId}/{projectId} | Get project specified for UMS by project id
*ProjectApi* | [**getUmsProjectV14**](docs//ProjectApi.md#getumsprojectv14) | **GET** /api/Project/api/Project | Get projects specified for UMS
*ProjectApi* | [**status**](docs//ProjectApi.md#status) | **GET** /api/Project/Status | Get project status.
*ProjectApi* | [**update**](docs//ProjectApi.md#update) | **PUT** /api/Project | Updates project.
*PurchaseInvoiceApi* | [**paymentOnHoldById**](docs//PurchaseInvoiceApi.md#paymentonholdbyid) | **POST** /api/PurchaseInvoice/PaymentOnHoldById/{ExternalId}/{ProcurationBlock} | Set purchaseinvoice procuration block by invoice externalId.
*PurchaseInvoiceApi* | [**paymentOnHoldByIdByInvoice**](docs//PurchaseInvoiceApi.md#paymentonholdbyidbyinvoice) | **POST** /api/PurchaseInvoice/PaymentOnHoldBy/{companyId}/{invoiceId}/{ProcurationBlock} | Set purchaseinvoice procuration block by invoiceId.
*PurchaseInvoiceApi* | [**purchaseInvoice**](docs//PurchaseInvoiceApi.md#purchaseinvoice) | **GET** /api/PurchaseInvoice/PurchaseInvoiceOutstandingAmount/{companyId}/{invoiceId} | Get outstanding amout for specified purchase invoice by invoiceId
*PurchaseInvoiceApi* | [**purchaseInvoiceById**](docs//PurchaseInvoiceApi.md#purchaseinvoicebyid) | **GET** /api/PurchaseInvoice/PurchaseInvoiceOutstandingAmountById/{ExternalId} | Get outstanding amout for specified purchase invoice by external id
*PurchaseInvoiceApi* | [**uploadPurchaseInvoice**](docs//PurchaseInvoiceApi.md#uploadpurchaseinvoice) | **POST** /api/PurchaseInvoice/PurchaseInvoice | Create purchase invoice  (All amounts must be provided in foreign currency)
*RayonApi* | [**getRayonById**](docs//RayonApi.md#getrayonbyid) | **GET** /api/Rayon/{rayonId} | Get Rayon
*RayonApi* | [**getRayons**](docs//RayonApi.md#getrayons) | **GET** /api/Rayon | Get Rayons
*RepresentativeApi* | [**representative**](docs//RepresentativeApi.md#representative) | **GET** /api/Representative/Representative | Get all representatives
*RepresentativeApi* | [**representativeTypes**](docs//RepresentativeApi.md#representativetypes) | **GET** /api/Representative/RepresentativeTypes | Get Representative types
*ReturnApi* | [**getReturnById**](docs//ReturnApi.md#getreturnbyid) | **GET** /api/Return/{companyId}/{branchId}/{returnId} | Get return order
*ReturnApi* | [**getReturnOrders**](docs//ReturnApi.md#getreturnorders) | **GET** /api/Return/{storeId}/{companyId}/{branchId}/{customerId}/{employeeId}/{onlyShowOwnData} | Get return orders. Please be advised: when including a store ID in the request, the response will only include returns with orders from that respective store. Combined returns (i.e. with orders from different stores) will not be included.
*ReturnApi* | [**requestReturnShipment**](docs//ReturnApi.md#requestreturnshipment) | **POST** /api/Return | Request return shipment
*ReturnApi* | [**returnFormPDF**](docs//ReturnApi.md#returnformpdf) | **GET** /api/Return/ReturnFormPDF/{companyId}/{branchId}/{returnId} | Get return order form in pdf
*ReturnApi* | [**returnLabelPDF**](docs//ReturnApi.md#returnlabelpdf) | **GET** /api/Return/ReturnLabelPDF/{companyId}/{branchId}/{returnId} | Get return label in pdf
*ReturnApi* | [**returnMethods**](docs//ReturnApi.md#returnmethods) | **GET** /api/Return/Methods/{customerId}/{storeId} | Request return shipment methods
*ReturnApi* | [**returnedItems**](docs//ReturnApi.md#returneditems) | **GET** /api/Return/Items/{companyId}/{branchId}/{orderId}/{deliveryId} | Request Returned items
*ReturnReasonApi* | [**returnReasons**](docs//ReturnReasonApi.md#returnreasons) | **GET** /api/ReturnReason | Get a list of all return reasons.
*RevenueApi* | [**revenueDetailedForPeriod**](docs//RevenueApi.md#revenuedetailedforperiod) | **GET** /api/Revenue/PeriodDetailed | Get detailed revenue for selected period
*RevenueApi* | [**revenueForArticleGroup**](docs//RevenueApi.md#revenueforarticlegroup) | **GET** /api/Revenue/ArticleGroup | Get revenue for article group for a specified period.
*RevenueApi* | [**revenueForArticleSubGroup**](docs//RevenueApi.md#revenueforarticlesubgroup) | **GET** /api/Revenue/ArticleSubGroup | Get revenue for article sub group for specified period.
*RevenueApi* | [**revenueForBrand**](docs//RevenueApi.md#revenueforbrand) | **GET** /api/Revenue/Brand | Get revenue for specific brand for a specified period.
*RevenueApi* | [**revenueForCustomer**](docs//RevenueApi.md#revenueforcustomer) | **GET** /api/Revenue/Customer | Get revenue for customer for a specified period.
*RevenueApi* | [**revenueForProduct**](docs//RevenueApi.md#revenueforproduct) | **GET** /api/Revenue/Product | Get revenue for product for specified period.
*RevenueApi* | [**revenueForSalesRepresentative**](docs//RevenueApi.md#revenueforsalesrepresentative) | **GET** /api/Revenue/SalesRepresentative | Get revenue for sales representative for a specified period.
*RevenueApi* | [**revenueForSupplier**](docs//RevenueApi.md#revenueforsupplier) | **GET** /api/Revenue/Supplier | Get revenue for supplier for specified period.
*SalesAccountApi* | [**addSalesAccount**](docs//SalesAccountApi.md#addsalesaccount) | **POST** /api/SalesAccount | Add Sales Account
*SalesAccountApi* | [**deleteSalesAccount**](docs//SalesAccountApi.md#deletesalesaccount) | **DELETE** /api/SalesAccount | Delete Sales Account
*SalesAccountApi* | [**getSalesAccountById**](docs//SalesAccountApi.md#getsalesaccountbyid) | **GET** /api/SalesAccount | Get Sales account
*SalesAccountApi* | [**getSalesAccounts**](docs//SalesAccountApi.md#getsalesaccounts) | **GET** /api/SalesAccount/SalesAccount/All | Get all Sales accounts (account type &#x3D; C)
*SalesAccountApi* | [**updateSalesAccount**](docs//SalesAccountApi.md#updatesalesaccount) | **PUT** /api/SalesAccount | Update Sales Account
*SectorApi* | [**getSectorById**](docs//SectorApi.md#getsectorbyid) | **GET** /api/Sector/{companyId}/{sectorId} | Get Sector
*SectorApi* | [**getSectorsForCompany**](docs//SectorApi.md#getsectorsforcompany) | **GET** /api/Sector/{companyId} | Get Sectors from company
*ShippingApi* | [**addShippingAddressV19**](docs//ShippingApi.md#addshippingaddressv19) | **POST** /api/Shipping | Add shipping address
*ShippingApi* | [**costs**](docs//ShippingApi.md#costs) | **POST** /api/Shipping/Costs | This will calculate the shipping costs for a specified list of products.
*ShippingApi* | [**deleteShippingAddress**](docs//ShippingApi.md#deleteshippingaddress) | **DELETE** /api/Shipping | Delete shipping address
*ShippingApi* | [**getAllShippingAddressStatus**](docs//ShippingApi.md#getallshippingaddressstatus) | **GET** /api/ShippingAddress/ShippingAddressStatus | Get shipping address statusses
*ShippingApi* | [**getShippingAddressV111**](docs//ShippingApi.md#getshippingaddressv111) | **GET** /api/Shipping | Get shipping address
*ShippingApi* | [**getShippingMethodById**](docs//ShippingApi.md#getshippingmethodbyid) | **GET** /api/Shipping/Method | Get shipping method
*ShippingApi* | [**shippingAddressStatusById**](docs//ShippingApi.md#shippingaddressstatusbyid) | **GET** /api/ShippingAddress/ShippingAddressStatus/{shippingAddressStatusId} | Get shipping address status by ID
*ShippingApi* | [**shippingMethods**](docs//ShippingApi.md#shippingmethods) | **GET** /api/Shipping/Methods | Get shipping methods
*ShippingApi* | [**shippingMethodsWebshop**](docs//ShippingApi.md#shippingmethodswebshop) | **GET** /api/Shipping/MethodsWebshop | Get shipping methods for webshop
*ShippingApi* | [**shippingMethodsWebshopForCustomer**](docs//ShippingApi.md#shippingmethodswebshopforcustomer) | **GET** /api/Shipping/MethodsWebshop/{customerId} | Get webshop shipping methods for customer
*ShippingApi* | [**updateShippingAddressV111**](docs//ShippingApi.md#updateshippingaddressv111) | **PUT** /api/Shipping | Update shipping address
*StockApi* | [**stockChangeTypes**](docs//StockApi.md#stockchangetypes) | **GET** /api/Stock/StockChangeTypes | Return all stock change types
*StockApi* | [**stockChanges**](docs//StockApi.md#stockchanges) | **PUT** /api/Stock/StockChanges | Modify stock quantity for one or more products
*SupplierApi* | [**allSuppliers**](docs//SupplierApi.md#allsuppliers) | **GET** /api/Supplier | Get all suppliers
*SupplierApi* | [**supplierByIdV15**](docs//SupplierApi.md#supplierbyidv15) | **GET** /api/Supplier/Supplier/{SupplierId} | Find a supplier by SupplierID
*SupplierApi* | [**supplierV15**](docs//SupplierApi.md#supplierv15) | **GET** /api/Supplier/Supplier | Find a supplier by any of its search options
*TaxCategoriesApi* | [**callGet**](docs//TaxCategoriesApi.md#callget) | **GET** /api/TaxCategories | Get a list of all tax categories.
*TaxCategoriesApi* | [**getById**](docs//TaxCategoriesApi.md#getbyid) | **GET** /api/TaxCategories/{TaxCategoryId} | Get tax category details by TaxCategoryId.
*UmsAuthorizerApi* | [**addAuthorizer**](docs//UmsAuthorizerApi.md#addauthorizer) | **POST** /api/UmsAuthorizer/api/UmsAuthorizer | Adds authorizer
*UmsAuthorizerApi* | [**authorizerRequired**](docs//UmsAuthorizerApi.md#authorizerrequired) | **GET** /api/UmsAuthorizer/required/{lsoort}/{debinr}/{medwnr} | Retrieves if authorizer is required
*UmsAuthorizerApi* | [**getAuthorizersForCompany**](docs//UmsAuthorizerApi.md#getauthorizersforcompany) | **GET** /api/UmsAuthorizer/{lsoort}/{debinr} | Gets UMS authorizers of selected company
*UmsAuthorizerApi* | [**getAuthorizersForEmployee**](docs//UmsAuthorizerApi.md#getauthorizersforemployee) | **GET** /api/UmsAuthorizer/{lsoort}/{debinr}/{medwnr} | Gets UMS authorizers for selected employee
*UmsAuthorizerApi* | [**putDisplayOrder**](docs//UmsAuthorizerApi.md#putdisplayorder) | **PUT** /api/UmsAuthorizer/api/UmsAuthorizer | Updates display order authorizers
*UmsAuthorizerApi* | [**removeAuthorizer**](docs//UmsAuthorizerApi.md#removeauthorizer) | **DELETE** /api/UmsAuthorizer/api/UmsAuthorizer | Deletes Authorizer for selected employee
*UmsAuthorizerApi* | [**rolesForCustomer**](docs//UmsAuthorizerApi.md#rolesforcustomer) | **GET** /api/UmsRoles/{customerId}/{storeId} | Gets UMS roles
*UmsAuthorizerApi* | [**umsRole**](docs//UmsAuthorizerApi.md#umsrole) | **GET** /api/UmsRoles/{customerId}/{storeId}/{roleId} | Gets UMS role
*UnitApi* | [**getSalesUnitById**](docs//UnitApi.md#getsalesunitbyid) | **GET** /api/Unit/SalesUnit/{unitId} | Get sales unit by ID
*UnitApi* | [**getSalesUnits**](docs//UnitApi.md#getsalesunits) | **GET** /api/Unit/SalesUnit | Get all sales units for company
*WebUserApi* | [**deleteWebshopUserV19**](docs//WebUserApi.md#deletewebshopuserv19) | **DELETE** /api/WebshopUser | Cancels selected webshop user. API Update requests for this webshop user are no longer possible.
*WebUserApi* | [**getAllWebUsers**](docs//WebUserApi.md#getallwebusers) | **GET** /api/WebshopUser | Returns a list of all webshop users of selected customer and user (sub)group (optional)
*WebUserApi* | [**getDefaultSettings**](docs//WebUserApi.md#getdefaultsettings) | **GET** /api/WebshopUser/Defaultsettings/{lsoort}/{debinr} | Gets default settings of webusers from specified customer
*WebUserApi* | [**getEmployeeIdByUsername**](docs//WebUserApi.md#getemployeeidbyusername) | **GET** /api/WebshopUser/WebshopUserId/{lsoort}/{username} | Gets EmployeeId as specified by username
*WebUserApi* | [**groupById**](docs//WebUserApi.md#groupbyid) | **GET** /api/WebshopUser/Groups/{storeId}/{customerId}/{groupId} | Returns details for a specified user group
*WebUserApi* | [**groupsByCustomerId**](docs//WebUserApi.md#groupsbycustomerid) | **GET** /api/WebshopUser/Groups/{storeId}/{customerId} | Returns a list of all user groups specified for this customer
*WebUserApi* | [**postUser**](docs//WebUserApi.md#postuser) | **POST** /api/WebshopUser | Creates a new webshop user for selected customer
*WebUserApi* | [**sizeForm**](docs//WebUserApi.md#sizeform) | **GET** /api/WebshopUser/SizeForm/{lsoort}/{debinr}/{medwnr} | Get size form
*WebUserApi* | [**subGroupById**](docs//WebUserApi.md#subgroupbyid) | **GET** /api/WebshopUser/Groups/{storeId}/{customerId}/{groupId}/{subgroupId} | Returns details for a specified user subgroup
*WebUserApi* | [**subGroups**](docs//WebUserApi.md#subgroups) | **GET** /api/WebshopUser/SubGroups/{storeId}/{customerId}/{groupId} | Returns a list of all user subgroups for a specified user group
*WebUserApi* | [**updateUser**](docs//WebUserApi.md#updateuser) | **PUT** /api/WebshopUser | Updates webshop user with selected data
*WebUserApi* | [**uploadSizeForm**](docs//WebUserApi.md#uploadsizeform) | **POST** /api/WebshopUser/SizeForm/{lsoort}/{debinr}/{medwnr} | Upload size form
*WebUserApi* | [**webUserByEmployeeId**](docs//WebUserApi.md#webuserbyemployeeid) | **GET** /api/WebshopUser/{storeId}/{customerId}/{employeeId} | Gets webshop user as specified by EmployeeId
*WebshopApi* | [**addOrUpdateAuthorizationRequest**](docs//WebshopApi.md#addorupdateauthorizationrequest) | **PUT** /api/Webshop/AuthorizationRequest | Add or update authorization request for webshoporder
*WebshopApi* | [**addWebshopOrderV16**](docs//WebshopApi.md#addwebshoporderv16) | **POST** /api/Webshop/AddOrder | Add webshop order
*WebshopApi* | [**cancelAuthorizationRequest**](docs//WebshopApi.md#cancelauthorizationrequest) | **DELETE** /api/Webshop/api/Webshop/CancelAuthorizationRequest | Cancel authorization request for webshoporder
*WebshopApi* | [**categoriesForShop**](docs//WebshopApi.md#categoriesforshop) | **GET** /api/Webshop/Category | Get categories for shop
*WebshopApi* | [**categoriesWithProductsForShop**](docs//WebshopApi.md#categorieswithproductsforshop) | **GET** /api/Webshop/CategoryWithProducts | Get categories including underlying products for shop
*WebshopApi* | [**categoryById**](docs//WebshopApi.md#categorybyid) | **GET** /api/Webshop/Category/{categoryId}/{position} | Get category for shop
*WebshopApi* | [**deleteCategory**](docs//WebshopApi.md#deletecategory) | **DELETE** /api/Webshop/Category/{categoryId}/{position} | Delete category for shop
*WebshopApi* | [**modifiedCategories**](docs//WebshopApi.md#modifiedcategories) | **POST** /api/Webshop/Category | Get modified / new categories for shop
*WebshopApi* | [**ociCustomFields**](docs//WebshopApi.md#ocicustomfields) | **GET** /api/Webshop/OciCustomFields | Get OCI custom fields
*WebshopApi* | [**productSpecificationAllowFiltering**](docs//WebshopApi.md#productspecificationallowfiltering) | **GET** /api/Webshop/ProductSpecification/Allowfiltering | Get Product Specificationfiltering
*WebshopApi* | [**receptionMethod**](docs//WebshopApi.md#receptionmethod) | **GET** /api/Webshop/ReceptionMethod | Get reception methods for webshop orders.
*WebshopApi* | [**specificationAllowFiltering**](docs//WebshopApi.md#specificationallowfiltering) | **GET** /api/Webshop/Specification/Allowfiltering | Get Specificationfiltering
*WebshopApi* | [**store**](docs//WebshopApi.md#store) | **GET** /api/Webshop/Store | Get Stores
*WmsStatusInformationApi* | [**wmsStatusInformation**](docs//WmsStatusInformationApi.md#wmsstatusinformation) | **GET** /api/WmsStatusInformation | Return Wms Status Information
*WorkOrderApi* | [**addWorkOrderAttachment**](docs//WorkOrderApi.md#addworkorderattachment) | **POST** /api/WorkOrder/Attachment | Add attachment to work order
*WorkOrderApi* | [**createWorkOrderDetail**](docs//WorkOrderApi.md#createworkorderdetail) | **POST** /api/WorkOrder/Detail | Add a new work order detail to a work order.
*WorkOrderApi* | [**createWorkOrderInERP**](docs//WorkOrderApi.md#createworkorderinerp) | **POST** /api/WorkOrder | Create a new workorder.
*WorkOrderApi* | [**createWorkOrderSchedule**](docs//WorkOrderApi.md#createworkorderschedule) | **POST** /api/WorkOrder/Schedule | Create a new schedule item.
*WorkOrderApi* | [**deleteWorkOrderDetail**](docs//WorkOrderApi.md#deleteworkorderdetail) | **DELETE** /api/WorkOrder/Detail | Delete specified detail from work order.
*WorkOrderApi* | [**deleteWorkOrderSchedule**](docs//WorkOrderApi.md#deleteworkorderschedule) | **DELETE** /api/WorkOrder/Schedule | Delete a schedule item
*WorkOrderApi* | [**editWorkOrderDate**](docs//WorkOrderApi.md#editworkorderdate) | **PUT** /api/WorkOrder/Date | Update work order date
*WorkOrderApi* | [**editWorkOrderDescription**](docs//WorkOrderApi.md#editworkorderdescription) | **PUT** /api/WorkOrder/Description | Update work order description.
*WorkOrderApi* | [**editWorkOrderDetail**](docs//WorkOrderApi.md#editworkorderdetail) | **PUT** /api/WorkOrder/Detail | Edit a work order detail from a work order. Please note: products or costs cannot be replaced. That scenario would require   deleting the existing detail and adding the new product / cost.
*WorkOrderApi* | [**getActiveWorkOrder**](docs//WorkOrderApi.md#getactiveworkorder) | **GET** /api/WorkOrder/ById/{orderId} | Get active work order by id.
*WorkOrderApi* | [**getAllWorkOrdersV112**](docs//WorkOrderApi.md#getallworkordersv112) | **GET** /api/WorkOrder | Get a list of all work orders for specified branch and company (and customer, if specified). BranchId &#x3D; 0 will return work orders for all branches.   Option to retrieve all work orders (default is only active work orders).
*WorkOrderApi* | [**getAllWorkOrdersV112_0**](docs//WorkOrderApi.md#getallworkordersv112_0) | **GET** /api/WorkOrder/{employeeId} | Get a list of all active work orders for specified employee.
*WorkOrderApi* | [**getJobs**](docs//WorkOrderApi.md#getjobs) | **GET** /api/WorkOrder/Job | Get jobs for work order hour
*WorkOrderApi* | [**getSchedule**](docs//WorkOrderApi.md#getschedule) | **GET** /api/WorkOrder/Schedule | Get (work order) schedule items.
*WorkOrderApi* | [**getScheduleById**](docs//WorkOrderApi.md#getschedulebyid) | **GET** /api/WorkOrder/Schedule/{scheduleId} | Get specified work order schedule item.
*WorkOrderApi* | [**getScheduleForEmployee**](docs//WorkOrderApi.md#getscheduleforemployee) | **GET** /api/WorkOrder/Schedule/Employee | Get work order scheduled items for specified employee.
*WorkOrderApi* | [**getScheduleForWorkOrder**](docs//WorkOrderApi.md#getscheduleforworkorder) | **GET** /api/WorkOrder/Schedule/WorkOrder | Get work order scheduled items for specified work order.
*WorkOrderApi* | [**getWorkOrderClasses**](docs//WorkOrderApi.md#getworkorderclasses) | **GET** /api/WorkOrder/Class | Get a list of all workorder classes.
*WorkOrderApi* | [**updateWorkOrderSchedule**](docs//WorkOrderApi.md#updateworkorderschedule) | **PUT** /api/WorkOrder/Schedule | Update an existing schedule item.


## Documentation For Models

 - [AccountInfo](docs//AccountInfo.md)
 - [Address](docs//Address.md)
 - [AddressInformation](docs//AddressInformation.md)
 - [Alternative](docs//Alternative.md)
 - [Amount](docs//Amount.md)
 - [Appointment](docs//Appointment.md)
 - [ArticleGroup](docs//ArticleGroup.md)
 - [AttributeProduct](docs//AttributeProduct.md)
 - [AttributeSet](docs//AttributeSet.md)
 - [AuthorizationRequest](docs//AuthorizationRequest.md)
 - [AuthorizationResult](docs//AuthorizationResult.md)
 - [Branch](docs//Branch.md)
 - [BranchInformation](docs//BranchInformation.md)
 - [Brand](docs//Brand.md)
 - [Budget](docs//Budget.md)
 - [BudgetUsageDetail](docs//BudgetUsageDetail.md)
 - [Category](docs//Category.md)
 - [ChangeOrderRequest](docs//ChangeOrderRequest.md)
 - [CheckedAddress](docs//CheckedAddress.md)
 - [Company](docs//Company.md)
 - [CompanyDetails](docs//CompanyDetails.md)
 - [CompanyInformation](docs//CompanyInformation.md)
 - [ContactInformation](docs//ContactInformation.md)
 - [ContactInformationRequest](docs//ContactInformationRequest.md)
 - [Cost](docs//Cost.md)
 - [CostCentre](docs//CostCentre.md)
 - [CostCentreLevel](docs//CostCentreLevel.md)
 - [CostCentrePerGeneralLedgerAccount](docs//CostCentrePerGeneralLedgerAccount.md)
 - [CostCentreValue](docs//CostCentreValue.md)
 - [CostDetail](docs//CostDetail.md)
 - [CostType](docs//CostType.md)
 - [Country](docs//Country.md)
 - [CreditRestrictionSurcharge](docs//CreditRestrictionSurcharge.md)
 - [CrmAppointment](docs//CrmAppointment.md)
 - [CrmAppointmentRequest](docs//CrmAppointmentRequest.md)
 - [CultureString](docs//CultureString.md)
 - [Currency](docs//Currency.md)
 - [Customer](docs//Customer.md)
 - [CustomerBranche](docs//CustomerBranche.md)
 - [CustomerPriceTier](docs//CustomerPriceTier.md)
 - [CustomerProductReference](docs//CustomerProductReference.md)
 - [CustomerProductReferenceRequest](docs//CustomerProductReferenceRequest.md)
 - [CustomerSpecificProducts](docs//CustomerSpecificProducts.md)
 - [Delivery](docs//Delivery.md)
 - [DeliveryChange](docs//DeliveryChange.md)
 - [DeliveryChangeDetail](docs//DeliveryChangeDetail.md)
 - [DeliveryDaysRequest](docs//DeliveryDaysRequest.md)
 - [DeliveryDetails](docs//DeliveryDetails.md)
 - [DeliveryResult](docs//DeliveryResult.md)
 - [Dimensions](docs//Dimensions.md)
 - [DocumentType](docs//DocumentType.md)
 - [EWSAccount](docs//EWSAccount.md)
 - [Ean](docs//Ean.md)
 - [Employee](docs//Employee.md)
 - [GeneralLedgerAccount](docs//GeneralLedgerAccount.md)
 - [HotlistDetailed](docs//HotlistDetailed.md)
 - [InternalInvoice](docs//InternalInvoice.md)
 - [InternalInvoiceLine](docs//InternalInvoiceLine.md)
 - [Invoice](docs//Invoice.md)
 - [Job](docs//Job.md)
 - [Language](docs//Language.md)
 - [Ledger](docs//Ledger.md)
 - [LedgerJournal](docs//LedgerJournal.md)
 - [LedgerJournalEntry](docs//LedgerJournalEntry.md)
 - [Level](docs//Level.md)
 - [Levels](docs//Levels.md)
 - [LogMessage](docs//LogMessage.md)
 - [Login](docs//Login.md)
 - [MarketSegment](docs//MarketSegment.md)
 - [MatchInternalInvoice](docs//MatchInternalInvoice.md)
 - [MediaInformation](docs//MediaInformation.md)
 - [ModelReturn](docs//ModelReturn.md)
 - [OrderChange](docs//OrderChange.md)
 - [OrderChangeDetail](docs//OrderChangeDetail.md)
 - [OrderChangeResult](docs//OrderChangeResult.md)
 - [OrderLineRequest](docs//OrderLineRequest.md)
 - [OutstandingPeriod](docs//OutstandingPeriod.md)
 - [PayShipMethod](docs//PayShipMethod.md)
 - [PaymentDiscount](docs//PaymentDiscount.md)
 - [PaymentMethod](docs//PaymentMethod.md)
 - [Period](docs//Period.md)
 - [PostOfficeBox](docs//PostOfficeBox.md)
 - [PriceAndStockRequest](docs//PriceAndStockRequest.md)
 - [PriceInformation](docs//PriceInformation.md)
 - [PriceTier](docs//PriceTier.md)
 - [PriceTiers](docs//PriceTiers.md)
 - [Product](docs//Product.md)
 - [ProductAlternative](docs//ProductAlternative.md)
 - [ProductAttribute](docs//ProductAttribute.md)
 - [ProductAttributeOption](docs//ProductAttributeOption.md)
 - [ProductAvailability](docs//ProductAvailability.md)
 - [ProductAvailabilityResult](docs//ProductAvailabilityResult.md)
 - [ProductDeliveryDays](docs//ProductDeliveryDays.md)
 - [ProductDeliveryDaysResult](docs//ProductDeliveryDaysResult.md)
 - [ProductGroup](docs//ProductGroup.md)
 - [ProductIdentification](docs//ProductIdentification.md)
 - [ProductInformation](docs//ProductInformation.md)
 - [ProductQuantity](docs//ProductQuantity.md)
 - [ProductSelectionSize](docs//ProductSelectionSize.md)
 - [ProductSize](docs//ProductSize.md)
 - [ProductSynonym](docs//ProductSynonym.md)
 - [ProductTailoredSize](docs//ProductTailoredSize.md)
 - [Project](docs//Project.md)
 - [ProjectRequest](docs//ProjectRequest.md)
 - [ProjectStatus](docs//ProjectStatus.md)
 - [PromotionalPriceAndStock](docs//PromotionalPriceAndStock.md)
 - [PurchaseInvoice](docs//PurchaseInvoice.md)
 - [PurchaseInvoiceLine](docs//PurchaseInvoiceLine.md)
 - [PurchaseInvoiceOutstandingAmount](docs//PurchaseInvoiceOutstandingAmount.md)
 - [ReceptionMethod](docs//ReceptionMethod.md)
 - [Representative](docs//Representative.md)
 - [RepresentativeType](docs//RepresentativeType.md)
 - [RequestProductPriceList](docs//RequestProductPriceList.md)
 - [ReturnDelivery](docs//ReturnDelivery.md)
 - [ReturnDeliveryOrder](docs//ReturnDeliveryOrder.md)
 - [ReturnDeliveryOrderLine](docs//ReturnDeliveryOrderLine.md)
 - [ReturnDetail](docs//ReturnDetail.md)
 - [ReturnMethod](docs//ReturnMethod.md)
 - [ReturnReason](docs//ReturnReason.md)
 - [ReturnedItem](docs//ReturnedItem.md)
 - [Revenue](docs//Revenue.md)
 - [RevenueItem](docs//RevenueItem.md)
 - [SalesUnit](docs//SalesUnit.md)
 - [Schedule](docs//Schedule.md)
 - [SegmentCustomer](docs//SegmentCustomer.md)
 - [ShippingCostRequest](docs//ShippingCostRequest.md)
 - [ShippingCostResult](docs//ShippingCostResult.md)
 - [ShippingMethod](docs//ShippingMethod.md)
 - [ShippingMethodWebshop](docs//ShippingMethodWebshop.md)
 - [ShopHash](docs//ShopHash.md)
 - [ShopProductHash](docs//ShopProductHash.md)
 - [Special](docs//Special.md)
 - [SpecificProduct](docs//SpecificProduct.md)
 - [Specification](docs//Specification.md)
 - [StockChange](docs//StockChange.md)
 - [StockChangeType](docs//StockChangeType.md)
 - [Store](docs//Store.md)
 - [SupplierGeneralLedgerAccounts](docs//SupplierGeneralLedgerAccounts.md)
 - [SyncAppointments](docs//SyncAppointments.md)
 - [TaxCategory](docs//TaxCategory.md)
 - [UMSAddRight](docs//UMSAddRight.md)
 - [UMSBoolRight](docs//UMSBoolRight.md)
 - [UMSEmployeeRights](docs//UMSEmployeeRights.md)
 - [UMSModifyAddRight](docs//UMSModifyAddRight.md)
 - [UMSModifyRight](docs//UMSModifyRight.md)
 - [UMSRole](docs//UMSRole.md)
 - [UMSStringRight](docs//UMSStringRight.md)
 - [UMSUserMangerRights](docs//UMSUserMangerRights.md)
 - [UmsBudgetDetail](docs//UmsBudgetDetail.md)
 - [UmsBudgetLineLimit](docs//UmsBudgetLineLimit.md)
 - [UmsCustomerProductSelection](docs//UmsCustomerProductSelection.md)
 - [UmsModelsAddress](docs//UmsModelsAddress.md)
 - [UmsModelsAuthorizationSettings](docs//UmsModelsAuthorizationSettings.md)
 - [UmsModelsAuthorizer](docs//UmsModelsAuthorizer.md)
 - [UmsModelsBudgetUsage](docs//UmsModelsBudgetUsage.md)
 - [UmsModelsCategory](docs//UmsModelsCategory.md)
 - [UmsModelsCountry](docs//UmsModelsCountry.md)
 - [UmsModelsEmployee](docs//UmsModelsEmployee.md)
 - [UmsModelsProductSelection](docs//UmsModelsProductSelection.md)
 - [UmsModelsProductSelectionCategoryBudgets](docs//UmsModelsProductSelectionCategoryBudgets.md)
 - [UmsModelsProjectShippingAddress](docs//UmsModelsProjectShippingAddress.md)
 - [UmsModelsProjectV17](docs//UmsModelsProjectV17.md)
 - [UmsModelsShippingAddress](docs//UmsModelsShippingAddress.md)
 - [UmsModelsShippingAddressV17](docs//UmsModelsShippingAddressV17.md)
 - [UmsModelsUmsGroup](docs//UmsModelsUmsGroup.md)
 - [UmsModelsUserSettings](docs//UmsModelsUserSettings.md)
 - [UmsProject](docs//UmsProject.md)
 - [Unit](docs//Unit.md)
 - [V111BudgetOverview](docs//V111BudgetOverview.md)
 - [V111CustomerEmployee](docs//V111CustomerEmployee.md)
 - [V111CustomerEnhanced](docs//V111CustomerEnhanced.md)
 - [V112ProductSizeRequest](docs//V112ProductSizeRequest.md)
 - [V112WorkOrder](docs//V112WorkOrder.md)
 - [V112WorkOrderDetail](docs//V112WorkOrderDetail.md)
 - [V12ContactInformation](docs//V12ContactInformation.md)
 - [V12Customer](docs//V12Customer.md)
 - [V12CustomerEmployee](docs//V12CustomerEmployee.md)
 - [V12CustomerGroup](docs//V12CustomerGroup.md)
 - [V12DeliveryCondition](docs//V12DeliveryCondition.md)
 - [V12Employee](docs//V12Employee.md)
 - [V12Invoice](docs//V12Invoice.md)
 - [V12LedgerJournalEntry](docs//V12LedgerJournalEntry.md)
 - [V12OciCustomField](docs//V12OciCustomField.md)
 - [V12Order](docs//V12Order.md)
 - [V12OrderDetail](docs//V12OrderDetail.md)
 - [V12Package](docs//V12Package.md)
 - [V12PaymentCondition](docs//V12PaymentCondition.md)
 - [V12ProductRelation](docs//V12ProductRelation.md)
 - [V12Rayon](docs//V12Rayon.md)
 - [V12RelatedProduct](docs//V12RelatedProduct.md)
 - [V12Role](docs//V12Role.md)
 - [V12SalesAccount](docs//V12SalesAccount.md)
 - [V12SalesAccountResult](docs//V12SalesAccountResult.md)
 - [V12SalesEmployee](docs//V12SalesEmployee.md)
 - [V12Sector](docs//V12Sector.md)
 - [V12ShippingAddress](docs//V12ShippingAddress.md)
 - [V12ShippingAddressStatus](docs//V12ShippingAddressStatus.md)
 - [V12Title](docs//V12Title.md)
 - [V12Vat](docs//V12Vat.md)
 - [V13BranchAvailabilityResult](docs//V13BranchAvailabilityResult.md)
 - [V13CategoryRequest](docs//V13CategoryRequest.md)
 - [V13ExternalId](docs//V13ExternalId.md)
 - [V13ShopProduct](docs//V13ShopProduct.md)
 - [V13ShopProductData](docs//V13ShopProductData.md)
 - [V14Hotlist](docs//V14Hotlist.md)
 - [V14PriceAndStock](docs//V14PriceAndStock.md)
 - [V15Address](docs//V15Address.md)
 - [V15Supplier](docs//V15Supplier.md)
 - [V19Address](docs//V19Address.md)
 - [V19Country](docs//V19Country.md)
 - [V19Project](docs//V19Project.md)
 - [V19ShippingAddress](docs//V19ShippingAddress.md)
 - [Vat](docs//Vat.md)
 - [WebUser](docs//WebUser.md)
 - [WebshopOrder](docs//WebshopOrder.md)
 - [WebshopProduct](docs//WebshopProduct.md)
 - [WmsStatusInformation](docs//WmsStatusInformation.md)
 - [WorkOrderClass](docs//WorkOrderClass.md)
 - [WorkOrderDateRequest](docs//WorkOrderDateRequest.md)
 - [WorkOrderDescriptionRequest](docs//WorkOrderDescriptionRequest.md)
 - [WorkOrderDetailChangeRequest](docs//WorkOrderDetailChangeRequest.md)
 - [WorkOrderDetailRequest](docs//WorkOrderDetailRequest.md)
 - [WorkOrderHours](docs//WorkOrderHours.md)
 - [WorkOrderProduct](docs//WorkOrderProduct.md)
 - [WorkOrderRequest](docs//WorkOrderRequest.md)
 - [WorkOrderSchedule](docs//WorkOrderSchedule.md)
 - [WorkOrderScheduleRequest](docs//WorkOrderScheduleRequest.md)


## Documentation For Authorization


## Bearer

- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header


## Author




