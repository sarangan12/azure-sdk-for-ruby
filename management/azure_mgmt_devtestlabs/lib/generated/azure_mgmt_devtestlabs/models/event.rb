# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::DevTestLabs
  module Models
    #
    # An event to be notified for.
    #
    class Event

      include MsRestAzure

      include MsRest::JSONable
      # @return [NotificationChannelEventType] The event type for which this
      # notification is enabled (i.e. AutoShutdown, Cost). Possible values
      # include: 'AutoShutdown', 'Cost'
      attr_accessor :event_name


      #
      # Mapper for Event class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Event',
          type: {
            name: 'Composite',
            class_name: 'Event',
            model_properties: {
              event_name: {
                required: false,
                serialized_name: 'eventName',
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
