# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_3_0_9
  module Models
    #
    # Information about the health of a Service Fabric node.
    #
    class NodeHealth < EntityHealth

      include MsRestAzure

      # @return [String] Name of the node whose health information is described
      # by this object.
      attr_accessor :name


      #
      # Mapper for NodeHealth class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'NodeHealth',
          type: {
            name: 'Composite',
            class_name: 'NodeHealth',
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
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Name',
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
