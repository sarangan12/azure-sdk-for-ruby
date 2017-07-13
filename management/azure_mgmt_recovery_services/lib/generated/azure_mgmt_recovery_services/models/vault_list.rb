# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServices
  module Models
    #
    # The response model for a list of Vaults.
    #
    class VaultList

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<Vault>]
      attr_accessor :value

      # @return [String]
      attr_accessor :next_link


      #
      # Mapper for VaultList class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'VaultList',
          type: {
            name: 'Composite',
            class_name: 'VaultList',
            model_properties: {
              value: {
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'VaultElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Vault'
                      }
                  }
                }
              },
              next_link: {
                required: false,
                read_only: true,
                serialized_name: 'nextLink',
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
