# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_4_0_36
  module Models
    #
    # Describes the result of an operation that created or updated a repair
    # task.
    #
    # This type supports the Service Fabric platform; it is not meant to be
    # used directly from your code.
    #
    class RepairTaskUpdateInfo

      include MsRestAzure

      # @return [String] The new version of the repair task.
      attr_accessor :version


      #
      # Mapper for RepairTaskUpdateInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RepairTaskUpdateInfo',
          type: {
            name: 'Composite',
            class_name: 'RepairTaskUpdateInfo',
            model_properties: {
              version: {
                client_side_validation: true,
                required: true,
                serialized_name: 'Version',
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
