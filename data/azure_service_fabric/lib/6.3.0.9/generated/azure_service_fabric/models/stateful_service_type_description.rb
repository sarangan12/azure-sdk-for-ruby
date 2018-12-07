# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_3_0_9
  module Models
    #
    # Describes a stateful service type defined in the service manifest of a
    # provisioned application type.
    #
    class StatefulServiceTypeDescription < ServiceTypeDescription

      include MsRestAzure


      def initialize
        @Kind = "Stateful"
      end

      attr_accessor :Kind

      # @return [Boolean] A flag indicating whether this is a persistent
      # service which stores states on the local disk. If it is then the value
      # of this property is true, if not it is false.
      attr_accessor :has_persisted_state


      #
      # Mapper for StatefulServiceTypeDescription class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Stateful',
          type: {
            name: 'Composite',
            class_name: 'StatefulServiceTypeDescription',
            model_properties: {
              is_stateful: {
                client_side_validation: true,
                required: false,
                serialized_name: 'IsStateful',
                type: {
                  name: 'Boolean'
                }
              },
              service_type_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ServiceTypeName',
                type: {
                  name: 'String'
                }
              },
              placement_constraints: {
                client_side_validation: true,
                required: false,
                serialized_name: 'PlacementConstraints',
                type: {
                  name: 'String'
                }
              },
              load_metrics: {
                client_side_validation: true,
                required: false,
                serialized_name: 'LoadMetrics',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ServiceLoadMetricDescriptionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ServiceLoadMetricDescription'
                      }
                  }
                }
              },
              service_placement_policies: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ServicePlacementPolicies',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ServicePlacementPolicyDescriptionElementType',
                      type: {
                        name: 'Composite',
                        polymorphic_discriminator: 'Type',
                        uber_parent: 'ServicePlacementPolicyDescription',
                        class_name: 'ServicePlacementPolicyDescription'
                      }
                  }
                }
              },
              extensions: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Extensions',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ServiceTypeExtensionDescriptionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ServiceTypeExtensionDescription'
                      }
                  }
                }
              },
              Kind: {
                client_side_validation: true,
                required: true,
                serialized_name: 'Kind',
                type: {
                  name: 'String'
                }
              },
              has_persisted_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'HasPersistedState',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
