# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesBackup::Api_2016_12_01
  module Models
    #
    # Base class for backup request. Workload-specific backup requests are
    # derived from this class.
    #
    class BackupRequest

      include MsRestAzure

      include MsRest::JSONable
      @@discriminatorMap = Hash.new
      @@discriminatorMap["IaasVMBackupRequest"] = "IaasVMBackupRequest"

      def initialize
        @objectType = "BackupRequest"
      end

      attr_accessor :objectType


      #
      # Mapper for BackupRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'BackupRequest',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'objectType',
            uber_parent: 'BackupRequest',
            class_name: 'BackupRequest',
            model_properties: {
            }
          }
        }
      end
    end
  end
end
