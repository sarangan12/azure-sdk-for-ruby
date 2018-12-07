# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_2_0_9
  module Models
    #
    # Describes a Service Fabric property value of type Double.
    #
    class DoublePropertyValue < PropertyValue

      include MsRestAzure


      def initialize
        @Kind = "Double"
      end

      attr_accessor :Kind

      # @return [Float] The data of the property value.
      attr_accessor :data


      #
      # Mapper for DoublePropertyValue class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Double',
          type: {
            name: 'Composite',
            class_name: 'DoublePropertyValue',
            model_properties: {
              Kind: {
                client_side_validation: true,
                required: true,
                serialized_name: 'Kind',
                type: {
                  name: 'String'
                }
              },
              data: {
                client_side_validation: true,
                required: true,
                serialized_name: 'Data',
                type: {
                  name: 'Double'
                }
              }
            }
          }
        }
      end
    end
  end
end
