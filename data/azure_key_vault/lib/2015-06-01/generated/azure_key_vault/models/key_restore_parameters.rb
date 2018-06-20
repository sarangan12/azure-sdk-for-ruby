# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::KeyVault::V2015_06_01
  module Models
    #
    # The key restore parameters
    #
    class KeyRestoreParameters

      include MsRestAzure

      # @return the backup blob associated with a key bundle
      attr_accessor :key_bundle_backup


      #
      # Mapper for KeyRestoreParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'KeyRestoreParameters',
          type: {
            name: 'Composite',
            class_name: 'KeyRestoreParameters',
            model_properties: {
              key_bundle_backup: {
                client_side_validation: true,
                required: true,
                serialized_name: 'value',
                type: {
                  name: 'Base64Url'
                }
              }
            }
          }
        }
      end
    end
  end
end
