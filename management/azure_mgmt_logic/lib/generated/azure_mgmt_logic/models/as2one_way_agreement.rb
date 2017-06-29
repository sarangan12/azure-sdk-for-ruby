# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.1.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Logic
  module Models
    #
    # The integration account AS2 oneway agreement.
    #
    class AS2OneWayAgreement

      include MsRestAzure

      include MsRest::JSONable
      # @return [BusinessIdentity] The sender business identity
      attr_accessor :sender_business_identity

      # @return [BusinessIdentity] The receiver business identity
      attr_accessor :receiver_business_identity

      # @return [AS2ProtocolSettings] The AS2 protocol settings.
      attr_accessor :protocol_settings


      #
      # Mapper for AS2OneWayAgreement class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AS2OneWayAgreement',
          type: {
            name: 'Composite',
            class_name: 'AS2OneWayAgreement',
            model_properties: {
              sender_business_identity: {
                required: true,
                serialized_name: 'senderBusinessIdentity',
                type: {
                  name: 'Composite',
                  class_name: 'BusinessIdentity'
                }
              },
              receiver_business_identity: {
                required: true,
                serialized_name: 'receiverBusinessIdentity',
                type: {
                  name: 'Composite',
                  class_name: 'BusinessIdentity'
                }
              },
              protocol_settings: {
                required: true,
                serialized_name: 'protocolSettings',
                type: {
                  name: 'Composite',
                  class_name: 'AS2ProtocolSettings'
                }
              }
            }
          }
        }
      end
    end
  end
end
