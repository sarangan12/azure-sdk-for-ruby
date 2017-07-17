# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::DevTestLabs
  module Models
    #
    # Information about an artifact's parameter.
    #
    class ParameterInfo

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The name of the artifact parameter.
      attr_accessor :name

      # @return [String] The value of the artifact parameter.
      attr_accessor :value


      #
      # Mapper for ParameterInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ParameterInfo',
          type: {
            name: 'Composite',
            class_name: 'ParameterInfo',
            model_properties: {
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              value: {
                required: false,
                serialized_name: 'value',
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
