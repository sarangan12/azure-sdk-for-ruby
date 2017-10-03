# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::ContainerRegistry::Api_2017_03_01
  module Models
    #
    # The response from the ListCredentials operation.
    #
    class RegistryListCredentialsResult

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The username for a container registry.
      attr_accessor :username

      # @return [Array<RegistryPassword>] The list of passwords for a container
      # registry.
      attr_accessor :passwords


      #
      # Mapper for RegistryListCredentialsResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RegistryListCredentialsResult',
          type: {
            name: 'Composite',
            class_name: 'RegistryListCredentialsResult',
            model_properties: {
              username: {
                required: false,
                serialized_name: 'username',
                type: {
                  name: 'String'
                }
              },
              passwords: {
                required: false,
                serialized_name: 'passwords',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'RegistryPasswordElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'RegistryPassword'
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
