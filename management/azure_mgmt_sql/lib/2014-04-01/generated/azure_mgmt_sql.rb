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
require '2014-04-01/generated/azure_mgmt_sql/module_definition'
require 'ms_rest_azure'

module Azure::SQL::Mgmt::V2014_04_01
  autoload :DatabaseAdvisors,                                   '2014-04-01/generated/azure_mgmt_sql/database_advisors.rb'
  autoload :BackupLongTermRetentionPolicies,                    '2014-04-01/generated/azure_mgmt_sql/backup_long_term_retention_policies.rb'
  autoload :BackupLongTermRetentionVaults,                      '2014-04-01/generated/azure_mgmt_sql/backup_long_term_retention_vaults.rb'
  autoload :RestorePoints,                                      '2014-04-01/generated/azure_mgmt_sql/restore_points.rb'
  autoload :RecoverableDatabases,                               '2014-04-01/generated/azure_mgmt_sql/recoverable_databases.rb'
  autoload :RestorableDroppedDatabases,                         '2014-04-01/generated/azure_mgmt_sql/restorable_dropped_databases.rb'
  autoload :Capabilities,                                       '2014-04-01/generated/azure_mgmt_sql/capabilities.rb'
  autoload :ServerConnectionPolicies,                           '2014-04-01/generated/azure_mgmt_sql/server_connection_policies.rb'
  autoload :DatabaseThreatDetectionPolicies,                    '2014-04-01/generated/azure_mgmt_sql/database_threat_detection_policies.rb'
  autoload :DataMaskingPolicies,                                '2014-04-01/generated/azure_mgmt_sql/data_masking_policies.rb'
  autoload :DataMaskingRules,                                   '2014-04-01/generated/azure_mgmt_sql/data_masking_rules.rb'
  autoload :TransparentDataEncryptionConfigurations,            '2014-04-01/generated/azure_mgmt_sql/transparent_data_encryption_configurations.rb'
  autoload :FirewallRules,                                      '2014-04-01/generated/azure_mgmt_sql/firewall_rules.rb'
  autoload :GeoBackupPolicies,                                  '2014-04-01/generated/azure_mgmt_sql/geo_backup_policies.rb'
  autoload :Databases,                                          '2014-04-01/generated/azure_mgmt_sql/databases.rb'
  autoload :ElasticPools,                                       '2014-04-01/generated/azure_mgmt_sql/elastic_pools.rb'
  autoload :Operations,                                         '2014-04-01/generated/azure_mgmt_sql/operations.rb'
  autoload :Queries,                                            '2014-04-01/generated/azure_mgmt_sql/queries.rb'
  autoload :QueryStatistics,                                    '2014-04-01/generated/azure_mgmt_sql/query_statistics.rb'
  autoload :ReplicationLinks,                                   '2014-04-01/generated/azure_mgmt_sql/replication_links.rb'
  autoload :ServerAzureADAdministrators,                        '2014-04-01/generated/azure_mgmt_sql/server_azure_adadministrators.rb'
  autoload :ServerCommunicationLinks,                           '2014-04-01/generated/azure_mgmt_sql/server_communication_links.rb'
  autoload :Servers,                                            '2014-04-01/generated/azure_mgmt_sql/servers.rb'
  autoload :ServiceObjectives,                                  '2014-04-01/generated/azure_mgmt_sql/service_objectives.rb'
  autoload :ElasticPoolActivities,                              '2014-04-01/generated/azure_mgmt_sql/elastic_pool_activities.rb'
  autoload :ElasticPoolDatabaseActivities,                      '2014-04-01/generated/azure_mgmt_sql/elastic_pool_database_activities.rb'
  autoload :RecommendedElasticPools,                            '2014-04-01/generated/azure_mgmt_sql/recommended_elastic_pools.rb'
  autoload :ServiceTierAdvisors,                                '2014-04-01/generated/azure_mgmt_sql/service_tier_advisors.rb'
  autoload :TransparentDataEncryptions,                         '2014-04-01/generated/azure_mgmt_sql/transparent_data_encryptions.rb'
  autoload :TransparentDataEncryptionActivities,                '2014-04-01/generated/azure_mgmt_sql/transparent_data_encryption_activities.rb'
  autoload :ServerTableAuditingPolicies,                        '2014-04-01/generated/azure_mgmt_sql/server_table_auditing_policies.rb'
  autoload :DatabaseTableAuditingPolicies,                      '2014-04-01/generated/azure_mgmt_sql/database_table_auditing_policies.rb'
  autoload :DatabaseConnectionPolicies,                         '2014-04-01/generated/azure_mgmt_sql/database_connection_policies.rb'
  autoload :ServerUsages,                                       '2014-04-01/generated/azure_mgmt_sql/server_usages.rb'
  autoload :DatabaseUsages,                                     '2014-04-01/generated/azure_mgmt_sql/database_usages.rb'
  autoload :SqlManagementClient,                                '2014-04-01/generated/azure_mgmt_sql/sql_management_client.rb'

  module Models
    autoload :FirewallRuleListResult,                             '2014-04-01/generated/azure_mgmt_sql/models/firewall_rule_list_result.rb'
    autoload :Resource,                                           '2014-04-01/generated/azure_mgmt_sql/models/resource.rb'
    autoload :SloUsageMetric,                                     '2014-04-01/generated/azure_mgmt_sql/models/slo_usage_metric.rb'
    autoload :ServerUsage,                                        '2014-04-01/generated/azure_mgmt_sql/models/server_usage.rb'
    autoload :AdvisorListResult,                                  '2014-04-01/generated/azure_mgmt_sql/models/advisor_list_result.rb'
    autoload :ServerCommunicationLinkListResult,                  '2014-04-01/generated/azure_mgmt_sql/models/server_communication_link_list_result.rb'
    autoload :ElasticPoolDatabaseActivityListResult,              '2014-04-01/generated/azure_mgmt_sql/models/elastic_pool_database_activity_list_result.rb'
    autoload :ServerUsageListResult,                              '2014-04-01/generated/azure_mgmt_sql/models/server_usage_list_result.rb'
    autoload :ElasticPoolListResult,                              '2014-04-01/generated/azure_mgmt_sql/models/elastic_pool_list_result.rb'
    autoload :ServerAdministratorListResult,                      '2014-04-01/generated/azure_mgmt_sql/models/server_administrator_list_result.rb'
    autoload :RecommendedElasticPoolListMetricsResult,            '2014-04-01/generated/azure_mgmt_sql/models/recommended_elastic_pool_list_metrics_result.rb'
    autoload :DatabaseUsage,                                      '2014-04-01/generated/azure_mgmt_sql/models/database_usage.rb'
    autoload :RecommendedElasticPoolListResult,                   '2014-04-01/generated/azure_mgmt_sql/models/recommended_elastic_pool_list_result.rb'
    autoload :ReplicationLinkListResult,                          '2014-04-01/generated/azure_mgmt_sql/models/replication_link_list_result.rb'
    autoload :MaxSizeCapability,                                  '2014-04-01/generated/azure_mgmt_sql/models/max_size_capability.rb'
    autoload :DatabaseUsageListResult,                            '2014-04-01/generated/azure_mgmt_sql/models/database_usage_list_result.rb'
    autoload :EditionCapability,                                  '2014-04-01/generated/azure_mgmt_sql/models/edition_capability.rb'
    autoload :QueryStatisticListResult,                           '2014-04-01/generated/azure_mgmt_sql/models/query_statistic_list_result.rb'
    autoload :ElasticPoolPerDatabaseMaxDtuCapability,             '2014-04-01/generated/azure_mgmt_sql/models/elastic_pool_per_database_max_dtu_capability.rb'
    autoload :RecommendedElasticPoolMetric,                       '2014-04-01/generated/azure_mgmt_sql/models/recommended_elastic_pool_metric.rb'
    autoload :ElasticPoolEditionCapability,                       '2014-04-01/generated/azure_mgmt_sql/models/elastic_pool_edition_capability.rb'
    autoload :TopQueriesListResult,                               '2014-04-01/generated/azure_mgmt_sql/models/top_queries_list_result.rb'
    autoload :LocationCapabilities,                               '2014-04-01/generated/azure_mgmt_sql/models/location_capabilities.rb'
    autoload :TopQueries,                                         '2014-04-01/generated/azure_mgmt_sql/models/top_queries.rb'
    autoload :CheckNameAvailabilityRequest,                       '2014-04-01/generated/azure_mgmt_sql/models/check_name_availability_request.rb'
    autoload :QueryStatistic,                                     '2014-04-01/generated/azure_mgmt_sql/models/query_statistic.rb'
    autoload :DatabaseTableAuditingPolicyListResult,              '2014-04-01/generated/azure_mgmt_sql/models/database_table_auditing_policy_list_result.rb'
    autoload :TableAuditingPolicyProperties,                      '2014-04-01/generated/azure_mgmt_sql/models/table_auditing_policy_properties.rb'
    autoload :ServerListResult,                                   '2014-04-01/generated/azure_mgmt_sql/models/server_list_result.rb'
    autoload :GeoBackupPolicyListResult,                          '2014-04-01/generated/azure_mgmt_sql/models/geo_backup_policy_list_result.rb'
    autoload :OperationImpact,                                    '2014-04-01/generated/azure_mgmt_sql/models/operation_impact.rb'
    autoload :ImportExtensionRequest,                             '2014-04-01/generated/azure_mgmt_sql/models/import_extension_request.rb'
    autoload :ServiceTierAdvisorListResult,                       '2014-04-01/generated/azure_mgmt_sql/models/service_tier_advisor_list_result.rb'
    autoload :TransparentDataEncryptionActivityListResult,        '2014-04-01/generated/azure_mgmt_sql/models/transparent_data_encryption_activity_list_result.rb'
    autoload :ElasticPoolActivityListResult,                      '2014-04-01/generated/azure_mgmt_sql/models/elastic_pool_activity_list_result.rb'
    autoload :RecoverableDatabaseListResult,                      '2014-04-01/generated/azure_mgmt_sql/models/recoverable_database_list_result.rb'
    autoload :ExportRequest,                                      '2014-04-01/generated/azure_mgmt_sql/models/export_request.rb'
    autoload :ServiceObjectiveCapability,                         '2014-04-01/generated/azure_mgmt_sql/models/service_objective_capability.rb'
    autoload :MetricValue,                                        '2014-04-01/generated/azure_mgmt_sql/models/metric_value.rb'
    autoload :ElasticPoolDtuCapability,                           '2014-04-01/generated/azure_mgmt_sql/models/elastic_pool_dtu_capability.rb'
    autoload :MetricName,                                         '2014-04-01/generated/azure_mgmt_sql/models/metric_name.rb'
    autoload :CheckNameAvailabilityResponse,                      '2014-04-01/generated/azure_mgmt_sql/models/check_name_availability_response.rb'
    autoload :Metric,                                             '2014-04-01/generated/azure_mgmt_sql/models/metric.rb'
    autoload :DataMaskingRuleListResult,                          '2014-04-01/generated/azure_mgmt_sql/models/data_masking_rule_list_result.rb'
    autoload :MetricListResult,                                   '2014-04-01/generated/azure_mgmt_sql/models/metric_list_result.rb'
    autoload :ServerTableAuditingPolicyListResult,                '2014-04-01/generated/azure_mgmt_sql/models/server_table_auditing_policy_list_result.rb'
    autoload :MetricAvailability,                                 '2014-04-01/generated/azure_mgmt_sql/models/metric_availability.rb'
    autoload :RestorePointListResult,                             '2014-04-01/generated/azure_mgmt_sql/models/restore_point_list_result.rb'
    autoload :MetricDefinition,                                   '2014-04-01/generated/azure_mgmt_sql/models/metric_definition.rb'
    autoload :ElasticPoolPerDatabaseMinDtuCapability,             '2014-04-01/generated/azure_mgmt_sql/models/elastic_pool_per_database_min_dtu_capability.rb'
    autoload :MetricDefinitionListResult,                         '2014-04-01/generated/azure_mgmt_sql/models/metric_definition_list_result.rb'
    autoload :ServiceObjectiveListResult,                         '2014-04-01/generated/azure_mgmt_sql/models/service_objective_list_result.rb'
    autoload :OperationDisplay,                                   '2014-04-01/generated/azure_mgmt_sql/models/operation_display.rb'
    autoload :DatabaseListResult,                                 '2014-04-01/generated/azure_mgmt_sql/models/database_list_result.rb'
    autoload :Operation,                                          '2014-04-01/generated/azure_mgmt_sql/models/operation.rb'
    autoload :ServerVersionCapability,                            '2014-04-01/generated/azure_mgmt_sql/models/server_version_capability.rb'
    autoload :OperationListResult,                                '2014-04-01/generated/azure_mgmt_sql/models/operation_list_result.rb'
    autoload :RestorableDroppedDatabaseListResult,                '2014-04-01/generated/azure_mgmt_sql/models/restorable_dropped_database_list_result.rb'
    autoload :QueryMetric,                                        '2014-04-01/generated/azure_mgmt_sql/models/query_metric.rb'
    autoload :TransparentDataEncryptionListResult,                '2014-04-01/generated/azure_mgmt_sql/models/transparent_data_encryption_list_result.rb'
    autoload :QueryInterval,                                      '2014-04-01/generated/azure_mgmt_sql/models/query_interval.rb'
    autoload :ProxyResource,                                      '2014-04-01/generated/azure_mgmt_sql/models/proxy_resource.rb'
    autoload :Advisor,                                            '2014-04-01/generated/azure_mgmt_sql/models/advisor.rb'
    autoload :BackupLongTermRetentionPolicy,                      '2014-04-01/generated/azure_mgmt_sql/models/backup_long_term_retention_policy.rb'
    autoload :BackupLongTermRetentionVault,                       '2014-04-01/generated/azure_mgmt_sql/models/backup_long_term_retention_vault.rb'
    autoload :TrackedResource,                                    '2014-04-01/generated/azure_mgmt_sql/models/tracked_resource.rb'
    autoload :RestorePoint,                                       '2014-04-01/generated/azure_mgmt_sql/models/restore_point.rb'
    autoload :RecoverableDatabase,                                '2014-04-01/generated/azure_mgmt_sql/models/recoverable_database.rb'
    autoload :RestorableDroppedDatabase,                          '2014-04-01/generated/azure_mgmt_sql/models/restorable_dropped_database.rb'
    autoload :ServerConnectionPolicy,                             '2014-04-01/generated/azure_mgmt_sql/models/server_connection_policy.rb'
    autoload :DatabaseSecurityAlertPolicy,                        '2014-04-01/generated/azure_mgmt_sql/models/database_security_alert_policy.rb'
    autoload :DataMaskingPolicy,                                  '2014-04-01/generated/azure_mgmt_sql/models/data_masking_policy.rb'
    autoload :DataMaskingRule,                                    '2014-04-01/generated/azure_mgmt_sql/models/data_masking_rule.rb'
    autoload :TransparentDataEncryption,                          '2014-04-01/generated/azure_mgmt_sql/models/transparent_data_encryption.rb'
    autoload :RecommendedIndex,                                   '2014-04-01/generated/azure_mgmt_sql/models/recommended_index.rb'
    autoload :ServiceTierAdvisor,                                 '2014-04-01/generated/azure_mgmt_sql/models/service_tier_advisor.rb'
    autoload :DatabaseUpdate,                                     '2014-04-01/generated/azure_mgmt_sql/models/database_update.rb'
    autoload :ElasticPoolUpdate,                                  '2014-04-01/generated/azure_mgmt_sql/models/elastic_pool_update.rb'
    autoload :Database,                                           '2014-04-01/generated/azure_mgmt_sql/models/database.rb'
    autoload :ElasticPool,                                        '2014-04-01/generated/azure_mgmt_sql/models/elastic_pool.rb'
    autoload :TransparentDataEncryptionActivity,                  '2014-04-01/generated/azure_mgmt_sql/models/transparent_data_encryption_activity.rb'
    autoload :ElasticPoolDatabaseActivity,                        '2014-04-01/generated/azure_mgmt_sql/models/elastic_pool_database_activity.rb'
    autoload :ElasticPoolActivity,                                '2014-04-01/generated/azure_mgmt_sql/models/elastic_pool_activity.rb'
    autoload :RecommendedElasticPool,                             '2014-04-01/generated/azure_mgmt_sql/models/recommended_elastic_pool.rb'
    autoload :FirewallRule,                                       '2014-04-01/generated/azure_mgmt_sql/models/firewall_rule.rb'
    autoload :GeoBackupPolicy,                                    '2014-04-01/generated/azure_mgmt_sql/models/geo_backup_policy.rb'
    autoload :ImportExportResponse,                               '2014-04-01/generated/azure_mgmt_sql/models/import_export_response.rb'
    autoload :ImportRequest,                                      '2014-04-01/generated/azure_mgmt_sql/models/import_request.rb'
    autoload :ReplicationLink,                                    '2014-04-01/generated/azure_mgmt_sql/models/replication_link.rb'
    autoload :ServerAzureADAdministrator,                         '2014-04-01/generated/azure_mgmt_sql/models/server_azure_adadministrator.rb'
    autoload :ServerCommunicationLink,                            '2014-04-01/generated/azure_mgmt_sql/models/server_communication_link.rb'
    autoload :Server,                                             '2014-04-01/generated/azure_mgmt_sql/models/server.rb'
    autoload :ServerUpdate,                                       '2014-04-01/generated/azure_mgmt_sql/models/server_update.rb'
    autoload :ServiceObjective,                                   '2014-04-01/generated/azure_mgmt_sql/models/service_objective.rb'
    autoload :DatabaseConnectionPolicy,                           '2014-04-01/generated/azure_mgmt_sql/models/database_connection_policy.rb'
    autoload :DatabaseTableAuditingPolicy,                        '2014-04-01/generated/azure_mgmt_sql/models/database_table_auditing_policy.rb'
    autoload :ServerTableAuditingPolicy,                          '2014-04-01/generated/azure_mgmt_sql/models/server_table_auditing_policy.rb'
    autoload :AdvisorStatus,                                      '2014-04-01/generated/azure_mgmt_sql/models/advisor_status.rb'
    autoload :AutoExecuteStatus,                                  '2014-04-01/generated/azure_mgmt_sql/models/auto_execute_status.rb'
    autoload :BackupLongTermRetentionPolicyState,                 '2014-04-01/generated/azure_mgmt_sql/models/backup_long_term_retention_policy_state.rb'
    autoload :RestorePointType,                                   '2014-04-01/generated/azure_mgmt_sql/models/restore_point_type.rb'
    autoload :CapabilityStatus,                                   '2014-04-01/generated/azure_mgmt_sql/models/capability_status.rb'
    autoload :MaxSizeUnits,                                       '2014-04-01/generated/azure_mgmt_sql/models/max_size_units.rb'
    autoload :PerformanceLevelUnit,                               '2014-04-01/generated/azure_mgmt_sql/models/performance_level_unit.rb'
    autoload :ServerConnectionType,                               '2014-04-01/generated/azure_mgmt_sql/models/server_connection_type.rb'
    autoload :SecurityAlertPolicyState,                           '2014-04-01/generated/azure_mgmt_sql/models/security_alert_policy_state.rb'
    autoload :SecurityAlertPolicyEmailAccountAdmins,              '2014-04-01/generated/azure_mgmt_sql/models/security_alert_policy_email_account_admins.rb'
    autoload :SecurityAlertPolicyUseServerDefault,                '2014-04-01/generated/azure_mgmt_sql/models/security_alert_policy_use_server_default.rb'
    autoload :DataMaskingState,                                   '2014-04-01/generated/azure_mgmt_sql/models/data_masking_state.rb'
    autoload :DataMaskingRuleState,                               '2014-04-01/generated/azure_mgmt_sql/models/data_masking_rule_state.rb'
    autoload :DataMaskingFunction,                                '2014-04-01/generated/azure_mgmt_sql/models/data_masking_function.rb'
    autoload :TransparentDataEncryptionStatus,                    '2014-04-01/generated/azure_mgmt_sql/models/transparent_data_encryption_status.rb'
    autoload :RecommendedIndexAction,                             '2014-04-01/generated/azure_mgmt_sql/models/recommended_index_action.rb'
    autoload :RecommendedIndexState,                              '2014-04-01/generated/azure_mgmt_sql/models/recommended_index_state.rb'
    autoload :RecommendedIndexType,                               '2014-04-01/generated/azure_mgmt_sql/models/recommended_index_type.rb'
    autoload :ServiceObjectiveName,                               '2014-04-01/generated/azure_mgmt_sql/models/service_objective_name.rb'
    autoload :CreateMode,                                         '2014-04-01/generated/azure_mgmt_sql/models/create_mode.rb'
    autoload :DatabaseEdition,                                    '2014-04-01/generated/azure_mgmt_sql/models/database_edition.rb'
    autoload :ReadScale,                                          '2014-04-01/generated/azure_mgmt_sql/models/read_scale.rb'
    autoload :SampleName,                                         '2014-04-01/generated/azure_mgmt_sql/models/sample_name.rb'
    autoload :ElasticPoolState,                                   '2014-04-01/generated/azure_mgmt_sql/models/elastic_pool_state.rb'
    autoload :ElasticPoolEdition,                                 '2014-04-01/generated/azure_mgmt_sql/models/elastic_pool_edition.rb'
    autoload :TransparentDataEncryptionActivityStatus,            '2014-04-01/generated/azure_mgmt_sql/models/transparent_data_encryption_activity_status.rb'
    autoload :GeoBackupPolicyState,                               '2014-04-01/generated/azure_mgmt_sql/models/geo_backup_policy_state.rb'
    autoload :StorageKeyType,                                     '2014-04-01/generated/azure_mgmt_sql/models/storage_key_type.rb'
    autoload :AuthenticationType,                                 '2014-04-01/generated/azure_mgmt_sql/models/authentication_type.rb'
    autoload :UnitType,                                           '2014-04-01/generated/azure_mgmt_sql/models/unit_type.rb'
    autoload :PrimaryAggregationType,                             '2014-04-01/generated/azure_mgmt_sql/models/primary_aggregation_type.rb'
    autoload :UnitDefinitionType,                                 '2014-04-01/generated/azure_mgmt_sql/models/unit_definition_type.rb'
    autoload :QueryAggregationFunction,                           '2014-04-01/generated/azure_mgmt_sql/models/query_aggregation_function.rb'
    autoload :QueryExecutionType,                                 '2014-04-01/generated/azure_mgmt_sql/models/query_execution_type.rb'
    autoload :QueryObservedMetricType,                            '2014-04-01/generated/azure_mgmt_sql/models/query_observed_metric_type.rb'
    autoload :QueryMetricUnit,                                    '2014-04-01/generated/azure_mgmt_sql/models/query_metric_unit.rb'
    autoload :ReplicationRole,                                    '2014-04-01/generated/azure_mgmt_sql/models/replication_role.rb'
    autoload :ReplicationState,                                   '2014-04-01/generated/azure_mgmt_sql/models/replication_state.rb'
    autoload :ServerVersion,                                      '2014-04-01/generated/azure_mgmt_sql/models/server_version.rb'
    autoload :ServerState,                                        '2014-04-01/generated/azure_mgmt_sql/models/server_state.rb'
    autoload :CheckNameAvailabilityReason,                        '2014-04-01/generated/azure_mgmt_sql/models/check_name_availability_reason.rb'
  end
end
