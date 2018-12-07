# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_4_0_36
  module Models
    #
    # The list of partition in the cluster for a service. The list is paged
    # when all of the results cannot fit in a single message. The next set of
    # results can be obtained by executing the same query with the continuation
    # token provided in this list.
    #
    class PagedServicePartitionInfoList

      include MsRestAzure

      # @return [String] The continuation token parameter is used to obtain
      # next set of results. The continuation token is included in the response
      # of the API when the results from the system do not fit in a single
      # response. When this value is passed to the next API call, the API
      # returns next set of results. If there are no further results, then the
      # continuation token is not included in the response.
      attr_accessor :continuation_token

      # @return [Array<ServicePartitionInfo>] List of service partition
      # information.
      attr_accessor :items


      #
      # Mapper for PagedServicePartitionInfoList class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PagedServicePartitionInfoList',
          type: {
            name: 'Composite',
            class_name: 'PagedServicePartitionInfoList',
            model_properties: {
              continuation_token: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ContinuationToken',
                type: {
                  name: 'String'
                }
              },
              items: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Items',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ServicePartitionInfoElementType',
                      type: {
                        name: 'Composite',
                        polymorphic_discriminator: 'ServiceKind',
                        uber_parent: 'ServicePartitionInfo',
                        class_name: 'ServicePartitionInfo'
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
