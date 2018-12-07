# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_4_0_36
  module Models
    #
    # Describes a stateless service.
    #
    class StatelessServiceDescription < ServiceDescription

      include MsRestAzure


      def initialize
        @ServiceKind = "Stateless"
      end

      attr_accessor :ServiceKind

      # @return [Integer] The instance count.
      attr_accessor :instance_count


      #
      # Mapper for StatelessServiceDescription class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Stateless',
          type: {
            name: 'Composite',
            class_name: 'StatelessServiceDescription',
            model_properties: {
              application_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ApplicationName',
                type: {
                  name: 'String'
                }
              },
              service_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'ServiceName',
                type: {
                  name: 'String'
                }
              },
              service_type_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'ServiceTypeName',
                type: {
                  name: 'String'
                }
              },
              initialization_data: {
                client_side_validation: true,
                required: false,
                serialized_name: 'InitializationData',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'NumberElementType',
                      type: {
                        name: 'Number'
                      }
                  }
                }
              },
              partition_description: {
                client_side_validation: true,
                required: true,
                serialized_name: 'PartitionDescription',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'PartitionScheme',
                  uber_parent: 'PartitionSchemeDescription',
                  class_name: 'PartitionSchemeDescription'
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
              correlation_scheme: {
                client_side_validation: true,
                required: false,
                serialized_name: 'CorrelationScheme',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ServiceCorrelationDescriptionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ServiceCorrelationDescription'
                      }
                  }
                }
              },
              service_load_metrics: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ServiceLoadMetrics',
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
              default_move_cost: {
                client_side_validation: true,
                required: false,
                serialized_name: 'DefaultMoveCost',
                type: {
                  name: 'String'
                }
              },
              is_default_move_cost_specified: {
                client_side_validation: true,
                required: false,
                serialized_name: 'IsDefaultMoveCostSpecified',
                type: {
                  name: 'Boolean'
                }
              },
              service_package_activation_mode: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ServicePackageActivationMode',
                type: {
                  name: 'String'
                }
              },
              service_dns_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ServiceDnsName',
                type: {
                  name: 'String'
                }
              },
              scaling_policies: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ScalingPolicies',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ScalingPolicyDescriptionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ScalingPolicyDescription'
                      }
                  }
                }
              },
              ServiceKind: {
                client_side_validation: true,
                required: true,
                serialized_name: 'ServiceKind',
                type: {
                  name: 'String'
                }
              },
              instance_count: {
                client_side_validation: true,
                required: true,
                serialized_name: 'InstanceCount',
                constraints: {
                  InclusiveMinimum: -1
                },
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
