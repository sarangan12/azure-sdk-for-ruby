# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::ContentModerator::V1_0
  module Models
    #
    # Phone Property details.
    #
    class Phone

      include MsRestAzure

      # @return [String] CountryCode of the detected Phone number.
      attr_accessor :country_code

      # @return [String] Detected Phone number.
      attr_accessor :text

      # @return [Integer] Index(Location) of the Phone number in the input text
      # content.
      attr_accessor :index


      #
      # Mapper for Phone class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Phone',
          type: {
            name: 'Composite',
            class_name: 'Phone',
            model_properties: {
              country_code: {
                client_side_validation: true,
                required: false,
                serialized_name: 'CountryCode',
                type: {
                  name: 'String'
                }
              },
              text: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Text',
                type: {
                  name: 'String'
                }
              },
              index: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Index',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
