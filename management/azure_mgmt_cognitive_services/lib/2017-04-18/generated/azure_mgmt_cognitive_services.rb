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
require '2017-04-18/generated/azure_mgmt_cognitive_services/module_definition'
require 'ms_rest_azure'

module Azure::ARM::CognitiveServices::Api_2017_04_18
  autoload :Accounts,                                           '2017-04-18/generated/azure_mgmt_cognitive_services/accounts.rb'
  autoload :Operations,                                         '2017-04-18/generated/azure_mgmt_cognitive_services/operations.rb'
  autoload :CheckSkuAvailability,                               '2017-04-18/generated/azure_mgmt_cognitive_services/check_sku_availability.rb'
  autoload :CognitiveServicesManagementClient,                  '2017-04-18/generated/azure_mgmt_cognitive_services/cognitive_services_management_client.rb'

  module Models
    autoload :CognitiveServicesAccountEnumerateSkusResult,        '2017-04-18/generated/azure_mgmt_cognitive_services/models/cognitive_services_account_enumerate_skus_result.rb'
    autoload :ErrorBody,                                          '2017-04-18/generated/azure_mgmt_cognitive_services/models/error_body.rb'
    autoload :CognitiveServicesAccountCreateParameters,           '2017-04-18/generated/azure_mgmt_cognitive_services/models/cognitive_services_account_create_parameters.rb'
    autoload :Error,                                              '2017-04-18/generated/azure_mgmt_cognitive_services/models/error.rb'
    autoload :CognitiveServicesAccount,                           '2017-04-18/generated/azure_mgmt_cognitive_services/models/cognitive_services_account.rb'
    autoload :OperationDisplayInfo,                               '2017-04-18/generated/azure_mgmt_cognitive_services/models/operation_display_info.rb'
    autoload :CognitiveServicesAccountKeys,                       '2017-04-18/generated/azure_mgmt_cognitive_services/models/cognitive_services_account_keys.rb'
    autoload :OperationEntity,                                    '2017-04-18/generated/azure_mgmt_cognitive_services/models/operation_entity.rb'
    autoload :CognitiveServicesResourceAndSku,                    '2017-04-18/generated/azure_mgmt_cognitive_services/models/cognitive_services_resource_and_sku.rb'
    autoload :OperationEntityListResult,                          '2017-04-18/generated/azure_mgmt_cognitive_services/models/operation_entity_list_result.rb'
    autoload :CognitiveServicesAccountUpdateParameters,           '2017-04-18/generated/azure_mgmt_cognitive_services/models/cognitive_services_account_update_parameters.rb'
    autoload :CheckSkuAvailabilityParameter,                      '2017-04-18/generated/azure_mgmt_cognitive_services/models/check_sku_availability_parameter.rb'
    autoload :RegenerateKeyParameters,                            '2017-04-18/generated/azure_mgmt_cognitive_services/models/regenerate_key_parameters.rb'
    autoload :CheckSkuAvailabilityResult,                         '2017-04-18/generated/azure_mgmt_cognitive_services/models/check_sku_availability_result.rb'
    autoload :CognitiveServicesAccountListResult,                 '2017-04-18/generated/azure_mgmt_cognitive_services/models/cognitive_services_account_list_result.rb'
    autoload :CheckSkuAvailabilityResultList,                     '2017-04-18/generated/azure_mgmt_cognitive_services/models/check_sku_availability_result_list.rb'
    autoload :Sku,                                                '2017-04-18/generated/azure_mgmt_cognitive_services/models/sku.rb'
    autoload :SkuName,                                            '2017-04-18/generated/azure_mgmt_cognitive_services/models/sku_name.rb'
    autoload :SkuTier,                                            '2017-04-18/generated/azure_mgmt_cognitive_services/models/sku_tier.rb'
    autoload :Kind,                                               '2017-04-18/generated/azure_mgmt_cognitive_services/models/kind.rb'
    autoload :ProvisioningState,                                  '2017-04-18/generated/azure_mgmt_cognitive_services/models/provisioning_state.rb'
    autoload :KeyName,                                            '2017-04-18/generated/azure_mgmt_cognitive_services/models/key_name.rb'
  end
end
