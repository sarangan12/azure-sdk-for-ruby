# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesBackup::Api_2016_12_01
  module Models
    #
    # Base class for backup items.
    #
    class ProtectedItem

      include MsRestAzure

      include MsRest::JSONable
      @@discriminatorMap = Hash.new
      @@discriminatorMap["Microsoft.ClassicCompute/virtualMachines"] = "AzureIaaSClassicComputeVMProtectedItem"
      @@discriminatorMap["Microsoft.Compute/virtualMachines"] = "AzureIaaSComputeVMProtectedItem"
      @@discriminatorMap["AzureIaaSVMProtectedItem"] = "AzureIaaSVMProtectedItem"
      @@discriminatorMap["Microsoft.Sql/servers/databases"] = "AzureSqlProtectedItem"
      @@discriminatorMap["DPMProtectedItem"] = "DPMProtectedItem"
      @@discriminatorMap["MabFileFolderProtectedItem"] = "MabFileFolderProtectedItem"

      def initialize
        @protectedItemType = "ProtectedItem"
      end

      attr_accessor :protectedItemType

      # @return [BackupManagementType] Type of backup managemenent for the
      # backed up item. Possible values include: 'Invalid', 'AzureIaasVM',
      # 'MAB', 'DPM', 'AzureBackupServer', 'AzureSql'
      attr_accessor :backup_management_type

      # @return [DataSourceType] Type of workload this item represents.
      # Possible values include: 'Invalid', 'VM', 'FileFolder', 'AzureSqlDb',
      # 'SQLDB', 'Exchange', 'Sharepoint', 'VMwareVM', 'SystemState', 'Client',
      # 'GenericDataSource'
      attr_accessor :workload_type

      # @return [String] Unique name of container
      attr_accessor :container_name

      # @return [String] ARM ID of the resource to be backed up.
      attr_accessor :source_resource_id

      # @return [String] ID of the backup policy with which this item is backed
      # up.
      attr_accessor :policy_id

      # @return [DateTime] Timestamp when the last (latest) backup copy was
      # created for this backup item.
      attr_accessor :last_recovery_point


      #
      # Mapper for ProtectedItem class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ProtectedItem',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'protectedItemType',
            uber_parent: 'ProtectedItem',
            class_name: 'ProtectedItem',
            model_properties: {
              backup_management_type: {
                required: false,
                serialized_name: 'backupManagementType',
                type: {
                  name: 'String'
                }
              },
              workload_type: {
                required: false,
                serialized_name: 'workloadType',
                type: {
                  name: 'String'
                }
              },
              container_name: {
                required: false,
                serialized_name: 'containerName',
                type: {
                  name: 'String'
                }
              },
              source_resource_id: {
                required: false,
                serialized_name: 'sourceResourceId',
                type: {
                  name: 'String'
                }
              },
              policy_id: {
                required: false,
                serialized_name: 'policyId',
                type: {
                  name: 'String'
                }
              },
              last_recovery_point: {
                required: false,
                serialized_name: 'lastRecoveryPoint',
                type: {
                  name: 'DateTime'
                }
              }
            }
          }
        }
      end
    end
  end
end
