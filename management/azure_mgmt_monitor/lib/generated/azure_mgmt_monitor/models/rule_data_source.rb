# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Monitor
  module Models
    #
    # The resource from which the rule collects its data.
    #
    class RuleDataSource

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["Microsoft.Azure.Management.Insights.Models.RuleMetricDataSource"] = "RuleMetricDataSource"
      @@discriminatorMap["Microsoft.Azure.Management.Insights.Models.RuleManagementEventDataSource"] = "RuleManagementEventDataSource"

      def initialize
        @odata_type = "RuleDataSource"
      end

      attr_accessor :odata_type

      # @return [String] the resource identifier of the resource the rule
      # monitors. **NOTE**: this property cannot be updated for an existing
      # rule.
      attr_accessor :resource_uri


      #
      # Mapper for RuleDataSource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RuleDataSource',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'odata.type',
            uber_parent: 'RuleDataSource',
            class_name: 'RuleDataSource',
            model_properties: {
              resource_uri: {
                required: false,
                serialized_name: 'resourceUri',
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
