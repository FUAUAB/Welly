library swagger.api;

import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart';
import 'package:http/io_client.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';

part 'api/account_api.dart';
part 'api/address_api.dart';
part 'api/appointment_api.dart';
part 'api/attachment_api.dart';
part 'api/branch_api.dart';
part 'api/budget_api.dart';
part 'api/company_api.dart';
part 'api/cost_centre_api.dart';
part 'api/cost_type_api.dart';
part 'api/country_api.dart';
part 'api/crm_api.dart';
part 'api/currency_api.dart';
part 'api/customer_api.dart';
part 'api/delivery_api.dart';
part 'api/document_type_api.dart';
part 'api/employee_api.dart';
part 'api/hotlist_api.dart';
part 'api/internal_invoice_api.dart';
part 'api/invoice_api.dart';
part 'api/language_api.dart';
part 'api/ledger_api.dart';
part 'api/logging_api.dart';
part 'api/market_segment_api.dart';
part 'api/media_api.dart';
part 'api/order_api.dart';
part 'api/partner_api.dart';
part 'api/period_api.dart';
part 'api/product_api.dart';
part 'api/product_selection_api.dart';
part 'api/project_api.dart';
part 'api/purchase_invoice_api.dart';
part 'api/rayon_api.dart';
part 'api/representative_api.dart';
part 'api/return_api.dart';
part 'api/return_reason_api.dart';
part 'api/revenue_api.dart';
part 'api/sales_account_api.dart';
part 'api/sector_api.dart';
part 'api/shipping_api.dart';
part 'api/stock_api.dart';
part 'api/supplier_api.dart';
part 'api/tax_categories_api.dart';
part 'api/ums_authorizer_api.dart';
part 'api/unit_api.dart';
part 'api/web_user_api.dart';
part 'api/webshop_api.dart';
part 'api/wms_status_information_api.dart';
part 'api/work_order_api.dart';

