# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::EventGrid::Api_2017_06_15_preview
  module Models
    #
    # Result of the List EventSubscriptions operation
    #
    class EventSubscriptionsListResult

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<EventSubscription>] A collection of EventSubscriptions
      attr_accessor :value


      #
      # Mapper for EventSubscriptionsListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'EventSubscriptionsListResult',
          type: {
            name: 'Composite',
            class_name: 'EventSubscriptionsListResult',
            model_properties: {
              value: {
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'EventSubscriptionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'EventSubscription'
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
