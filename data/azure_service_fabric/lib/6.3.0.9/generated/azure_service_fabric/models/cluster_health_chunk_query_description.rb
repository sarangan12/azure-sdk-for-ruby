# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_3_0_9
  module Models
    #
    # The cluster health chunk query description, which can specify the health
    # policies to evaluate cluster health and very expressive filters to select
    # which cluster entities to include in response.
    #
    class ClusterHealthChunkQueryDescription

      include MsRestAzure

      # @return [Array<NodeHealthStateFilter>] Defines a list of filters that
      # specify which nodes to be included in the returned cluster health
      # chunk.
      # If no filters are specified, no nodes are returned. All the nodes are
      # used to evaluate the cluster's aggregated health state, regardless of
      # the input filters.
      # The cluster health chunk query may specify multiple node filters.
      # For example, it can specify a filter to return all nodes with health
      # state Error and another filter to always include a node identified by
      # its NodeName.
      attr_accessor :node_filters

      # @return [Array<ApplicationHealthStateFilter>] Defines a list of filters
      # that specify which applications to be included in the returned cluster
      # health chunk.
      # If no filters are specified, no applications are returned. All the
      # applications are used to evaluate the cluster's aggregated health
      # state, regardless of the input filters.
      # The cluster health chunk query may specify multiple application
      # filters.
      # For example, it can specify a filter to return all applications with
      # health state Error and another filter to always include applications of
      # a specified application type.
      attr_accessor :application_filters

      # @return [ClusterHealthPolicy] Defines a health policy used to evaluate
      # the health of the cluster or of a cluster node.
      attr_accessor :cluster_health_policy

      # @return [ApplicationHealthPolicies] Defines the application health
      # policy map used to evaluate the health of an application or one of its
      # children entities.
      attr_accessor :application_health_policies


      #
      # Mapper for ClusterHealthChunkQueryDescription class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ClusterHealthChunkQueryDescription',
          type: {
            name: 'Composite',
            class_name: 'ClusterHealthChunkQueryDescription',
            model_properties: {
              node_filters: {
                client_side_validation: true,
                required: false,
                serialized_name: 'NodeFilters',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'NodeHealthStateFilterElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'NodeHealthStateFilter'
                      }
                  }
                }
              },
              application_filters: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ApplicationFilters',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ApplicationHealthStateFilterElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ApplicationHealthStateFilter'
                      }
                  }
                }
              },
              cluster_health_policy: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ClusterHealthPolicy',
                type: {
                  name: 'Composite',
                  class_name: 'ClusterHealthPolicy'
                }
              },
              application_health_policies: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ApplicationHealthPolicies',
                type: {
                  name: 'Composite',
                  class_name: 'ApplicationHealthPolicies'
                }
              }
            }
          }
        }
      end
    end
  end
end
