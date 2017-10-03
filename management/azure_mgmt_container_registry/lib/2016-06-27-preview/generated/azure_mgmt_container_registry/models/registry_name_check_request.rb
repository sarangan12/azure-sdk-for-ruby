# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::ContainerRegistry::Api_2016_06_27_preview
  module Models
    #
    # A request to check whether the container registry name is available.
    #
    class RegistryNameCheckRequest

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The name of the container registry.
      attr_accessor :name

      # @return [String] The resource type of the container registry. This
      # field must be set to "Microsoft.ContainerRegistry/registries". Default
      # value: 'Microsoft.ContainerRegistry/registries' .
      attr_accessor :type


      #
      # Mapper for RegistryNameCheckRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RegistryNameCheckRequest',
          type: {
            name: 'Composite',
            class_name: 'RegistryNameCheckRequest',
            model_properties: {
              name: {
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: true,
                is_constant: true,
                serialized_name: 'type',
                default_value: 'Microsoft.ContainerRegistry/registries',
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
