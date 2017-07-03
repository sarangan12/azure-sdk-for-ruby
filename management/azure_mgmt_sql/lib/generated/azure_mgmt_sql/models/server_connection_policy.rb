# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.1.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::SQL
  module Models
    #
    # A server secure connection policy.
    #
    class ServerConnectionPolicy < ProxyResource

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Metadata used for the Azure portal experience.
      attr_accessor :kind

      # @return [String] Resource location.
      attr_accessor :location

      # @return [ServerConnectionType] The server connection type. Possible
      # values include: 'Default', 'Proxy', 'Redirect'
      attr_accessor :connection_type


      #
      # Mapper for ServerConnectionPolicy class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ServerConnectionPolicy',
          type: {
            name: 'Composite',
            class_name: 'ServerConnectionPolicy',
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
              kind: {
                required: false,
                read_only: true,
                serialized_name: 'kind',
                type: {
                  name: 'String'
                }
              },
              location: {
                required: false,
                read_only: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              connection_type: {
                required: true,
                serialized_name: 'properties.connectionType',
                type: {
                  name: 'Enum',
                  module: 'ServerConnectionType'
                }
              }
            }
          }
        }
      end
    end
  end
end
