# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_3_0_9
  module Models
    #
    # The list of service health state chunks that respect the input filters in
    # the chunk query. Returned by get cluster health state chunks query.
    #
    class ServiceHealthStateChunkList

      include MsRestAzure

      # @return [Array<ServiceHealthStateChunk>] The list of service health
      # state chunks that respect the input filters in the chunk query.
      attr_accessor :items


      #
      # Mapper for ServiceHealthStateChunkList class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ServiceHealthStateChunkList',
          type: {
            name: 'Composite',
            class_name: 'ServiceHealthStateChunkList',
            model_properties: {
              items: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Items',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ServiceHealthStateChunkElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ServiceHealthStateChunk'
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
