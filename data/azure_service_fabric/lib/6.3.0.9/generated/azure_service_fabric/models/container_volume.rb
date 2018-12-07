# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_3_0_9
  module Models
    #
    # Describes how a volume is attached to a container.
    #
    class ContainerVolume

      include MsRestAzure

      # @return [String] Name of the volume.
      attr_accessor :name

      # @return [Boolean] The flag indicating whether the volume is read only.
      # Default is 'false'.
      attr_accessor :read_only

      # @return [String] The path within the container at which the volume
      # should be mounted. Only valid path characters are allowed.
      attr_accessor :destination_path


      #
      # Mapper for ContainerVolume class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ContainerVolume',
          type: {
            name: 'Composite',
            class_name: 'ContainerVolume',
            model_properties: {
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              read_only: {
                client_side_validation: true,
                required: false,
                serialized_name: 'readOnly',
                type: {
                  name: 'Boolean'
                }
              },
              destination_path: {
                client_side_validation: true,
                required: true,
                serialized_name: 'destinationPath',
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
