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
require 'generated/azure_mgmt_analysis_services/module_definition'
require 'ms_rest_azure'

module Azure::ARM::AnalysisServices
  autoload :Servers,                                            'generated/azure_mgmt_analysis_services/servers.rb'
  autoload :AnalysisServicesManagementClient,                   'generated/azure_mgmt_analysis_services/analysis_services_management_client.rb'

  module Models
    autoload :ServerAdministrators,                               'generated/azure_mgmt_analysis_services/models/server_administrators.rb'
    autoload :AnalysisServicesServerUpdateParameters,             'generated/azure_mgmt_analysis_services/models/analysis_services_server_update_parameters.rb'
    autoload :Resource,                                           'generated/azure_mgmt_analysis_services/models/resource.rb'
    autoload :SkuEnumerationForNewResourceResult,                 'generated/azure_mgmt_analysis_services/models/sku_enumeration_for_new_resource_result.rb'
    autoload :AnalysisServicesServers,                            'generated/azure_mgmt_analysis_services/models/analysis_services_servers.rb'
    autoload :SkuDetailsForExistingResource,                      'generated/azure_mgmt_analysis_services/models/sku_details_for_existing_resource.rb'
    autoload :ResourceSku,                                        'generated/azure_mgmt_analysis_services/models/resource_sku.rb'
    autoload :SkuEnumerationForExistingResourceResult,            'generated/azure_mgmt_analysis_services/models/sku_enumeration_for_existing_resource_result.rb'
    autoload :AnalysisServicesServer,                             'generated/azure_mgmt_analysis_services/models/analysis_services_server.rb'
    autoload :SkuTier,                                            'generated/azure_mgmt_analysis_services/models/sku_tier.rb'
    autoload :State,                                              'generated/azure_mgmt_analysis_services/models/state.rb'
    autoload :ProvisioningState,                                  'generated/azure_mgmt_analysis_services/models/provisioning_state.rb'
  end
end
