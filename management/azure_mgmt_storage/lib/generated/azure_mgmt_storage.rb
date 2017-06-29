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
require 'generated/azure_mgmt_storage/module_definition'
require 'ms_rest_azure'

module Azure::ARM::Storage
  autoload :StorageAccounts,                                    'generated/azure_mgmt_storage/storage_accounts.rb'
  autoload :UsageOperations,                                    'generated/azure_mgmt_storage/usage_operations.rb'
  autoload :StorageManagementClient,                            'generated/azure_mgmt_storage/storage_management_client.rb'

  module Models
    autoload :StorageAccountListResult,                           'generated/azure_mgmt_storage/models/storage_account_list_result.rb'
    autoload :StorageAccountListKeysResult,                       'generated/azure_mgmt_storage/models/storage_account_list_keys_result.rb'
    autoload :CheckNameAvailabilityResult,                        'generated/azure_mgmt_storage/models/check_name_availability_result.rb'
    autoload :StorageAccountRegenerateKeyParameters,              'generated/azure_mgmt_storage/models/storage_account_regenerate_key_parameters.rb'
    autoload :CustomDomain,                                       'generated/azure_mgmt_storage/models/custom_domain.rb'
    autoload :StorageAccountUpdateParameters,                     'generated/azure_mgmt_storage/models/storage_account_update_parameters.rb'
    autoload :EncryptionServices,                                 'generated/azure_mgmt_storage/models/encryption_services.rb'
    autoload :UsageName,                                          'generated/azure_mgmt_storage/models/usage_name.rb'
    autoload :StorageAccountCreateParameters,                     'generated/azure_mgmt_storage/models/storage_account_create_parameters.rb'
    autoload :Usage,                                              'generated/azure_mgmt_storage/models/usage.rb'
    autoload :StorageAccountKey,                                  'generated/azure_mgmt_storage/models/storage_account_key.rb'
    autoload :UsageListResult,                                    'generated/azure_mgmt_storage/models/usage_list_result.rb'
    autoload :Sku,                                                'generated/azure_mgmt_storage/models/sku.rb'
    autoload :Encryption,                                         'generated/azure_mgmt_storage/models/encryption.rb'
    autoload :AccountSasParameters,                               'generated/azure_mgmt_storage/models/account_sas_parameters.rb'
    autoload :StorageAccountCheckNameAvailabilityParameters,      'generated/azure_mgmt_storage/models/storage_account_check_name_availability_parameters.rb'
    autoload :ListAccountSasResponse,                             'generated/azure_mgmt_storage/models/list_account_sas_response.rb'
    autoload :Endpoints,                                          'generated/azure_mgmt_storage/models/endpoints.rb'
    autoload :ServiceSasParameters,                               'generated/azure_mgmt_storage/models/service_sas_parameters.rb'
    autoload :EncryptionService,                                  'generated/azure_mgmt_storage/models/encryption_service.rb'
    autoload :ListServiceSasResponse,                             'generated/azure_mgmt_storage/models/list_service_sas_response.rb'
    autoload :StorageAccount,                                     'generated/azure_mgmt_storage/models/storage_account.rb'
    autoload :Reason,                                             'generated/azure_mgmt_storage/models/reason.rb'
    autoload :SkuName,                                            'generated/azure_mgmt_storage/models/sku_name.rb'
    autoload :SkuTier,                                            'generated/azure_mgmt_storage/models/sku_tier.rb'
    autoload :AccessTier,                                         'generated/azure_mgmt_storage/models/access_tier.rb'
    autoload :Kind,                                               'generated/azure_mgmt_storage/models/kind.rb'
    autoload :ProvisioningState,                                  'generated/azure_mgmt_storage/models/provisioning_state.rb'
    autoload :AccountStatus,                                      'generated/azure_mgmt_storage/models/account_status.rb'
    autoload :KeyPermission,                                      'generated/azure_mgmt_storage/models/key_permission.rb'
    autoload :UsageUnit,                                          'generated/azure_mgmt_storage/models/usage_unit.rb'
    autoload :HttpProtocol,                                       'generated/azure_mgmt_storage/models/http_protocol.rb'
  end
end
