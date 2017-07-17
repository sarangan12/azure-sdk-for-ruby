# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Monitor
  module Models
    #
    # Autoscale notification.
    #
    class AutoscaleNotification

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] the operation associated with the notification and its
      # value must be "scale". Default value: 'Scale' .
      attr_accessor :operation

      # @return [EmailNotification] the email notification.
      attr_accessor :email

      # @return [Array<WebhookNotification>] the collection of webhook
      # notifications.
      attr_accessor :webhooks


      #
      # Mapper for AutoscaleNotification class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AutoscaleNotification',
          type: {
            name: 'Composite',
            class_name: 'AutoscaleNotification',
            model_properties: {
              operation: {
                required: true,
                is_constant: true,
                serialized_name: 'operation',
                default_value: 'Scale',
                type: {
                  name: 'String'
                }
              },
              email: {
                required: false,
                serialized_name: 'email',
                type: {
                  name: 'Composite',
                  class_name: 'EmailNotification'
                }
              },
              webhooks: {
                required: false,
                serialized_name: 'webhooks',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'WebhookNotificationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'WebhookNotification'
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
