# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web::Api_2016_09_01
  module Models
    #
    # MachineKey of an app.
    #
    class SiteMachineKey

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] MachineKey validation.
      attr_accessor :validation

      # @return [String] Validation key.
      attr_accessor :validation_key

      # @return [String] Decryption.
      attr_accessor :decryption

      # @return [String] Decryption key.
      attr_accessor :decryption_key


      #
      # Mapper for SiteMachineKey class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'SiteMachineKey',
          type: {
            name: 'Composite',
            class_name: 'SiteMachineKey',
            model_properties: {
              validation: {
                required: false,
                serialized_name: 'validation',
                type: {
                  name: 'String'
                }
              },
              validation_key: {
                required: false,
                serialized_name: 'validationKey',
                type: {
                  name: 'String'
                }
              },
              decryption: {
                required: false,
                serialized_name: 'decryption',
                type: {
                  name: 'String'
                }
              },
              decryption_key: {
                required: false,
                serialized_name: 'decryptionKey',
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
