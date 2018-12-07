# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_2_0_9
  module Models
    #
    # Represents a safety check for the seed nodes being performed by service
    # fabric before continuing with node level operations.
    #
    class SeedNodeSafetyCheck < SafetyCheck

      include MsRestAzure


      def initialize
        @Kind = "EnsureSeedNodeQuorum"
      end

      attr_accessor :Kind


      #
      # Mapper for SeedNodeSafetyCheck class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'EnsureSeedNodeQuorum',
          type: {
            name: 'Composite',
            class_name: 'SeedNodeSafetyCheck',
            model_properties: {
              Kind: {
                client_side_validation: true,
                required: true,
                serialized_name: 'Kind',
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
