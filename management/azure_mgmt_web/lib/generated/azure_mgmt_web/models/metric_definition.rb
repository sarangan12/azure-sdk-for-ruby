# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # Metadata for a metric.
    #
    class MetricDefinition < MsRestAzure::Resource

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Name of the metric.
      attr_accessor :metric_definition_name

      # @return [String] Unit of the metric.
      attr_accessor :unit

      # @return [String] Primary aggregation type.
      attr_accessor :primary_aggregation_type

      # @return [Array<MetricAvailabilily>] List of time grains supported for
      # the metric together with retention period.
      attr_accessor :metric_availabilities

      # @return [String] Friendly name shown in the UI.
      attr_accessor :display_name


      #
      # Mapper for MetricDefinition class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'MetricDefinition',
          type: {
            name: 'Composite',
            class_name: 'MetricDefinition',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              kind: {
                required: false,
                serialized_name: 'kind',
                type: {
                  name: 'String'
                }
              },
              location: {
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              tags: {
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              metric_definition_name: {
                required: false,
                read_only: true,
                serialized_name: 'properties.name',
                type: {
                  name: 'String'
                }
              },
              unit: {
                required: false,
                read_only: true,
                serialized_name: 'properties.unit',
                type: {
                  name: 'String'
                }
              },
              primary_aggregation_type: {
                required: false,
                read_only: true,
                serialized_name: 'properties.primaryAggregationType',
                type: {
                  name: 'String'
                }
              },
              metric_availabilities: {
                required: false,
                read_only: true,
                serialized_name: 'properties.metricAvailabilities',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'MetricAvailabililyElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'MetricAvailabilily'
                      }
                  }
                }
              },
              display_name: {
                required: false,
                read_only: true,
                serialized_name: 'properties.displayName',
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
