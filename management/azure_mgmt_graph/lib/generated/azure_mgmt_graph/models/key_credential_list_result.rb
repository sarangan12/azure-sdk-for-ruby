# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Graph
  module Models
    #
    # KeyCredential list operation result.
    #
    class KeyCredentialListResult

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<KeyCredential>] A collection of KeyCredentials.
      attr_accessor :value


      #
      # Mapper for KeyCredentialListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'KeyCredentialListResult',
          type: {
            name: 'Composite',
            class_name: 'KeyCredentialListResult',
            model_properties: {
              value: {
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'KeyCredentialElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'KeyCredential'
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
