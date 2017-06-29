# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.1.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Logic
  module Models
    #
    # The AS2 agreement error settings.
    #
    class AS2ErrorSettings

      include MsRestAzure

      include MsRest::JSONable
      # @return [Boolean] The value indicating whether to suspend duplicate
      # message.
      attr_accessor :suspend_duplicate_message

      # @return [Boolean] The value indicating whether to resend message If MDN
      # is not received.
      attr_accessor :resend_if_mdn_not_received


      #
      # Mapper for AS2ErrorSettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AS2ErrorSettings',
          type: {
            name: 'Composite',
            class_name: 'AS2ErrorSettings',
            model_properties: {
              suspend_duplicate_message: {
                required: true,
                serialized_name: 'suspendDuplicateMessage',
                type: {
                  name: 'Boolean'
                }
              },
              resend_if_mdn_not_received: {
                required: true,
                serialized_name: 'resendIfMdnNotReceived',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
