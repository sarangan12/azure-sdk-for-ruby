# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesBackup::Api_2016_12_01
  module Models
    #
    # Query parameters to fetch backup summaries.
    #
    class BMSBackupSummariesQueryObject

      include MsRestAzure

      include MsRest::JSONable
      # @return [Type] Backup management type for this container. Possible
      # values include: 'Invalid', 'BackupProtectedItemCountSummary',
      # 'BackupProtectionContainerCountSummary'
      attr_accessor :type


      #
      # Mapper for BMSBackupSummariesQueryObject class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'BMSBackupSummariesQueryObject',
          type: {
            name: 'Composite',
            class_name: 'BMSBackupSummariesQueryObject',
            model_properties: {
              type: {
                required: false,
                serialized_name: 'type',
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
