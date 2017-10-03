# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::SQL::Api_2014_04_01
  module Models
    #
    # Represents the response to a get server request.
    #
    class ServerListResult

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<Server>] The list of servers.
      attr_accessor :value


      #
      # Mapper for ServerListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ServerListResult',
          type: {
            name: 'Composite',
            class_name: 'ServerListResult',
            model_properties: {
              value: {
                required: true,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ServerElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Server'
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
