# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Logic
  module Models
    #
    # The AS2 agreement mdn settings.
    #
    class AS2MdnSettings

      include MsRestAzure

      include MsRest::JSONable
      # @return [Boolean] The value indicating whether to send or request a
      # MDN.
      attr_accessor :need_mdn

      # @return [Boolean] The value indicating whether the MDN needs to be
      # signed or not.
      attr_accessor :sign_mdn

      # @return [Boolean] The value indicating whether to send the asynchronous
      # MDN.
      attr_accessor :send_mdn_asynchronously

      # @return [String] The receipt delivery URL.
      attr_accessor :receipt_delivery_url

      # @return [String] The disposition notification to header value.
      attr_accessor :disposition_notification_to

      # @return [Boolean] The value indicating whether to sign the outbound MDN
      # if optional.
      attr_accessor :sign_outbound_mdn_if_optional

      # @return [String] The MDN text.
      attr_accessor :mdn_text

      # @return [Boolean] The value indicating whether to send inbound MDN to
      # message box.
      attr_accessor :send_inbound_mdn_to_message_box

      # @return [HashingAlgorithm] The signing or hashing algorithm. Possible
      # values include: 'NotSpecified', 'None', 'MD5', 'SHA1', 'SHA2256',
      # 'SHA2384', 'SHA2512'
      attr_accessor :mic_hashing_algorithm


      #
      # Mapper for AS2MdnSettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AS2MdnSettings',
          type: {
            name: 'Composite',
            class_name: 'AS2MdnSettings',
            model_properties: {
              need_mdn: {
                required: true,
                serialized_name: 'needMdn',
                type: {
                  name: 'Boolean'
                }
              },
              sign_mdn: {
                required: true,
                serialized_name: 'signMdn',
                type: {
                  name: 'Boolean'
                }
              },
              send_mdn_asynchronously: {
                required: true,
                serialized_name: 'sendMdnAsynchronously',
                type: {
                  name: 'Boolean'
                }
              },
              receipt_delivery_url: {
                required: false,
                serialized_name: 'receiptDeliveryUrl',
                type: {
                  name: 'String'
                }
              },
              disposition_notification_to: {
                required: false,
                serialized_name: 'dispositionNotificationTo',
                type: {
                  name: 'String'
                }
              },
              sign_outbound_mdn_if_optional: {
                required: true,
                serialized_name: 'signOutboundMdnIfOptional',
                type: {
                  name: 'Boolean'
                }
              },
              mdn_text: {
                required: false,
                serialized_name: 'mdnText',
                type: {
                  name: 'String'
                }
              },
              send_inbound_mdn_to_message_box: {
                required: true,
                serialized_name: 'sendInboundMdnToMessageBox',
                type: {
                  name: 'Boolean'
                }
              },
              mic_hashing_algorithm: {
                required: true,
                serialized_name: 'micHashingAlgorithm',
                type: {
                  name: 'Enum',
                  module: 'HashingAlgorithm'
                }
              }
            }
          }
        }
      end
    end
  end
end
