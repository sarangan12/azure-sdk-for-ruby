# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.1.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Logic
  module Models
    #
    # The B2B partner content.
    #
    class B2BPartnerContent

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<BusinessIdentity>] The list of partner business
      # identities.
      attr_accessor :business_identities


      #
      # Mapper for B2BPartnerContent class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'B2BPartnerContent',
          type: {
            name: 'Composite',
            class_name: 'B2BPartnerContent',
            model_properties: {
              business_identities: {
                required: false,
                serialized_name: 'businessIdentities',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'BusinessIdentityElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'BusinessIdentity'
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
