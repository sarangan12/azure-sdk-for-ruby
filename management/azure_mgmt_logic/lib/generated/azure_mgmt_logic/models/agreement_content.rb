# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Logic
  module Models
    #
    # The integration account agreement content.
    #
    class AgreementContent

      include MsRestAzure

      include MsRest::JSONable
      # @return [AS2AgreementContent] The AS2 agreement content.
      attr_accessor :a_s2

      # @return [X12AgreementContent] The X12 agreement content.
      attr_accessor :x12

      # @return [EdifactAgreementContent] The EDIFACT agreement content.
      attr_accessor :edifact


      #
      # Mapper for AgreementContent class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AgreementContent',
          type: {
            name: 'Composite',
            class_name: 'AgreementContent',
            model_properties: {
              a_s2: {
                required: false,
                serialized_name: 'aS2',
                type: {
                  name: 'Composite',
                  class_name: 'AS2AgreementContent'
                }
              },
              x12: {
                required: false,
                serialized_name: 'x12',
                type: {
                  name: 'Composite',
                  class_name: 'X12AgreementContent'
                }
              },
              edifact: {
                required: false,
                serialized_name: 'edifact',
                type: {
                  name: 'Composite',
                  class_name: 'EdifactAgreementContent'
                }
              }
            }
          }
        }
      end
    end
  end
end
