# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_2_0_9
  module Models
    #
    # Information about a Service Fabric config version.
    #
    class FabricConfigVersionInfo

      include MsRestAzure

      # @return [String] The config version of Service Fabric.
      attr_accessor :config_version


      #
      # Mapper for FabricConfigVersionInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'FabricConfigVersionInfo',
          type: {
            name: 'Composite',
            class_name: 'FabricConfigVersionInfo',
            model_properties: {
              config_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ConfigVersion',
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
