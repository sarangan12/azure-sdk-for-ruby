# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Monitor
  module Models
    #
    # A rule condition based on a metric crossing a threshold.
    #
    class ThresholdRuleCondition < RuleCondition

      include MsRestAzure


      def initialize
        @odata_type = "Microsoft.Azure.Management.Insights.Models.ThresholdRuleCondition"
      end

      attr_accessor :odata_type

      # @return [ConditionOperator] the operator used to compare the data and
      # the threshold. Possible values include: 'GreaterThan',
      # 'GreaterThanOrEqual', 'LessThan', 'LessThanOrEqual'
      attr_accessor :operator

      # @return [Float] the threshold value that activates the alert.
      attr_accessor :threshold

      # @return [Duration] the period of time (in ISO 8601 duration format)
      # that is used to monitor alert activity based on the threshold. If
      # specified then it must be between 5 minutes and 1 day.
      attr_accessor :window_size

      # @return [TimeAggregationOperator] the time aggregation operator. How
      # the data that are collected should be combined over time. The default
      # value is the PrimaryAggregationType of the Metric. Possible values
      # include: 'Average', 'Minimum', 'Maximum', 'Total', 'Last'
      attr_accessor :time_aggregation


      #
      # Mapper for ThresholdRuleCondition class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Microsoft.Azure.Management.Insights.Models.ThresholdRuleCondition',
          type: {
            name: 'Composite',
            class_name: 'ThresholdRuleCondition',
            model_properties: {
              data_source: {
                required: false,
                serialized_name: 'dataSource',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'odata.type',
                  uber_parent: 'RuleDataSource',
                  class_name: 'RuleDataSource'
                }
              },
              odata_type: {
                required: true,
                serialized_name: 'odata\\.type',
                type: {
                  name: 'String'
                }
              },
              operator: {
                required: true,
                serialized_name: 'operator',
                type: {
                  name: 'Enum',
                  module: 'ConditionOperator'
                }
              },
              threshold: {
                required: true,
                serialized_name: 'threshold',
                type: {
                  name: 'Double'
                }
              },
              window_size: {
                required: false,
                serialized_name: 'windowSize',
                type: {
                  name: 'TimeSpan'
                }
              },
              time_aggregation: {
                required: false,
                serialized_name: 'timeAggregation',
                type: {
                  name: 'Enum',
                  module: 'TimeAggregationOperator'
                }
              }
            }
          }
        }
      end
    end
  end
end
