# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::SQL
  module Models
    #
    # Database metrics.
    #
    class Metric

      include MsRestAzure

      include MsRest::JSONable
      # @return [DateTime] The start time for the metric (ISO-8601 format).
      attr_accessor :start_time

      # @return [DateTime] The end time for the metric (ISO-8601 format).
      attr_accessor :end_time

      # @return [String] The time step to be used to summarize the metric
      # values.
      attr_accessor :time_grain

      # @return [UnitType] The unit of the metric. Possible values include:
      # 'count', 'bytes', 'seconds', 'percent', 'countPerSecond',
      # 'bytesPerSecond'
      attr_accessor :unit

      # @return [MetricName] The name information for the metric.
      attr_accessor :name

      # @return [Array<MetricValue>] The metric values for the specified time
      # window and timestep.
      attr_accessor :metric_values


      #
      # Mapper for Metric class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Metric',
          type: {
            name: 'Composite',
            class_name: 'Metric',
            model_properties: {
              start_time: {
                required: false,
                read_only: true,
                serialized_name: 'startTime',
                type: {
                  name: 'DateTime'
                }
              },
              end_time: {
                required: false,
                read_only: true,
                serialized_name: 'endTime',
                type: {
                  name: 'DateTime'
                }
              },
              time_grain: {
                required: false,
                read_only: true,
                serialized_name: 'timeGrain',
                type: {
                  name: 'String'
                }
              },
              unit: {
                required: false,
                read_only: true,
                serialized_name: 'unit',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'Composite',
                  class_name: 'MetricName'
                }
              },
              metric_values: {
                required: false,
                read_only: true,
                serialized_name: 'metricValues',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'MetricValueElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'MetricValue'
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
