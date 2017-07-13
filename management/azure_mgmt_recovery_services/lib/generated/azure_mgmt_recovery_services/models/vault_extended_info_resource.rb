# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServices
  module Models
    #
    # Vault extended information.
    #
    class VaultExtendedInfoResource < MsRestAzure::Resource

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Integrity key.
      attr_accessor :integrity_key

      # @return [String] Encryption key.
      attr_accessor :encryption_key

      # @return [String] Encryption key thumbprint.
      attr_accessor :encryption_key_thumbprint

      # @return [String] Algorithm.
      attr_accessor :algorithm


      #
      # Mapper for VaultExtendedInfoResource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'VaultExtendedInfoResource',
          type: {
            name: 'Composite',
            class_name: 'VaultExtendedInfoResource',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              e_tag: {
                required: false,
                serialized_name: 'eTag',
                type: {
                  name: 'String'
                }
              },
              integrity_key: {
                required: false,
                serialized_name: 'properties.integrityKey',
                type: {
                  name: 'String'
                }
              },
              encryption_key: {
                required: false,
                serialized_name: 'properties.encryptionKey',
                type: {
                  name: 'String'
                }
              },
              encryption_key_thumbprint: {
                required: false,
                serialized_name: 'properties.encryptionKeyThumbprint',
                type: {
                  name: 'String'
                }
              },
              algorithm: {
                required: false,
                serialized_name: 'properties.algorithm',
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
