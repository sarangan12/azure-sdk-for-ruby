# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Monitor
  module Models
    #
    # The action that is performed when the alert rule becomes active, and when
    # an alert condition is resolved.
    #
    class RuleAction

      include MsRestAzure

      include MsRest::JSONable
      @@discriminatorMap = Hash.new
      @@discriminatorMap["Microsoft.Azure.Management.Insights.Models.RuleEmailAction"] = "RuleEmailAction"
      @@discriminatorMap["Microsoft.Azure.Management.Insights.Models.RuleWebhookAction"] = "RuleWebhookAction"

      def initialize
        @odata.type = "RuleAction"
      end

      attr_accessor :odata.type


      #
      # Mapper for RuleAction class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RuleAction',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'odata.type',
            uber_parent: 'RuleAction',
            class_name: 'RuleAction',
            model_properties: {
            }
          }
        }
      end
    end
  end
end
