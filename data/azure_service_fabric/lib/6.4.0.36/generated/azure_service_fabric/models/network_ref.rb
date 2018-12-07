# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_4_0_36
  module Models
    #
    # Describes a network reference in a service.
    #
    class NetworkRef

      include MsRestAzure

      # @return [String] Name of the network
      attr_accessor :name

      # @return [Array<EndpointRef>] A list of endpoints that are exposed on
      # this network.
      attr_accessor :endpoint_refs


      #
      # Mapper for NetworkRef class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'NetworkRef',
          type: {
            name: 'Composite',
            class_name: 'NetworkRef',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              endpoint_refs: {
                client_side_validation: true,
                required: false,
                serialized_name: 'endpointRefs',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'EndpointRefElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'EndpointRef'
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
