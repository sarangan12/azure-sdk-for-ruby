# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Monitor::Mgmt::V2015_04_01
  module Models
    #
    # Email notification of an autoscale event.
    #
    class EmailNotification

      include MsRestAzure

      # @return [Boolean] a value indicating whether to send email to
      # subscription administrator.
      attr_accessor :send_to_subscription_administrator

      # @return [Boolean] a value indicating whether to send email to
      # subscription co-administrators.
      attr_accessor :send_to_subscription_co_administrators

      # @return [Array<String>] the custom e-mails list. This value can be null
      # or empty, in which case this attribute will be ignored.
      attr_accessor :custom_emails


      #
      # Mapper for EmailNotification class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'EmailNotification',
          type: {
            name: 'Composite',
            class_name: 'EmailNotification',
            model_properties: {
              send_to_subscription_administrator: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sendToSubscriptionAdministrator',
                type: {
                  name: 'Boolean'
                }
              },
              send_to_subscription_co_administrators: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sendToSubscriptionCoAdministrators',
                type: {
                  name: 'Boolean'
                }
              },
              custom_emails: {
                client_side_validation: true,
                required: false,
                serialized_name: 'customEmails',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
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
