# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesBackup::Api_2016_12_01
  module Models
    #
    # Backup management usage for vault.
    #
    class BackupManagementUsageList

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<BackupManagementUsage>] The list of backup management
      # usages for the given vault.
      attr_accessor :value


      #
      # Mapper for BackupManagementUsageList class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'BackupManagementUsageList',
          type: {
            name: 'Composite',
            class_name: 'BackupManagementUsageList',
            model_properties: {
              value: {
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'BackupManagementUsageElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'BackupManagementUsage'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
