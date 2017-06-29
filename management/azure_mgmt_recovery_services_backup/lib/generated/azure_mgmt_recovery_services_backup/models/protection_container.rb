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
    # Base class for container with backup items. Containers with specific
    # workloads are derived from this class.
    #
    class ProtectionContainer

      include MsRestAzure

      include MsRest::JSONable
      @@discriminatorMap = Hash.new
      @@discriminatorMap["AzureBackupServerContainer"] = "AzureBackupServerContainer"
      @@discriminatorMap["Microsoft.ClassicCompute/virtualMachines"] = "AzureIaaSClassicComputeVMContainer"
      @@discriminatorMap["Microsoft.Compute/virtualMachines"] = "AzureIaaSComputeVMContainer"
      @@discriminatorMap["AzureSqlContainer"] = "AzureSqlContainer"
      @@discriminatorMap["DPMContainer"] = "DpmContainer"
      @@discriminatorMap["IaaSVMContainer"] = "IaaSVMContainer"
      @@discriminatorMap["MABWindowsContainer"] = "MabContainer"

      def initialize
        @protectableObjectType = "ProtectionContainer"
      end

      attr_accessor :protectableObjectType

      # @return [String] Friendly name of the container.
      attr_accessor :friendly_name

      # @return [BackupManagementType] Type of backup managemenent for the
      # container. Possible values include: 'Invalid', 'AzureIaasVM', 'MAB',
      # 'DPM', 'AzureBackupServer', 'AzureSql'
      attr_accessor :backup_management_type

      # @return [String] Status of registration of the container with the
      # Recovery Services Vault.
      attr_accessor :registration_status

      # @return [String] Status of health of the container.
      attr_accessor :health_status

      # @return [ContainerType] Type of the container. The value of this
      # property for: 1. Compute Azure VM is Microsoft.Compute/virtualMachines
      # 2. Classic Compute Azure VM is Microsoft.ClassicCompute/virtualMachines
      # 3. Windows machines (like MAB, DPM etc) is Windows 4. Azure SQL
      # instance is AzureSqlContainer. Possible values include: 'Invalid',
      # 'Unknown', 'IaasVMContainer', 'IaasVMServiceContainer', 'DPMContainer',
      # 'AzureBackupServerContainer', 'MABContainer', 'Cluster',
      # 'AzureSqlContainer', 'Windows', 'VCenter'
      attr_accessor :container_type


      #
      # Mapper for ProtectionContainer class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ProtectionContainer',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'protectableObjectType',
            uber_parent: 'ProtectionContainer',
            class_name: 'ProtectionContainer',
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
              }
            }
          }
        }
      end
    end
  end
end
