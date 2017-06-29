# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.1.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute
  module Models
    #
    # Key Vault Key Url and vault id of KeK, KeK is optional and when provided
    # is used to unwrap the encryptionKey
    #
    class KeyVaultAndKeyReference

      include MsRestAzure

      include MsRest::JSONable
      # @return [SourceVault] Resource id of the KeyVault containing the key or
      # secret
      attr_accessor :source_vault

      # @return [String] Url pointing to a key or secret in KeyVault
      attr_accessor :key_url


      #
      # Mapper for KeyVaultAndKeyReference class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'KeyVaultAndKeyReference',
          type: {
            name: 'Composite',
            class_name: 'KeyVaultAndKeyReference',
            model_properties: {
              source_vault: {
                required: true,
                serialized_name: 'sourceVault',
                type: {
                  name: 'Composite',
                  class_name: 'SourceVault'
                }
              },
              key_url: {
                required: true,
                serialized_name: 'keyUrl',
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
