# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_3_0_9
  module Models
    #
    # Endpoint of a resolved service partition.
    #
    class ResolvedServiceEndpoint

      include MsRestAzure

      # @return [ServiceEndpointRole] The role of the replica where the
      # endpoint is reported. Possible values include: 'Invalid', 'Stateless',
      # 'StatefulPrimary', 'StatefulSecondary'
      attr_accessor :kind

      # @return [String] The address of the endpoint. If the endpoint has
      # multiple listeners the address is a JSON object with one property per
      # listener with the value as the address of that listener.
      attr_accessor :address


      #
      # Mapper for ResolvedServiceEndpoint class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ResolvedServiceEndpoint',
          type: {
            name: 'Composite',
            class_name: 'ResolvedServiceEndpoint',
            model_properties: {
              kind: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Kind',
                type: {
                  name: 'String'
                }
              },
              address: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Address',
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
