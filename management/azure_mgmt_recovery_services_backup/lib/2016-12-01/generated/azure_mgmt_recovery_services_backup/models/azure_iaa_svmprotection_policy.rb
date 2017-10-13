# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2016_12_01
  module Models
    #
    # IaaS VM workload-specific backup policy.
    #
    class AzureIaaSVMProtectionPolicy < ProtectionPolicy

      include MsRestAzure


      def initialize
        @backupManagementType = "AzureIaasVM"
      end

      attr_accessor :backupManagementType

      # @return [SchedulePolicy] Backup schedule specified as part of backup
      # policy.
      attr_accessor :schedule_policy

      # @return [RetentionPolicy] Retention policy with the details on backup
      # copy retention ranges.
      attr_accessor :retention_policy

      # @return [String] TimeZone optional input as string. For example:
      # TimeZone = "Pacific Standard Time".
      attr_accessor :time_zone


      #
      # Mapper for AzureIaaSVMProtectionPolicy class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AzureIaasVM',
          type: {
            name: 'Composite',
            class_name: 'AzureIaaSVMProtectionPolicy',
            model_properties: {
              protected_items_count: {
                required: false,
                serialized_name: 'protectedItemsCount',
                type: {
                  name: 'Number'
                }
              },
              backupManagementType: {
                required: true,
                serialized_name: 'backupManagementType',
                type: {
                  name: 'String'
                }
              },
              schedule_policy: {
                required: false,
                serialized_name: 'schedulePolicy',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'schedulePolicyType',
                  uber_parent: 'SchedulePolicy',
                  class_name: 'SchedulePolicy'
                }
              },
              retention_policy: {
                required: false,
                serialized_name: 'retentionPolicy',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'retentionPolicyType',
                  uber_parent: 'RetentionPolicy',
                  class_name: 'RetentionPolicy'
                }
              },
              time_zone: {
                required: false,
                serialized_name: 'timeZone',
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
