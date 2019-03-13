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
require '2019-03-01/generated/azure_mgmt_monitor/module_definition'
require 'ms_rest_azure'

module Azure::Monitor::Mgmt::V2019_03_01
  autoload :ActionGroups,                                       '2019-03-01/generated/azure_mgmt_monitor/action_groups.rb'
  autoload :MonitorManagementClient,                            '2019-03-01/generated/azure_mgmt_monitor/monitor_management_client.rb'

  module Models
    autoload :LogicAppReceiver,                                   '2019-03-01/generated/azure_mgmt_monitor/models/logic_app_receiver.rb'
    autoload :Resource,                                           '2019-03-01/generated/azure_mgmt_monitor/models/resource.rb'
    autoload :AzureFunctionReceiver,                              '2019-03-01/generated/azure_mgmt_monitor/models/azure_function_receiver.rb'
    autoload :SmsReceiver,                                        '2019-03-01/generated/azure_mgmt_monitor/models/sms_receiver.rb'
    autoload :ArmRoleReceiver,                                    '2019-03-01/generated/azure_mgmt_monitor/models/arm_role_receiver.rb'
    autoload :ItsmReceiver,                                       '2019-03-01/generated/azure_mgmt_monitor/models/itsm_receiver.rb'
    autoload :AzureAppPushReceiver,                               '2019-03-01/generated/azure_mgmt_monitor/models/azure_app_push_receiver.rb'
    autoload :VoiceReceiver,                                      '2019-03-01/generated/azure_mgmt_monitor/models/voice_receiver.rb'
    autoload :ActionGroupList,                                    '2019-03-01/generated/azure_mgmt_monitor/models/action_group_list.rb'
    autoload :WebhookReceiver,                                    '2019-03-01/generated/azure_mgmt_monitor/models/webhook_receiver.rb'
    autoload :EnableRequest,                                      '2019-03-01/generated/azure_mgmt_monitor/models/enable_request.rb'
    autoload :EmailReceiver,                                      '2019-03-01/generated/azure_mgmt_monitor/models/email_receiver.rb'
    autoload :ErrorResponse,                                      '2019-03-01/generated/azure_mgmt_monitor/models/error_response.rb'
    autoload :AutomationRunbookReceiver,                          '2019-03-01/generated/azure_mgmt_monitor/models/automation_runbook_receiver.rb'
    autoload :ActionGroupPatchBody,                               '2019-03-01/generated/azure_mgmt_monitor/models/action_group_patch_body.rb'
    autoload :ActionGroupResource,                                '2019-03-01/generated/azure_mgmt_monitor/models/action_group_resource.rb'
    autoload :ReceiverStatus,                                     '2019-03-01/generated/azure_mgmt_monitor/models/receiver_status.rb'
  end
end
