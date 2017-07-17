# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute
  module Models
    #
    # Describes a reference to Key Vault Key
    #
    class KeyVaultKeyReference

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The URL referencing a key in a Key Vault.
      attr_accessor :key_url

      # @return [SubResource] The relative URL of the Key Vault containing the
      # key.
      attr_accessor :source_vault


      #
      # Mapper for KeyVaultKeyReference class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'KeyVaultKeyReference',
          type: {
            name: 'Composite',
            class_name: 'KeyVaultKeyReference',
            model_properties: {
              key_url: {
                required: true,
                serialized_name: 'keyUrl',
                type: {
                  name: 'String'
                }
              },
              source_vault: {
                required: true,
                serialized_name: 'sourceVault',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              }
            }
          }
        }
      end
    end
  end
end
