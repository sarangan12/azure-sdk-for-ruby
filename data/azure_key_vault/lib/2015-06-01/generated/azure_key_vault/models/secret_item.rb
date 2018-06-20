# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::KeyVault::V2015_06_01
  module Models
    #
    # The secret item containing secret metadata
    #
    class SecretItem

      include MsRestAzure

      # @return [String] Secret Identifier
      attr_accessor :id

      # @return [SecretAttributes] The secret management attributes
      attr_accessor :attributes

      # @return [Hash{String => String}] Application-specific metadata in the
      # form of key-value pairs
      attr_accessor :tags

      # @return [String] Type of the secret value such as a password
      attr_accessor :content_type

      # @return [Boolean] True if the secret's lifetime is managed by key vault
      # i.e. if this is a key backing a certificate, then managed will be true.
      attr_accessor :managed


      #
      # Mapper for SecretItem class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SecretItem',
          type: {
            name: 'Composite',
            class_name: 'SecretItem',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              attributes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'attributes',
                type: {
                  name: 'Composite',
                  class_name: 'SecretAttributes'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              content_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'contentType',
                type: {
                  name: 'String'
                }
              },
              managed: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'managed',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
