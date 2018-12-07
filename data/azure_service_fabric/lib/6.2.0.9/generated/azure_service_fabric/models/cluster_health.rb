# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_2_0_9
  module Models
    #
    # Represents the health of the cluster.
    # Contains the cluster aggregated health state, the cluster application and
    # node health states as well as the health events and the unhealthy
    # evaluations.
    #
    class ClusterHealth < EntityHealth

      include MsRestAzure

      # @return [Array<NodeHealthState>] Cluster node health states as found in
      # the health store.
      attr_accessor :node_health_states

      # @return [Array<ApplicationHealthState>] Cluster application health
      # states as found in the health store.
      attr_accessor :application_health_states


      #
      # Mapper for ClusterHealth class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ClusterHealth',
          type: {
            name: 'Composite',
            class_name: 'ClusterHealth',
            model_properties: {
              aggregated_health_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'AggregatedHealthState',
                type: {
                  name: 'String'
                }
              },
              health_events: {
                client_side_validation: true,
                required: false,
                serialized_name: 'HealthEvents',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'HealthEventElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'HealthEvent'
                      }
                  }
                }
              },
              unhealthy_evaluations: {
                client_side_validation: true,
                required: false,
                serialized_name: 'UnhealthyEvaluations',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'HealthEvaluationWrapperElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'HealthEvaluationWrapper'
                      }
                  }
                }
              },
              health_statistics: {
                client_side_validation: true,
                required: false,
                serialized_name: 'HealthStatistics',
                type: {
                  name: 'Composite',
                  class_name: 'HealthStatistics'
                }
              },
              node_health_states: {
                client_side_validation: true,
                required: false,
                serialized_name: 'NodeHealthStates',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'NodeHealthStateElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'NodeHealthState'
                      }
                  }
                }
              },
              application_health_states: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ApplicationHealthStates',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ApplicationHealthStateElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ApplicationHealthState'
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
