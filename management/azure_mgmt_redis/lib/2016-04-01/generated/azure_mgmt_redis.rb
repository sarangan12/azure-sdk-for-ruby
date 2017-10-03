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
require '2016-04-01/generated/azure_mgmt_redis/module_definition'
require 'ms_rest_azure'

module Azure::ARM::Redis::Api_2016_04_01
  autoload :Operations,                                         '2016-04-01/generated/azure_mgmt_redis/operations.rb'
  autoload :Redis,                                              '2016-04-01/generated/azure_mgmt_redis/redis.rb'
  autoload :FirewallRules,                                      '2016-04-01/generated/azure_mgmt_redis/firewall_rules.rb'
  autoload :RedisFirewallRuleOperations,                        '2016-04-01/generated/azure_mgmt_redis/redis_firewall_rule_operations.rb'
  autoload :PatchSchedules,                                     '2016-04-01/generated/azure_mgmt_redis/patch_schedules.rb'
  autoload :RedisManagementClient,                              '2016-04-01/generated/azure_mgmt_redis/redis_management_client.rb'

  module Models
    autoload :RedisRegenerateKeyParameters,                       '2016-04-01/generated/azure_mgmt_redis/models/redis_regenerate_key_parameters.rb'
    autoload :Sku,                                                '2016-04-01/generated/azure_mgmt_redis/models/sku.rb'
    autoload :RedisRebootParameters,                              '2016-04-01/generated/azure_mgmt_redis/models/redis_reboot_parameters.rb'
    autoload :ExportRDBParameters,                                '2016-04-01/generated/azure_mgmt_redis/models/export_rdbparameters.rb'
    autoload :RedisUpdateParameters,                              '2016-04-01/generated/azure_mgmt_redis/models/redis_update_parameters.rb'
    autoload :ImportRDBParameters,                                '2016-04-01/generated/azure_mgmt_redis/models/import_rdbparameters.rb'
    autoload :RedisFirewallRule,                                  '2016-04-01/generated/azure_mgmt_redis/models/redis_firewall_rule.rb'
    autoload :ScheduleEntry,                                      '2016-04-01/generated/azure_mgmt_redis/models/schedule_entry.rb'
    autoload :RedisListResult,                                    '2016-04-01/generated/azure_mgmt_redis/models/redis_list_result.rb'
    autoload :RedisPatchSchedule,                                 '2016-04-01/generated/azure_mgmt_redis/models/redis_patch_schedule.rb'
    autoload :OperationListResult,                                '2016-04-01/generated/azure_mgmt_redis/models/operation_list_result.rb'
    autoload :RedisAccessKeys,                                    '2016-04-01/generated/azure_mgmt_redis/models/redis_access_keys.rb'
    autoload :RedisForceRebootResponse,                           '2016-04-01/generated/azure_mgmt_redis/models/redis_force_reboot_response.rb'
    autoload :OperationDisplay,                                   '2016-04-01/generated/azure_mgmt_redis/models/operation_display.rb'
    autoload :RedisFirewallRuleListResult,                        '2016-04-01/generated/azure_mgmt_redis/models/redis_firewall_rule_list_result.rb'
    autoload :Operation,                                          '2016-04-01/generated/azure_mgmt_redis/models/operation.rb'
    autoload :RedisCreateParameters,                              '2016-04-01/generated/azure_mgmt_redis/models/redis_create_parameters.rb'
    autoload :RedisResource,                                      '2016-04-01/generated/azure_mgmt_redis/models/redis_resource.rb'
    autoload :SkuName,                                            '2016-04-01/generated/azure_mgmt_redis/models/sku_name.rb'
    autoload :SkuFamily,                                          '2016-04-01/generated/azure_mgmt_redis/models/sku_family.rb'
    autoload :RedisKeyType,                                       '2016-04-01/generated/azure_mgmt_redis/models/redis_key_type.rb'
    autoload :RebootType,                                         '2016-04-01/generated/azure_mgmt_redis/models/reboot_type.rb'
    autoload :DayOfWeek,                                          '2016-04-01/generated/azure_mgmt_redis/models/day_of_week.rb'
  end
end
