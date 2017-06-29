# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.1.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Insights
  module Models
    #
    # Represents a collection of alert rule resources.
    #
    class AlertRuleResourceCollection

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<AlertRuleResource>] the values for the alert rule
      # resources.
      attr_accessor :value


      #
      # Mapper for AlertRuleResourceCollection class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AlertRuleResourceCollection',
          type: {
            name: 'Composite',
            class_name: 'AlertRuleResourceCollection',
            model_properties: {
              value: {
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'AlertRuleResourceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'AlertRuleResource'
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
