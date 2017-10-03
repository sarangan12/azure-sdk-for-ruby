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
require '2017-08-01-preview/generated/azure_mgmt_container_instance/module_definition'
require 'ms_rest_azure'

module Azure::ARM::ContainerInstance::Api_2017_08_01_preview
  autoload :ContainerGroups,                                    '2017-08-01-preview/generated/azure_mgmt_container_instance/container_groups.rb'
  autoload :ContainerLogs,                                      '2017-08-01-preview/generated/azure_mgmt_container_instance/container_logs.rb'
  autoload :ContainerInstanceManagementClient,                  '2017-08-01-preview/generated/azure_mgmt_container_instance/container_instance_management_client.rb'

  module Models
    autoload :Container,                                          '2017-08-01-preview/generated/azure_mgmt_container_instance/models/container.rb'
    autoload :AzureFileVolume,                                    '2017-08-01-preview/generated/azure_mgmt_container_instance/models/azure_file_volume.rb'
    autoload :EnvironmentVariable,                                '2017-08-01-preview/generated/azure_mgmt_container_instance/models/environment_variable.rb'
    autoload :Volume,                                             '2017-08-01-preview/generated/azure_mgmt_container_instance/models/volume.rb'
    autoload :ContainerEvent,                                     '2017-08-01-preview/generated/azure_mgmt_container_instance/models/container_event.rb'
    autoload :ImageRegistryCredential,                            '2017-08-01-preview/generated/azure_mgmt_container_instance/models/image_registry_credential.rb'
    autoload :ResourceRequests,                                   '2017-08-01-preview/generated/azure_mgmt_container_instance/models/resource_requests.rb'
    autoload :Port,                                               '2017-08-01-preview/generated/azure_mgmt_container_instance/models/port.rb'
    autoload :ResourceRequirements,                               '2017-08-01-preview/generated/azure_mgmt_container_instance/models/resource_requirements.rb'
    autoload :IpAddress,                                          '2017-08-01-preview/generated/azure_mgmt_container_instance/models/ip_address.rb'
    autoload :ContainerPort,                                      '2017-08-01-preview/generated/azure_mgmt_container_instance/models/container_port.rb'
    autoload :ContainerState,                                     '2017-08-01-preview/generated/azure_mgmt_container_instance/models/container_state.rb'
    autoload :ResourceLimits,                                     '2017-08-01-preview/generated/azure_mgmt_container_instance/models/resource_limits.rb'
    autoload :ContainerGroupListResult,                           '2017-08-01-preview/generated/azure_mgmt_container_instance/models/container_group_list_result.rb'
    autoload :ContainerPropertiesInstanceView,                    '2017-08-01-preview/generated/azure_mgmt_container_instance/models/container_properties_instance_view.rb'
    autoload :Logs,                                               '2017-08-01-preview/generated/azure_mgmt_container_instance/models/logs.rb'
    autoload :VolumeMount,                                        '2017-08-01-preview/generated/azure_mgmt_container_instance/models/volume_mount.rb'
    autoload :ContainerGroup,                                     '2017-08-01-preview/generated/azure_mgmt_container_instance/models/container_group.rb'
    autoload :ContainerRestartPolicy,                             '2017-08-01-preview/generated/azure_mgmt_container_instance/models/container_restart_policy.rb'
    autoload :ContainerGroupNetworkProtocol,                      '2017-08-01-preview/generated/azure_mgmt_container_instance/models/container_group_network_protocol.rb'
    autoload :OperatingSystemTypes,                               '2017-08-01-preview/generated/azure_mgmt_container_instance/models/operating_system_types.rb'
  end
end
