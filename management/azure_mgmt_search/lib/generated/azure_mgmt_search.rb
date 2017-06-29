# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.1.0.0
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
require 'generated/azure_mgmt_search/module_definition'
require 'ms_rest_azure'

module Azure::ARM::Search
  autoload :AdminKeys,                                          'generated/azure_mgmt_search/admin_keys.rb'
  autoload :QueryKeys,                                          'generated/azure_mgmt_search/query_keys.rb'
  autoload :Services,                                           'generated/azure_mgmt_search/services.rb'
  autoload :SearchManagementClient,                             'generated/azure_mgmt_search/search_management_client.rb'

  module Models
    autoload :Sku,                                                'generated/azure_mgmt_search/models/sku.rb'
    autoload :CheckNameAvailabilityInput,                         'generated/azure_mgmt_search/models/check_name_availability_input.rb'
    autoload :SearchManagementRequestOptions,                     'generated/azure_mgmt_search/models/search_management_request_options.rb'
    autoload :AdminKeyResult,                                     'generated/azure_mgmt_search/models/admin_key_result.rb'
    autoload :QueryKey,                                           'generated/azure_mgmt_search/models/query_key.rb'
    autoload :CheckNameAvailabilityOutput,                        'generated/azure_mgmt_search/models/check_name_availability_output.rb'
    autoload :SearchService,                                      'generated/azure_mgmt_search/models/search_service.rb'
    autoload :UnavailableNameReason,                              'generated/azure_mgmt_search/models/unavailable_name_reason.rb'
    autoload :SkuName,                                            'generated/azure_mgmt_search/models/sku_name.rb'
    autoload :HostingMode,                                        'generated/azure_mgmt_search/models/hosting_mode.rb'
    autoload :SearchServiceStatus,                                'generated/azure_mgmt_search/models/search_service_status.rb'
    autoload :ProvisioningState,                                  'generated/azure_mgmt_search/models/provisioning_state.rb'
    autoload :AdminKeyKind,                                       'generated/azure_mgmt_search/models/admin_key_kind.rb'
  end
end
