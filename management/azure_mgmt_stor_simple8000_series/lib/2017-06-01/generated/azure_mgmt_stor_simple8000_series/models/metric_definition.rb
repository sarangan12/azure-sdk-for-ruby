# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::StorSimple8000Series::Api_2017_06_01
  module Models
    #
    # The monitoring metric definition.
    #
    class MetricDefinition

      include MsRestAzure

      include MsRest::JSONable
      # @return [MetricName] The metric name.
      attr_accessor :name

      # @return [MetricUnit] The metric unit. Possible values include: 'Bytes',
      # 'BytesPerSecond', 'Count', 'CountPerSecond', 'Percent', 'Seconds'
      attr_accessor :unit

      # @return [MetricAggregationType] The metric aggregation type. Possible
      # values include: 'Average', 'Last', 'Maximum', 'Minimum', 'None',
      # 'Total'
      attr_accessor :primary_aggregation_type

      # @return [String] The metric source ID.
      attr_accessor :resource_id

      # @return [Array<MetricAvailablity>] The available metric granularities.
      attr_accessor :metric_availabilities

      # @return [Array<MetricDimension>] The available metric dimensions.
      attr_accessor :dimensions

      # @return [String] The category of the metric.
      attr_accessor :category

      # @return [String] The metric definition type.
      attr_accessor :type


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
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'Composite',
                  class_name: 'MetricName'
                }
              },
              unit: {
                required: false,
                serialized_name: 'unit',
                type: {
                  name: 'Enum',
                  module: 'MetricUnit'
                }
              },
              primary_aggregation_type: {
                required: false,
                serialized_name: 'primaryAggregationType',
                type: {
                  name: 'Enum',
                  module: 'MetricAggregationType'
                }
              },
              resource_id: {
                required: false,
                serialized_name: 'resourceId',
                type: {
                  name: 'String'
                }
              },
              metric_availabilities: {
                required: false,
                serialized_name: 'metricAvailabilities',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'MetricAvailablityElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'MetricAvailablity'
                      }
                  }
                }
              },
              dimensions: {
                required: false,
                serialized_name: 'dimensions',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'MetricDimensionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'MetricDimension'
                      }
                  }
                }
              },
              category: {
                required: false,
                serialized_name: 'category',
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
              }
            }
          }
        }
      end
    end
  end
end
