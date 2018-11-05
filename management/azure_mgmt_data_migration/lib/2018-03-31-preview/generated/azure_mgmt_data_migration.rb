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
require '2018-03-31-preview/generated/azure_mgmt_data_migration/module_definition'
require 'ms_rest_azure'

module Azure::DataMigration::Mgmt::V2018_03_31_preview
  autoload :ResourceSkus,                                       '2018-03-31-preview/generated/azure_mgmt_data_migration/resource_skus.rb'
  autoload :Services,                                           '2018-03-31-preview/generated/azure_mgmt_data_migration/services.rb'
  autoload :Tasks,                                              '2018-03-31-preview/generated/azure_mgmt_data_migration/tasks.rb'
  autoload :Projects,                                           '2018-03-31-preview/generated/azure_mgmt_data_migration/projects.rb'
  autoload :Usages,                                             '2018-03-31-preview/generated/azure_mgmt_data_migration/usages.rb'
  autoload :Operations,                                         '2018-03-31-preview/generated/azure_mgmt_data_migration/operations.rb'
  autoload :DataMigrationServiceClient,                         '2018-03-31-preview/generated/azure_mgmt_data_migration/data_migration_service_client.rb'

  module Models
    autoload :ConnectToTargetSqlDbTaskInput,                      '2018-03-31-preview/generated/azure_mgmt_data_migration/models/connect_to_target_sql_db_task_input.rb'
    autoload :ResourceSku,                                        '2018-03-31-preview/generated/azure_mgmt_data_migration/models/resource_sku.rb'
    autoload :ResourceSkuCapacity,                                '2018-03-31-preview/generated/azure_mgmt_data_migration/models/resource_sku_capacity.rb'
    autoload :ODataError,                                         '2018-03-31-preview/generated/azure_mgmt_data_migration/models/odata_error.rb'
    autoload :ResourceSkuCosts,                                   '2018-03-31-preview/generated/azure_mgmt_data_migration/models/resource_sku_costs.rb'
    autoload :ValidateMigrationInputSqlServerSqlMITaskOutput,     '2018-03-31-preview/generated/azure_mgmt_data_migration/models/validate_migration_input_sql_server_sql_mitask_output.rb'
    autoload :ResourceSkuCapabilities,                            '2018-03-31-preview/generated/azure_mgmt_data_migration/models/resource_sku_capabilities.rb'
    autoload :FileShare,                                          '2018-03-31-preview/generated/azure_mgmt_data_migration/models/file_share.rb'
    autoload :StartMigrationScenarioServerRoleResult,             '2018-03-31-preview/generated/azure_mgmt_data_migration/models/start_migration_scenario_server_role_result.rb'
    autoload :ConnectionInfo,                                     '2018-03-31-preview/generated/azure_mgmt_data_migration/models/connection_info.rb'
    autoload :ResourceSkuRestrictions,                            '2018-03-31-preview/generated/azure_mgmt_data_migration/models/resource_sku_restrictions.rb'
    autoload :ValidateMigrationInputSqlServerSqlMITaskInput,      '2018-03-31-preview/generated/azure_mgmt_data_migration/models/validate_migration_input_sql_server_sql_mitask_input.rb'
    autoload :MigrateSqlServerSqlMITaskOutput,                    '2018-03-31-preview/generated/azure_mgmt_data_migration/models/migrate_sql_server_sql_mitask_output.rb'
    autoload :ValidationError,                                    '2018-03-31-preview/generated/azure_mgmt_data_migration/models/validation_error.rb'
    autoload :DataMigrationServiceStatusResponse,                 '2018-03-31-preview/generated/azure_mgmt_data_migration/models/data_migration_service_status_response.rb'
    autoload :ExecutionStatistics,                                '2018-03-31-preview/generated/azure_mgmt_data_migration/models/execution_statistics.rb'
    autoload :ServiceSkuList,                                     '2018-03-31-preview/generated/azure_mgmt_data_migration/models/service_sku_list.rb'
    autoload :QueryAnalysisValidationResult,                      '2018-03-31-preview/generated/azure_mgmt_data_migration/models/query_analysis_validation_result.rb'
    autoload :DatabaseTable,                                      '2018-03-31-preview/generated/azure_mgmt_data_migration/models/database_table.rb'
    autoload :SchemaComparisonValidationResult,                   '2018-03-31-preview/generated/azure_mgmt_data_migration/models/schema_comparison_validation_result.rb'
    autoload :GetUserTablesSqlTaskOutput,                         '2018-03-31-preview/generated/azure_mgmt_data_migration/models/get_user_tables_sql_task_output.rb'
    autoload :MigrationValidationDatabaseLevelResult,             '2018-03-31-preview/generated/azure_mgmt_data_migration/models/migration_validation_database_level_result.rb'
    autoload :GetUserTablesSqlTaskInput,                          '2018-03-31-preview/generated/azure_mgmt_data_migration/models/get_user_tables_sql_task_input.rb'
    autoload :MigrationValidationResult,                          '2018-03-31-preview/generated/azure_mgmt_data_migration/models/migration_validation_result.rb'
    autoload :AvailableServiceSku,                                '2018-03-31-preview/generated/azure_mgmt_data_migration/models/available_service_sku.rb'
    autoload :DataMigrationError,                                 '2018-03-31-preview/generated/azure_mgmt_data_migration/models/data_migration_error.rb'
    autoload :ConnectToTargetSqlDbTaskOutput,                     '2018-03-31-preview/generated/azure_mgmt_data_migration/models/connect_to_target_sql_db_task_output.rb'
    autoload :DataMigrationProjectMetadata,                       '2018-03-31-preview/generated/azure_mgmt_data_migration/models/data_migration_project_metadata.rb'
    autoload :AvailableServiceSkuCapacity,                        '2018-03-31-preview/generated/azure_mgmt_data_migration/models/available_service_sku_capacity.rb'
    autoload :MigrationTableMetadata,                             '2018-03-31-preview/generated/azure_mgmt_data_migration/models/migration_table_metadata.rb'
    autoload :AvailableServiceSkuSku,                             '2018-03-31-preview/generated/azure_mgmt_data_migration/models/available_service_sku_sku.rb'
    autoload :MigrateSqlServerSqlDbTaskOutput,                    '2018-03-31-preview/generated/azure_mgmt_data_migration/models/migrate_sql_server_sql_db_task_output.rb'
    autoload :ConnectToTargetSqlMITaskOutput,                     '2018-03-31-preview/generated/azure_mgmt_data_migration/models/connect_to_target_sql_mitask_output.rb'
    autoload :MigrationValidationOptions,                         '2018-03-31-preview/generated/azure_mgmt_data_migration/models/migration_validation_options.rb'
    autoload :ConnectToTargetSqlMITaskInput,                      '2018-03-31-preview/generated/azure_mgmt_data_migration/models/connect_to_target_sql_mitask_input.rb'
    autoload :Database,                                           '2018-03-31-preview/generated/azure_mgmt_data_migration/models/database.rb'
    autoload :TaskList,                                           '2018-03-31-preview/generated/azure_mgmt_data_migration/models/task_list.rb'
    autoload :Resource,                                           '2018-03-31-preview/generated/azure_mgmt_data_migration/models/resource.rb'
    autoload :MigrationEligibilityInfo,                           '2018-03-31-preview/generated/azure_mgmt_data_migration/models/migration_eligibility_info.rb'
    autoload :BlobShare,                                          '2018-03-31-preview/generated/azure_mgmt_data_migration/models/blob_share.rb'
    autoload :DataMigrationServiceList,                           '2018-03-31-preview/generated/azure_mgmt_data_migration/models/data_migration_service_list.rb'
    autoload :ProjectList,                                        '2018-03-31-preview/generated/azure_mgmt_data_migration/models/project_list.rb'
    autoload :WaitStatistics,                                     '2018-03-31-preview/generated/azure_mgmt_data_migration/models/wait_statistics.rb'
    autoload :DatabaseFileInfo,                                   '2018-03-31-preview/generated/azure_mgmt_data_migration/models/database_file_info.rb'
    autoload :SchemaComparisonValidationResultType,               '2018-03-31-preview/generated/azure_mgmt_data_migration/models/schema_comparison_validation_result_type.rb'
    autoload :NameAvailabilityResponse,                           '2018-03-31-preview/generated/azure_mgmt_data_migration/models/name_availability_response.rb'
    autoload :MigrationValidationDatabaseSummaryResult,           '2018-03-31-preview/generated/azure_mgmt_data_migration/models/migration_validation_database_summary_result.rb'
    autoload :QuotaList,                                          '2018-03-31-preview/generated/azure_mgmt_data_migration/models/quota_list.rb'
    autoload :DataItemMigrationSummaryResult,                     '2018-03-31-preview/generated/azure_mgmt_data_migration/models/data_item_migration_summary_result.rb'
    autoload :ConnectToSourceSqlServerTaskOutput,                 '2018-03-31-preview/generated/azure_mgmt_data_migration/models/connect_to_source_sql_server_task_output.rb'
    autoload :DatabaseObjectName,                                 '2018-03-31-preview/generated/azure_mgmt_data_migration/models/database_object_name.rb'
    autoload :ConnectToSourceSqlServerTaskInput,                  '2018-03-31-preview/generated/azure_mgmt_data_migration/models/connect_to_source_sql_server_task_input.rb'
    autoload :MigrateSqlServerSqlDbDatabaseInput,                 '2018-03-31-preview/generated/azure_mgmt_data_migration/models/migrate_sql_server_sql_db_database_input.rb'
    autoload :Quota,                                              '2018-03-31-preview/generated/azure_mgmt_data_migration/models/quota.rb'
    autoload :ReportableException,                                '2018-03-31-preview/generated/azure_mgmt_data_migration/models/reportable_exception.rb'
    autoload :ProjectTaskProperties,                              '2018-03-31-preview/generated/azure_mgmt_data_migration/models/project_task_properties.rb'
    autoload :MigrateSqlServerSqlServerDatabaseInput,             '2018-03-31-preview/generated/azure_mgmt_data_migration/models/migrate_sql_server_sql_server_database_input.rb'
    autoload :QuotaName,                                          '2018-03-31-preview/generated/azure_mgmt_data_migration/models/quota_name.rb'
    autoload :DataIntegrityValidationResult,                      '2018-03-31-preview/generated/azure_mgmt_data_migration/models/data_integrity_validation_result.rb'
    autoload :ServiceSku,                                         '2018-03-31-preview/generated/azure_mgmt_data_migration/models/service_sku.rb'
    autoload :MigrationReportResult,                              '2018-03-31-preview/generated/azure_mgmt_data_migration/models/migration_report_result.rb'
    autoload :ServiceOperationList,                               '2018-03-31-preview/generated/azure_mgmt_data_migration/models/service_operation_list.rb'
    autoload :ResourceSkusResult,                                 '2018-03-31-preview/generated/azure_mgmt_data_migration/models/resource_skus_result.rb'
    autoload :NameAvailabilityRequest,                            '2018-03-31-preview/generated/azure_mgmt_data_migration/models/name_availability_request.rb'
    autoload :QueryExecutionResult,                               '2018-03-31-preview/generated/azure_mgmt_data_migration/models/query_execution_result.rb'
    autoload :DatabaseInfo,                                       '2018-03-31-preview/generated/azure_mgmt_data_migration/models/database_info.rb'
    autoload :SqlMigrationTaskInput,                              '2018-03-31-preview/generated/azure_mgmt_data_migration/models/sql_migration_task_input.rb'
    autoload :ServiceOperation,                                   '2018-03-31-preview/generated/azure_mgmt_data_migration/models/service_operation.rb'
    autoload :DatabaseFileInput,                                  '2018-03-31-preview/generated/azure_mgmt_data_migration/models/database_file_input.rb'
    autoload :ApiError,                                           '2018-03-31-preview/generated/azure_mgmt_data_migration/models/api_error.rb'
    autoload :MigrateSqlServerSqlMIDatabaseInput,                 '2018-03-31-preview/generated/azure_mgmt_data_migration/models/migrate_sql_server_sql_midatabase_input.rb'
    autoload :ServiceOperationDisplay,                            '2018-03-31-preview/generated/azure_mgmt_data_migration/models/service_operation_display.rb'
    autoload :TrackedResource,                                    '2018-03-31-preview/generated/azure_mgmt_data_migration/models/tracked_resource.rb'
    autoload :SqlConnectionInfo,                                  '2018-03-31-preview/generated/azure_mgmt_data_migration/models/sql_connection_info.rb'
    autoload :ValidateMigrationInputSqlServerSqlMITaskProperties, '2018-03-31-preview/generated/azure_mgmt_data_migration/models/validate_migration_input_sql_server_sql_mitask_properties.rb'
    autoload :MigrateSqlServerSqlDbTaskOutputError,               '2018-03-31-preview/generated/azure_mgmt_data_migration/models/migrate_sql_server_sql_db_task_output_error.rb'
    autoload :MigrateSqlServerSqlDbTaskOutputTableLevel,          '2018-03-31-preview/generated/azure_mgmt_data_migration/models/migrate_sql_server_sql_db_task_output_table_level.rb'
    autoload :MigrateSqlServerSqlDbTaskOutputDatabaseLevel,       '2018-03-31-preview/generated/azure_mgmt_data_migration/models/migrate_sql_server_sql_db_task_output_database_level.rb'
    autoload :DatabaseSummaryResult,                              '2018-03-31-preview/generated/azure_mgmt_data_migration/models/database_summary_result.rb'
    autoload :MigrateSqlServerSqlDbTaskOutputMigrationLevel,      '2018-03-31-preview/generated/azure_mgmt_data_migration/models/migrate_sql_server_sql_db_task_output_migration_level.rb'
    autoload :MigrateSqlServerSqlDbTaskInput,                     '2018-03-31-preview/generated/azure_mgmt_data_migration/models/migrate_sql_server_sql_db_task_input.rb'
    autoload :MigrateSqlServerSqlDbTaskProperties,                '2018-03-31-preview/generated/azure_mgmt_data_migration/models/migrate_sql_server_sql_db_task_properties.rb'
    autoload :MigrateSqlServerSqlMITaskOutputError,               '2018-03-31-preview/generated/azure_mgmt_data_migration/models/migrate_sql_server_sql_mitask_output_error.rb'
    autoload :MigrateSqlServerSqlMITaskOutputLoginLevel,          '2018-03-31-preview/generated/azure_mgmt_data_migration/models/migrate_sql_server_sql_mitask_output_login_level.rb'
    autoload :MigrateSqlServerSqlMITaskOutputAgentJobLevel,       '2018-03-31-preview/generated/azure_mgmt_data_migration/models/migrate_sql_server_sql_mitask_output_agent_job_level.rb'
    autoload :MigrateSqlServerSqlMITaskOutputDatabaseLevel,       '2018-03-31-preview/generated/azure_mgmt_data_migration/models/migrate_sql_server_sql_mitask_output_database_level.rb'
    autoload :MigrateSqlServerSqlMITaskOutputMigrationLevel,      '2018-03-31-preview/generated/azure_mgmt_data_migration/models/migrate_sql_server_sql_mitask_output_migration_level.rb'
    autoload :MigrateSqlServerSqlMITaskInput,                     '2018-03-31-preview/generated/azure_mgmt_data_migration/models/migrate_sql_server_sql_mitask_input.rb'
    autoload :MigrateSqlServerSqlMITaskProperties,                '2018-03-31-preview/generated/azure_mgmt_data_migration/models/migrate_sql_server_sql_mitask_properties.rb'
    autoload :GetUserTablesSqlTaskProperties,                     '2018-03-31-preview/generated/azure_mgmt_data_migration/models/get_user_tables_sql_task_properties.rb'
    autoload :ConnectToTargetSqlDbTaskProperties,                 '2018-03-31-preview/generated/azure_mgmt_data_migration/models/connect_to_target_sql_db_task_properties.rb'
    autoload :ConnectToTargetSqlMITaskProperties,                 '2018-03-31-preview/generated/azure_mgmt_data_migration/models/connect_to_target_sql_mitask_properties.rb'
    autoload :ConnectToSourceSqlServerTaskOutputAgentJobLevel,    '2018-03-31-preview/generated/azure_mgmt_data_migration/models/connect_to_source_sql_server_task_output_agent_job_level.rb'
    autoload :ConnectToSourceSqlServerTaskOutputLoginLevel,       '2018-03-31-preview/generated/azure_mgmt_data_migration/models/connect_to_source_sql_server_task_output_login_level.rb'
    autoload :ConnectToSourceSqlServerTaskOutputDatabaseLevel,    '2018-03-31-preview/generated/azure_mgmt_data_migration/models/connect_to_source_sql_server_task_output_database_level.rb'
    autoload :ConnectToSourceSqlServerTaskOutputTaskLevel,        '2018-03-31-preview/generated/azure_mgmt_data_migration/models/connect_to_source_sql_server_task_output_task_level.rb'
    autoload :ConnectToSourceSqlServerTaskProperties,             '2018-03-31-preview/generated/azure_mgmt_data_migration/models/connect_to_source_sql_server_task_properties.rb'
    autoload :ProjectTask,                                        '2018-03-31-preview/generated/azure_mgmt_data_migration/models/project_task.rb'
    autoload :DataMigrationService,                               '2018-03-31-preview/generated/azure_mgmt_data_migration/models/data_migration_service.rb'
    autoload :Project,                                            '2018-03-31-preview/generated/azure_mgmt_data_migration/models/project.rb'
    autoload :AuthenticationType,                                 '2018-03-31-preview/generated/azure_mgmt_data_migration/models/authentication_type.rb'
    autoload :ValidationStatus,                                   '2018-03-31-preview/generated/azure_mgmt_data_migration/models/validation_status.rb'
    autoload :Severity,                                           '2018-03-31-preview/generated/azure_mgmt_data_migration/models/severity.rb'
    autoload :UpdateActionType,                                   '2018-03-31-preview/generated/azure_mgmt_data_migration/models/update_action_type.rb'
    autoload :ObjectType,                                         '2018-03-31-preview/generated/azure_mgmt_data_migration/models/object_type.rb'
    autoload :MigrationState,                                     '2018-03-31-preview/generated/azure_mgmt_data_migration/models/migration_state.rb'
    autoload :DatabaseMigrationStage,                             '2018-03-31-preview/generated/azure_mgmt_data_migration/models/database_migration_stage.rb'
    autoload :MigrationStatus,                                    '2018-03-31-preview/generated/azure_mgmt_data_migration/models/migration_status.rb'
    autoload :LoginMigrationStage,                                '2018-03-31-preview/generated/azure_mgmt_data_migration/models/login_migration_stage.rb'
    autoload :LoginType,                                          '2018-03-31-preview/generated/azure_mgmt_data_migration/models/login_type.rb'
    autoload :DatabaseState,                                      '2018-03-31-preview/generated/azure_mgmt_data_migration/models/database_state.rb'
    autoload :DatabaseCompatLevel,                                '2018-03-31-preview/generated/azure_mgmt_data_migration/models/database_compat_level.rb'
    autoload :DatabaseFileType,                                   '2018-03-31-preview/generated/azure_mgmt_data_migration/models/database_file_type.rb'
    autoload :ServerLevelPermissionsGroup,                        '2018-03-31-preview/generated/azure_mgmt_data_migration/models/server_level_permissions_group.rb'
    autoload :TaskState,                                          '2018-03-31-preview/generated/azure_mgmt_data_migration/models/task_state.rb'
    autoload :ServiceProvisioningState,                           '2018-03-31-preview/generated/azure_mgmt_data_migration/models/service_provisioning_state.rb'
    autoload :ProjectTargetPlatform,                              '2018-03-31-preview/generated/azure_mgmt_data_migration/models/project_target_platform.rb'
    autoload :ProjectSourcePlatform,                              '2018-03-31-preview/generated/azure_mgmt_data_migration/models/project_source_platform.rb'
    autoload :ProjectProvisioningState,                           '2018-03-31-preview/generated/azure_mgmt_data_migration/models/project_provisioning_state.rb'
    autoload :NameCheckFailureReason,                             '2018-03-31-preview/generated/azure_mgmt_data_migration/models/name_check_failure_reason.rb'
    autoload :ServiceScalability,                                 '2018-03-31-preview/generated/azure_mgmt_data_migration/models/service_scalability.rb'
    autoload :ResourceSkuRestrictionsType,                        '2018-03-31-preview/generated/azure_mgmt_data_migration/models/resource_sku_restrictions_type.rb'
    autoload :ResourceSkuRestrictionsReasonCode,                  '2018-03-31-preview/generated/azure_mgmt_data_migration/models/resource_sku_restrictions_reason_code.rb'
    autoload :ResourceSkuCapacityScaleType,                       '2018-03-31-preview/generated/azure_mgmt_data_migration/models/resource_sku_capacity_scale_type.rb'
    autoload :ErrorType,                                          '2018-03-31-preview/generated/azure_mgmt_data_migration/models/error_type.rb'
  end
end
