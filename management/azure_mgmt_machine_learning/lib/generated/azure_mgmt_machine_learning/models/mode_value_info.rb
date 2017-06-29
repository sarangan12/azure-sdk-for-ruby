# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.1.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::MachineLearning
  module Models
    #
    # Nested parameter definition.
    #
    class ModeValueInfo

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The interface string name for the nested parameter.
      attr_accessor :interface_string

      # @return [Array<ModuleAssetParameter>] The definition of the parameter.
      attr_accessor :parameters


      #
      # Mapper for ModeValueInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ModeValueInfo',
          type: {
            name: 'Composite',
            class_name: 'ModeValueInfo',
            model_properties: {
              interface_string: {
                required: false,
                serialized_name: 'interfaceString',
                type: {
                  name: 'String'
                }
              },
              parameters: {
                required: false,
                serialized_name: 'parameters',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ModuleAssetParameterElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ModuleAssetParameter'
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
