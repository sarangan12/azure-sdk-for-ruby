# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_2_0_9
  module Models
    #
    # Represents the health state chunk of a service, which contains the
    # service name, its aggregated health state and any partitions that respect
    # the filters in the cluster health chunk query description.
    #
    class ServiceHealthStateChunk < EntityHealthStateChunk

      include MsRestAzure

      # @return [String] The name of the service whose health state chunk is
      # provided in this object.
      attr_accessor :service_name

      # @return [PartitionHealthStateChunkList] The list of partition health
      # state chunks belonging to the service that respect the filters in the
      # cluster health chunk query description.
      attr_accessor :partition_health_state_chunks


      #
      # Mapper for ServiceHealthStateChunk class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ServiceHealthStateChunk',
          type: {
            name: 'Composite',
            class_name: 'ServiceHealthStateChunk',
            model_properties: {
              health_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'HealthState',
                type: {
                  name: 'String'
                }
              },
              service_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ServiceName',
                type: {
                  name: 'String'
                }
              },
              partition_health_state_chunks: {
                client_side_validation: true,
                required: false,
                serialized_name: 'PartitionHealthStateChunks',
                type: {
                  name: 'Composite',
                  class_name: 'PartitionHealthStateChunkList'
                }
              }
            }
          }
        }
      end
    end
  end
end
