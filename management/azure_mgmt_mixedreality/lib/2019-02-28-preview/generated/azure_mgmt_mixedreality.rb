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
require '2019-02-28-preview/generated/azure_mgmt_mixedreality/module_definition'
require 'ms_rest_azure'

module Azure::MixedReality::Mgmt::V2019_02_28_preview
  autoload :Operations,                                         '2019-02-28-preview/generated/azure_mgmt_mixedreality/operations.rb'
  autoload :SpatialAnchorsAccounts,                             '2019-02-28-preview/generated/azure_mgmt_mixedreality/spatial_anchors_accounts.rb'
  autoload :MixedRealityClient,                                 '2019-02-28-preview/generated/azure_mgmt_mixedreality/mixed_reality_client.rb'

  module Models
    autoload :SpatialAnchorsAccountKeys,                          '2019-02-28-preview/generated/azure_mgmt_mixedreality/models/spatial_anchors_account_keys.rb'
    autoload :CheckNameAvailabilityRequest,                       '2019-02-28-preview/generated/azure_mgmt_mixedreality/models/check_name_availability_request.rb'
    autoload :SpatialAnchorsAccountKeyRegenerateRequest,          '2019-02-28-preview/generated/azure_mgmt_mixedreality/models/spatial_anchors_account_key_regenerate_request.rb'
    autoload :ErrorResponse,                                      '2019-02-28-preview/generated/azure_mgmt_mixedreality/models/error_response.rb'
    autoload :SpatialAnchorsAccountList,                          '2019-02-28-preview/generated/azure_mgmt_mixedreality/models/spatial_anchors_account_list.rb'
    autoload :Operation,                                          '2019-02-28-preview/generated/azure_mgmt_mixedreality/models/operation.rb'
    autoload :OperationDisplay,                                   '2019-02-28-preview/generated/azure_mgmt_mixedreality/models/operation_display.rb'
    autoload :OperationList,                                      '2019-02-28-preview/generated/azure_mgmt_mixedreality/models/operation_list.rb'
    autoload :CheckNameAvailabilityResponse,                      '2019-02-28-preview/generated/azure_mgmt_mixedreality/models/check_name_availability_response.rb'
    autoload :Resource,                                           '2019-02-28-preview/generated/azure_mgmt_mixedreality/models/resource.rb'
    autoload :SpatialAnchorsAccount,                              '2019-02-28-preview/generated/azure_mgmt_mixedreality/models/spatial_anchors_account.rb'
    autoload :ProxyResource,                                      '2019-02-28-preview/generated/azure_mgmt_mixedreality/models/proxy_resource.rb'
    autoload :AzureEntityResource,                                '2019-02-28-preview/generated/azure_mgmt_mixedreality/models/azure_entity_resource.rb'
    autoload :TrackedResource,                                    '2019-02-28-preview/generated/azure_mgmt_mixedreality/models/tracked_resource.rb'
    autoload :NameAvailability,                                   '2019-02-28-preview/generated/azure_mgmt_mixedreality/models/name_availability.rb'
    autoload :NameUnavailableReason,                              '2019-02-28-preview/generated/azure_mgmt_mixedreality/models/name_unavailable_reason.rb'
  end
end
