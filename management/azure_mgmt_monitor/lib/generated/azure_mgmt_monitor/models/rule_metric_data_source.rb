# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Monitor
  module Models
    #
    # A rule metric data source. The discriminator value is always
    # RuleMetricDataSource in this case.
    #
    class RuleMetricDataSource < RuleDataSource

      include MsRestAzure


      def initialize
        @odata_type = "Microsoft.Azure.Management.Insights.Models.RuleMetricDataSource"
      end

      attr_accessor :odata_type

      # @return [String] the name of the metric that defines what the rule
      # monitors.
      attr_accessor :metric_name


      #
      # Mapper for RuleMetricDataSource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Microsoft.Azure.Management.Insights.Models.RuleMetricDataSource',
          type: {
            name: 'Composite',
            class_name: 'RuleMetricDataSource',
            model_properties: {
              resource_uri: {
                required: false,
                serialized_name: 'resourceUri',
                type: {
                  name: 'String'
                }
              },
              odata_type: {
                required: true,
                serialized_name: 'odata\\.type',
                type: {
                  name: 'String'
                }
              },
              metric_name: {
                required: false,
                serialized_name: 'metricName',
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
