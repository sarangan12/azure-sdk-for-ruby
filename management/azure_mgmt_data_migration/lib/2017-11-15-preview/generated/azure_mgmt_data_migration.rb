# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

require 'uri'
require 'cgi'
require 'date'
require 'json'
require 'base64'
require 'erb'
require 'securerandom'
require 'time'
require 'timeliness'
require 'faraday'
require 'faraday-cookie_jar'
require 'concurrent'
require 'ms_rest'
require '2017-11-15-preview/generated/azure_mgmt_data_migration/module_definition'
require 'ms_rest_azure'

module Azure::DataMigration::Mgmt::V2017_11_15_preview
  autoload :ResourceSkus,                                       '2017-11-15-preview/generated/azure_mgmt_data_migration/resource_skus.rb'
  autoload :Services,                                           '2017-11-15-preview/generated/azure_mgmt_data_migration/services.rb'
  autoload :Tasks,                                              '2017-11-15-preview/generated/azure_mgmt_data_migration/tasks.rb'
  autoload :Projects,                                           '2017-11-15-preview/generated/azure_mgmt_data_migration/projects.rb'
  autoload :Usages,                                             '2017-11-15-preview/generated/azure_mgmt_data_migration/usages.rb'
  autoload :Operations,                                         '2017-11-15-preview/generated/azure_mgmt_data_migration/operations.rb'
  autoload :DataMigrationServiceClient,                         '2017-11-15-preview/generated/azure_mgmt_data_migration/data_migration_service_client.rb'

  module Models
    autoload :ConnectToTargetSqlDbTaskInput,                      '2017-11-15-preview/generated/azure_mgmt_data_migration/models/connect_to_target_sql_db_task_input.rb'
    autoload :DatabaseObjectName,                                 '2017-11-15-preview/generated/azure_mgmt_data_migration/models/database_object_name.rb'
    autoload :Resource,                                           '2017-11-15-preview/generated/azure_mgmt_data_migration/models/resource.rb'
    autoload :DatabaseFileInfo,                                   '2017-11-15-preview/generated/azure_mgmt_data_migration/models/database_file_info.rb'
    autoload :ValidationError,                                    '2017-11-15-preview/generated/azure_mgmt_data_migration/models/validation_error.rb'
    autoload :Database,                                           '2017-11-15-preview/generated/azure_mgmt_data_migration/models/database.rb'
    autoload :ExecutionStatistics,                                '2017-11-15-preview/generated/azure_mgmt_data_migration/models/execution_statistics.rb'
    autoload :QueryAnalysisValidationResult,                      '2017-11-15-preview/generated/azure_mgmt_data_migration/models/query_analysis_validation_result.rb'
    autoload :ConnectToSourceSqlServerTaskOutput,                 '2017-11-15-preview/generated/azure_mgmt_data_migration/models/connect_to_source_sql_server_task_output.rb'
    autoload :SchemaComparisonValidationResult,                   '2017-11-15-preview/generated/azure_mgmt_data_migration/models/schema_comparison_validation_result.rb'
    autoload :ConnectToSourceSqlServerTaskInput,                  '2017-11-15-preview/generated/azure_mgmt_data_migration/models/connect_to_source_sql_server_task_input.rb'
    autoload :MigrationValidationDatabaseLevelResult,             '2017-11-15-preview/generated/azure_mgmt_data_migration/models/migration_validation_database_level_result.rb'
    autoload :DatabaseFileInput,                                  '2017-11-15-preview/generated/azure_mgmt_data_migration/models/database_file_input.rb'
    autoload :MigrationValidationResult,                          '2017-11-15-preview/generated/azure_mgmt_data_migration/models/migration_validation_result.rb'
    autoload :ProjectTaskProperties,                              '2017-11-15-preview/generated/azure_mgmt_data_migration/models/project_task_properties.rb'
    autoload :SchemaComparisonValidationResultType,               '2017-11-15-preview/generated/azure_mgmt_data_migration/models/schema_comparison_validation_result_type.rb'
    autoload :ResourceSkusResult,                                 '2017-11-15-preview/generated/azure_mgmt_data_migration/models/resource_skus_result.rb'
    autoload :DataIntegrityValidationResult,                      '2017-11-15-preview/generated/azure_mgmt_data_migration/models/data_integrity_validation_result.rb'
    autoload :ResourceSku,                                        '2017-11-15-preview/generated/azure_mgmt_data_migration/models/resource_sku.rb'
    autoload :MigrationValidationDatabaseSummaryResult,           '2017-11-15-preview/generated/azure_mgmt_data_migration/models/migration_validation_database_summary_result.rb'
    autoload :ResourceSkuCapacity,                                '2017-11-15-preview/generated/azure_mgmt_data_migration/models/resource_sku_capacity.rb'
    autoload :ReportableException,                                '2017-11-15-preview/generated/azure_mgmt_data_migration/models/reportable_exception.rb'
    autoload :MigrateSqlServerSqlDbTaskOutput,                    '2017-11-15-preview/generated/azure_mgmt_data_migration/models/migrate_sql_server_sql_db_task_output.rb'
    autoload :AvailableServiceSku,                                '2017-11-15-preview/generated/azure_mgmt_data_migration/models/available_service_sku.rb'
    autoload :ResourceSkuCapabilities,                            '2017-11-15-preview/generated/azure_mgmt_data_migration/models/resource_sku_capabilities.rb'
    autoload :DataMigrationError,                                 '2017-11-15-preview/generated/azure_mgmt_data_migration/models/data_migration_error.rb'
    autoload :MigrationValidationOptions,                         '2017-11-15-preview/generated/azure_mgmt_data_migration/models/migration_validation_options.rb'
    autoload :ServiceSku,                                         '2017-11-15-preview/generated/azure_mgmt_data_migration/models/service_sku.rb'
    autoload :ResourceSkuRestrictions,                            '2017-11-15-preview/generated/azure_mgmt_data_migration/models/resource_sku_restrictions.rb'
    autoload :DataMigrationProjectMetadata,                       '2017-11-15-preview/generated/azure_mgmt_data_migration/models/data_migration_project_metadata.rb'
    autoload :DatabaseTable,                                      '2017-11-15-preview/generated/azure_mgmt_data_migration/models/database_table.rb'
    autoload :NameAvailabilityRequest,                            '2017-11-15-preview/generated/azure_mgmt_data_migration/models/name_availability_request.rb'
    autoload :GetUserTablesSqlTaskInput,                          '2017-11-15-preview/generated/azure_mgmt_data_migration/models/get_user_tables_sql_task_input.rb'
    autoload :DatabaseInfo,                                       '2017-11-15-preview/generated/azure_mgmt_data_migration/models/database_info.rb'
    autoload :ConnectToTargetSqlDbTaskOutput,                     '2017-11-15-preview/generated/azure_mgmt_data_migration/models/connect_to_target_sql_db_task_output.rb'
    autoload :MigrationTableMetadata,                             '2017-11-15-preview/generated/azure_mgmt_data_migration/models/migration_table_metadata.rb'
    autoload :ODataError,                                         '2017-11-15-preview/generated/azure_mgmt_data_migration/models/odata_error.rb'
    autoload :ApiError,                                           '2017-11-15-preview/generated/azure_mgmt_data_migration/models/api_error.rb'
    autoload :QueryExecutionResult,                               '2017-11-15-preview/generated/azure_mgmt_data_migration/models/query_execution_result.rb'
    autoload :ServiceOperationDisplay,                            '2017-11-15-preview/generated/azure_mgmt_data_migration/models/service_operation_display.rb'
    autoload :MigrationReportResult,                              '2017-11-15-preview/generated/azure_mgmt_data_migration/models/migration_report_result.rb'
    autoload :ServiceOperation,                                   '2017-11-15-preview/generated/azure_mgmt_data_migration/models/service_operation.rb'
    autoload :ConnectionInfo,                                     '2017-11-15-preview/generated/azure_mgmt_data_migration/models/connection_info.rb'
    autoload :ServiceOperationList,                               '2017-11-15-preview/generated/azure_mgmt_data_migration/models/service_operation_list.rb'
    autoload :MigrateSqlServerSqlDbDatabaseInput,                 '2017-11-15-preview/generated/azure_mgmt_data_migration/models/migrate_sql_server_sql_db_database_input.rb'
    autoload :QuotaName,                                          '2017-11-15-preview/generated/azure_mgmt_data_migration/models/quota_name.rb'
    autoload :GetUserTablesSqlTaskOutput,                         '2017-11-15-preview/generated/azure_mgmt_data_migration/models/get_user_tables_sql_task_output.rb'
    autoload :Quota,                                              '2017-11-15-preview/generated/azure_mgmt_data_migration/models/quota.rb'
    autoload :AvailableServiceSkuCapacity,                        '2017-11-15-preview/generated/azure_mgmt_data_migration/models/available_service_sku_capacity.rb'
    autoload :WaitStatistics,                                     '2017-11-15-preview/generated/azure_mgmt_data_migration/models/wait_statistics.rb'
    autoload :QuotaList,                                          '2017-11-15-preview/generated/azure_mgmt_data_migration/models/quota_list.rb'
    autoload :ResourceSkuCosts,                                   '2017-11-15-preview/generated/azure_mgmt_data_migration/models/resource_sku_costs.rb'
    autoload :NameAvailabilityResponse,                           '2017-11-15-preview/generated/azure_mgmt_data_migration/models/name_availability_response.rb'
    autoload :DataMigrationServiceStatusResponse,                 '2017-11-15-preview/generated/azure_mgmt_data_migration/models/data_migration_service_status_response.rb'
    autoload :ProjectList,                                        '2017-11-15-preview/generated/azure_mgmt_data_migration/models/project_list.rb'
    autoload :DataItemMigrationSummaryResult,                     '2017-11-15-preview/generated/azure_mgmt_data_migration/models/data_item_migration_summary_result.rb'
    autoload :DataMigrationServiceList,                           '2017-11-15-preview/generated/azure_mgmt_data_migration/models/data_migration_service_list.rb'
    autoload :ServiceSkuList,                                     '2017-11-15-preview/generated/azure_mgmt_data_migration/models/service_sku_list.rb'
    autoload :TaskList,                                           '2017-11-15-preview/generated/azure_mgmt_data_migration/models/task_list.rb'
    autoload :SqlMigrationTaskInput,                              '2017-11-15-preview/generated/azure_mgmt_data_migration/models/sql_migration_task_input.rb'
    autoload :AvailableServiceSkuSku,                             '2017-11-15-preview/generated/azure_mgmt_data_migration/models/available_service_sku_sku.rb'
    autoload :TrackedResource,                                    '2017-11-15-preview/generated/azure_mgmt_data_migration/models/tracked_resource.rb'
    autoload :MigrateSqlServerSqlDbTaskOutputError,               '2017-11-15-preview/generated/azure_mgmt_data_migration/models/migrate_sql_server_sql_db_task_output_error.rb'
    autoload :MigrateSqlServerSqlDbTaskOutputTableLevel,          '2017-11-15-preview/generated/azure_mgmt_data_migration/models/migrate_sql_server_sql_db_task_output_table_level.rb'
    autoload :MigrateSqlServerSqlDbTaskOutputDatabaseLevel,       '2017-11-15-preview/generated/azure_mgmt_data_migration/models/migrate_sql_server_sql_db_task_output_database_level.rb'
    autoload :DatabaseSummaryResult,                              '2017-11-15-preview/generated/azure_mgmt_data_migration/models/database_summary_result.rb'
    autoload :MigrateSqlServerSqlDbTaskOutputMigrationLevel,      '2017-11-15-preview/generated/azure_mgmt_data_migration/models/migrate_sql_server_sql_db_task_output_migration_level.rb'
    autoload :SqlConnectionInfo,                                  '2017-11-15-preview/generated/azure_mgmt_data_migration/models/sql_connection_info.rb'
    autoload :MigrateSqlServerSqlDbTaskInput,                     '2017-11-15-preview/generated/azure_mgmt_data_migration/models/migrate_sql_server_sql_db_task_input.rb'
    autoload :MigrateSqlServerSqlDbTaskProperties,                '2017-11-15-preview/generated/azure_mgmt_data_migration/models/migrate_sql_server_sql_db_task_properties.rb'
    autoload :GetUserTablesSqlTaskProperties,                     '2017-11-15-preview/generated/azure_mgmt_data_migration/models/get_user_tables_sql_task_properties.rb'
    autoload :ConnectToTargetSqlDbTaskProperties,                 '2017-11-15-preview/generated/azure_mgmt_data_migration/models/connect_to_target_sql_db_task_properties.rb'
    autoload :ConnectToSourceSqlServerTaskOutputDatabaseLevel,    '2017-11-15-preview/generated/azure_mgmt_data_migration/models/connect_to_source_sql_server_task_output_database_level.rb'
    autoload :ConnectToSourceSqlServerTaskOutputTaskLevel,        '2017-11-15-preview/generated/azure_mgmt_data_migration/models/connect_to_source_sql_server_task_output_task_level.rb'
    autoload :ConnectToSourceSqlServerTaskProperties,             '2017-11-15-preview/generated/azure_mgmt_data_migration/models/connect_to_source_sql_server_task_properties.rb'
    autoload :ProjectTask,                                        '2017-11-15-preview/generated/azure_mgmt_data_migration/models/project_task.rb'
    autoload :DataMigrationService,                               '2017-11-15-preview/generated/azure_mgmt_data_migration/models/data_migration_service.rb'
    autoload :Project,                                            '2017-11-15-preview/generated/azure_mgmt_data_migration/models/project.rb'
    autoload :ValidationStatus,                                   '2017-11-15-preview/generated/azure_mgmt_data_migration/models/validation_status.rb'
    autoload :Severity,                                           '2017-11-15-preview/generated/azure_mgmt_data_migration/models/severity.rb'
    autoload :UpdateActionType,                                   '2017-11-15-preview/generated/azure_mgmt_data_migration/models/update_action_type.rb'
    autoload :ObjectType,                                         '2017-11-15-preview/generated/azure_mgmt_data_migration/models/object_type.rb'
    autoload :MigrationState,                                     '2017-11-15-preview/generated/azure_mgmt_data_migration/models/migration_state.rb'
    autoload :DatabaseMigrationStage,                             '2017-11-15-preview/generated/azure_mgmt_data_migration/models/database_migration_stage.rb'
    autoload :MigrationStatus,                                    '2017-11-15-preview/generated/azure_mgmt_data_migration/models/migration_status.rb'
    autoload :AuthenticationType,                                 '2017-11-15-preview/generated/azure_mgmt_data_migration/models/authentication_type.rb'
    autoload :DatabaseState,                                      '2017-11-15-preview/generated/azure_mgmt_data_migration/models/database_state.rb'
    autoload :DatabaseCompatLevel,                                '2017-11-15-preview/generated/azure_mgmt_data_migration/models/database_compat_level.rb'
    autoload :DatabaseFileType,                                   '2017-11-15-preview/generated/azure_mgmt_data_migration/models/database_file_type.rb'
    autoload :ServerLevelPermissionsGroup,                        '2017-11-15-preview/generated/azure_mgmt_data_migration/models/server_level_permissions_group.rb'
    autoload :TaskState,                                          '2017-11-15-preview/generated/azure_mgmt_data_migration/models/task_state.rb'
    autoload :ServiceProvisioningState,                           '2017-11-15-preview/generated/azure_mgmt_data_migration/models/service_provisioning_state.rb'
    autoload :ProjectTargetPlatform,                              '2017-11-15-preview/generated/azure_mgmt_data_migration/models/project_target_platform.rb'
    autoload :ProjectSourcePlatform,                              '2017-11-15-preview/generated/azure_mgmt_data_migration/models/project_source_platform.rb'
    autoload :ProjectProvisioningState,                           '2017-11-15-preview/generated/azure_mgmt_data_migration/models/project_provisioning_state.rb'
    autoload :NameCheckFailureReason,                             '2017-11-15-preview/generated/azure_mgmt_data_migration/models/name_check_failure_reason.rb'
    autoload :ServiceScalability,                                 '2017-11-15-preview/generated/azure_mgmt_data_migration/models/service_scalability.rb'
    autoload :ResourceSkuRestrictionsType,                        '2017-11-15-preview/generated/azure_mgmt_data_migration/models/resource_sku_restrictions_type.rb'
    autoload :ResourceSkuRestrictionsReasonCode,                  '2017-11-15-preview/generated/azure_mgmt_data_migration/models/resource_sku_restrictions_reason_code.rb'
    autoload :ResourceSkuCapacityScaleType,                       '2017-11-15-preview/generated/azure_mgmt_data_migration/models/resource_sku_capacity_scale_type.rb'
    autoload :ErrorType,                                          '2017-11-15-preview/generated/azure_mgmt_data_migration/models/error_type.rb'
  end
end
