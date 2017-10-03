# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Monitor::Api_2016_03_01
  module Models
    #
    # A rule condition based on a certain number of locations failing.
    #
    class LocationThresholdRuleCondition < RuleCondition

      include MsRestAzure

      include MsRest::JSONable

      def initialize
        @odata.type = "Microsoft.Azure.Management.Insights.Models.LocationThresholdRuleCondition"
      end

      attr_accessor :odata.type

      # @return [Duration] the period of time (in ISO 8601 duration format)
      # that is used to monitor alert activity based on the threshold. If
      # specified then it must be between 5 minutes and 1 day.
      attr_accessor :window_size

      # @return [Integer] the number of locations that must fail to activate
      # the alert.
      attr_accessor :failed_location_count


      #
      # Mapper for LocationThresholdRuleCondition class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Microsoft.Azure.Management.Insights.Models.LocationThresholdRuleCondition',
          type: {
            name: 'Composite',
            class_name: 'LocationThresholdRuleCondition',
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
              odata.type: {
                required: true,
                serialized_name: 'odata\\.type',
                type: {
                  name: 'String'
                }
              },
              window_size: {
                required: false,
                serialized_name: 'windowSize',
                type: {
                  name: 'TimeSpan'
                }
              },
              failed_location_count: {
                required: true,
                serialized_name: 'failedLocationCount',
                constraints: {
                  InclusiveMinimum: 0
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
