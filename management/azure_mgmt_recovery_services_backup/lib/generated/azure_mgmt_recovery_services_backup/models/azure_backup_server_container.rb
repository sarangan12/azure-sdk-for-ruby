# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for
# license information.
#
# Code generated by Microsoft (R) AutoRest Code Generator 1.1.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesBackup
  module Models
    #
    # AzureBackupServer (DPMVenus) workload-specific protection container.
    #
    class AzureBackupServerContainer < ProtectionContainer

      include MsRestAzure

      include MsRest::JSONable

      def initialize
        @protectableObjectType = "AzureBackupServerContainer"
      end

      attr_accessor :protectableObjectType

      # @return [Boolean] Specifies whether the container is re-registrable.
      attr_accessor :can_re_register

      # @return [String] ID of container.
      attr_accessor :container_id

      # @return [Integer] Number of protected items in the BackupEngine
      attr_accessor :protected_item_count

      # @return [String] Backup engine Agent version
      attr_accessor :dpm_agent_version

      # @return [Array<String>] List of BackupEngines protecting the container
      attr_accessor :dpmservers

      # @return [Boolean] To check if upgrade available
      attr_accessor :upgrade_available

      # @return [String] Protection status of the container.
      attr_accessor :protection_status

      # @return [DPMContainerExtendedInfo] Extended Info of the container.
      attr_accessor :extended_info


      #
      # Mapper for AzureBackupServerContainer class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AzureBackupServerContainer',
          type: {
            name: 'Composite',
            class_name: 'AzureBackupServerContainer',
            model_properties: {
              friendly_name: {
                required: false,
                serialized_name: 'friendlyName',
                type: {
                  name: 'String'
                }
              },
              backup_management_type: {
                required: false,
                serialized_name: 'backupManagementType',
                type: {
                  name: 'String'
                }
              },
              registration_status: {
                required: false,
                serialized_name: 'registrationStatus',
                type: {
                  name: 'String'
                }
              },
              health_status: {
                required: false,
                serialized_name: 'healthStatus',
                type: {
                  name: 'String'
                }
              },
              container_type: {
                required: false,
                read_only: true,
                serialized_name: 'containerType',
                type: {
                  name: 'String'
                }
              },
              protectableObjectType: {
                required: true,
                serialized_name: 'protectableObjectType',
                type: {
                  name: 'String'
                }
              },
              can_re_register: {
                required: false,
                serialized_name: 'canReRegister',
                type: {
                  name: 'Boolean'
                }
              },
              container_id: {
                required: false,
                serialized_name: 'containerId',
                type: {
                  name: 'String'
                }
              },
              protected_item_count: {
                required: false,
                serialized_name: 'protectedItemCount',
                type: {
                  name: 'Number'
                }
              },
              dpm_agent_version: {
                required: false,
                serialized_name: 'dpmAgentVersion',
                type: {
                  name: 'String'
                }
              },
              dpmservers: {
                required: false,
                serialized_name: 'DPMServers',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              upgrade_available: {
                required: false,
                serialized_name: 'UpgradeAvailable',
                type: {
                  name: 'Boolean'
                }
              },
              protection_status: {
                required: false,
                serialized_name: 'protectionStatus',
                type: {
                  name: 'String'
                }
              },
              extended_info: {
                required: false,
                serialized_name: 'extendedInfo',
                type: {
                  name: 'Composite',
                  class_name: 'DPMContainerExtendedInfo'
                }
              }
            }
          }
        }
      end
    end
  end
end