part 'model/account_info.dart';
part 'model/address.dart';
part 'model/address_information.dart';
part 'model/alternative.dart';
part 'model/amount.dart';
part 'model/appointment.dart';
part 'model/article_group.dart';
part 'model/attached_file.dart';
part 'model/attribute_product.dart';
part 'model/attribute_set.dart';
part 'model/authorization_request.dart';
part 'model/authorization_result.dart';
part 'model/branch.dart';
part 'model/branch_information.dart';
part 'model/brand.dart';
part 'model/budget.dart';
part 'model/budget_usage_detail.dart';
part 'model/category.dart';
part 'model/category_simple.dart';
part 'model/change_order_request.dart';
part 'model/checked_address.dart';
part 'model/company.dart';
part 'model/company_details.dart';
part 'model/company_information.dart';
part 'model/component.dart';
part 'model/composition.dart';
part 'model/contact_information.dart';
part 'model/contact_information_request.dart';
part 'model/cost.dart';
part 'model/cost_centre.dart';
part 'model/cost_centre_level.dart';
part 'model/cost_centre_per_general_ledger_account.dart';
part 'model/cost_centre_value.dart';
part 'model/cost_detail.dart';
part 'model/cost_type.dart';
part 'model/country.dart';
part 'model/credit_restriction_surcharge.dart';
part 'model/crm_activity.dart';
part 'model/crm_appointment.dart';
part 'model/crm_appointment_request.dart';
part 'model/culture_string.dart';
part 'model/currency.dart';
part 'model/customer.dart';
part 'model/customer_branche.dart';
part 'model/customer_price_tier.dart';
part 'model/customer_product_reference.dart';
part 'model/customer_product_reference_request.dart';
part 'model/customer_revenue.dart';
part 'model/customer_specific_products.dart';
part 'model/delivery.dart';
part 'model/delivery_change.dart';
part 'model/delivery_change_detail.dart';
part 'model/delivery_days_request.dart';
part 'model/delivery_details.dart';
part 'model/delivery_result.dart';
part 'model/dimensions.dart';
part 'model/document_type.dart';
part 'model/ews_account.dart';
part 'model/ean.dart';
part 'model/employee.dart';
part 'model/general_ledger_account.dart';
part 'model/hotlist_detailed.dart';
part 'model/internal_invoice.dart';
part 'model/internal_invoice_line.dart';
part 'model/invoice.dart';
part 'model/job.dart';
part 'model/language.dart';
part 'model/ledger.dart';
part 'model/ledger_journal.dart';
part 'model/ledger_journal_entry.dart';
part 'model/level.dart';
part 'model/levels.dart';
part 'model/log_message.dart';
part 'model/login.dart';
part 'model/market_segment.dart';
part 'model/match_internal_invoice.dart';
part 'model/media_information.dart';
part 'model/model_return.dart';
part 'model/order_change.dart';
part 'model/order_change_detail.dart';
part 'model/order_change_result.dart';
part 'model/order_line_request.dart';
part 'model/outstanding_period.dart';
part 'model/pay_ship_method.dart';
part 'model/payment_discount.dart';
part 'model/payment_method.dart';
part 'model/period.dart';
part 'model/post_office_box.dart';
part 'model/price_and_stock_request.dart';
part 'model/price_information.dart';
part 'model/price_tier.dart';
part 'model/price_tiers.dart';
part 'model/product.dart';
part 'model/product_alternative.dart';
part 'model/product_attribute.dart';
part 'model/product_attribute_option.dart';
part 'model/product_availability.dart';
part 'model/product_availability_result.dart';
part 'model/product_delivery_days.dart';
part 'model/product_delivery_days_result.dart';
part 'model/product_group.dart';
part 'model/product_identification.dart';
part 'model/product_information.dart';
part 'model/product_quantity.dart';
part 'model/product_selection_size.dart';
part 'model/product_size.dart';
part 'model/product_synonym.dart';
part 'model/product_tailored_size.dart';
part 'model/project.dart';
part 'model/project_request.dart';
part 'model/project_status.dart';
part 'model/promotional_price_and_stock.dart';
part 'model/purchase_invoice.dart';
part 'model/purchase_invoice_line.dart';
part 'model/purchase_invoice_outstanding_amount.dart';
part 'model/reception_method.dart';
part 'model/representative.dart';
part 'model/representative_type.dart';
part 'model/request_product_price_list.dart';
part 'model/return_delivery.dart';
part 'model/return_delivery_order.dart';
part 'model/return_delivery_order_line.dart';
part 'model/return_detail.dart';
part 'model/return_method.dart';
part 'model/return_reason.dart';
part 'model/returned_item.dart';
part 'model/revenue.dart';
part 'model/revenue_item.dart';
part 'model/sales_unit.dart';
part 'model/schedule.dart';
part 'model/segment_customer.dart';
part 'model/shipping_cost_request.dart';
part 'model/shipping_cost_result.dart';
part 'model/shipping_method.dart';
part 'model/shipping_method_webshop.dart';
part 'model/shop_hash.dart';
part 'model/shop_product_hash.dart';
part 'model/special.dart';
part 'model/specific_product.dart';
part 'model/specification.dart';
part 'model/stock_change.dart';
part 'model/stock_change_type.dart';
part 'model/store.dart';
part 'model/supplier_general_ledger_accounts.dart';
part 'model/sync_appointments.dart';
part 'model/tax_category.dart';
part 'model/ums_add_right.dart';
part 'model/ums_bool_right.dart';
part 'model/ums_employee_rights.dart';
part 'model/ums_modify_add_right.dart';
part 'model/ums_modify_right.dart';
part 'model/ums_role.dart';
part 'model/ums_string_right.dart';
part 'model/ums_user_manger_rights.dart';
part 'model/ums_budget_detail.dart';
part 'model/ums_budget_line_limit.dart';
part 'model/ums_customer_product_selection.dart';
part 'model/ums_models_address.dart';
part 'model/ums_models_authorization_settings.dart';
part 'model/ums_models_authorizer.dart';
part 'model/ums_models_budget_usage.dart';
part 'model/ums_models_category.dart';
part 'model/ums_models_country.dart';
part 'model/ums_models_employee.dart';
part 'model/ums_models_product_selection.dart';
part 'model/ums_models_product_selection_category_budgets.dart';
part 'model/ums_models_project_shipping_address.dart';
part 'model/ums_models_project_v17.dart';
part 'model/ums_models_shipping_address.dart';
part 'model/ums_models_shipping_address_v17.dart';
part 'model/ums_models_ums_group.dart';
part 'model/ums_models_user_settings.dart';
part 'model/ums_project.dart';
part 'model/unit.dart';
part 'model/v111_budget_overview.dart';
part 'model/v111_customer_employee.dart';
part 'model/v111_customer_enhanced.dart';
part 'model/v112_product_size_request.dart';
part 'model/v112_work_order.dart';
part 'model/v112_work_order_detail.dart';
part 'model/v12_contact_information.dart';
part 'model/v12_customer.dart';
part 'model/v12_customer_employee.dart';
part 'model/v12_customer_group.dart';
part 'model/v12_delivery_condition.dart';
part 'model/v12_employee.dart';
part 'model/v12_invoice.dart';
part 'model/v12_ledger_journal_entry.dart';
part 'model/v12_oci_custom_field.dart';
part 'model/v12_order.dart';
part 'model/v12_order_detail.dart';
part 'model/v12_package.dart';
part 'model/v12_payment_condition.dart';
part 'model/v12_product_relation.dart';
part 'model/v12_rayon.dart';
part 'model/v12_related_product.dart';
part 'model/v12_role.dart';
part 'model/v12_sales_account.dart';
part 'model/v12_sales_account_result.dart';
part 'model/v12_sales_employee.dart';
part 'model/v12_sector.dart';
part 'model/v12_shipping_address.dart';
part 'model/v12_shipping_address_status.dart';
part 'model/v12_title.dart';
part 'model/v12_vat.dart';
part 'model/v13_branch_availability_result.dart';
part 'model/v13_category_request.dart';
part 'model/v13_external_id.dart';
part 'model/v13_shop_product.dart';
part 'model/v13_shop_product_data.dart';
part 'model/v14_hotlist.dart';
part 'model/v14_price_and_stock.dart';
part 'model/v15_address.dart';
part 'model/v15_supplier.dart';
part 'model/v19_address.dart';
part 'model/v19_country.dart';
part 'model/v19_project.dart';
part 'model/v19_shipping_address.dart';
part 'model/vat.dart';
part 'model/web_user.dart';
part 'model/webshop_order.dart';
part 'model/webshop_product.dart';
part 'model/wms_status_information.dart';
part 'model/work_order_class.dart';
part 'model/work_order_date_request.dart';
part 'model/work_order_description_request.dart';
part 'model/work_order_detail_change_request.dart';
part 'model/work_order_detail_request.dart';
part 'model/work_order_hours.dart';
part 'model/work_order_product.dart';
part 'model/work_order_request.dart';
part 'model/work_order_schedule.dart';
part 'model/work_order_schedule_request.dart';

ApiClient defaultApiClient = new ApiClient();
