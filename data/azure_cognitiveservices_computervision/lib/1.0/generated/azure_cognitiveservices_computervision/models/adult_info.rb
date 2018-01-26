# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::ComputerVision::V1_0
  module Models
    #
    # An object describing whether the image contains adult-oriented content
    # and/or is racy.
    #
    class AdultInfo

      include MsRestAzure

      # @return [Boolean] A value indicating if the image contains
      # adult-oriented content.
      attr_accessor :is_adult_content

      # @return [Boolean] A value indicating if the image is race.
      attr_accessor :is_racy_content

      # @return [Float] Score from 0 to 1 that indicates how much of adult
      # content is within the image.
      attr_accessor :adult_score

      # @return [Float] Score from 0 to 1 that indicates how suggestive is the
      # image.
      attr_accessor :racy_score


      #
      # Mapper for AdultInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AdultInfo',
          type: {
            name: 'Composite',
            class_name: 'AdultInfo',
            model_properties: {
              is_adult_content: {
                client_side_validation: true,
                required: false,
                serialized_name: 'isAdultContent',
                type: {
                  name: 'Boolean'
                }
              },
              is_racy_content: {
                client_side_validation: true,
                required: false,
                serialized_name: 'isRacyContent',
                type: {
                  name: 'Boolean'
                }
              },
              adult_score: {
                client_side_validation: true,
                required: false,
                serialized_name: 'adultScore',
                type: {
                  name: 'Double'
                }
              },
              racy_score: {
                client_side_validation: true,
                required: false,
                serialized_name: 'racyScore',
                type: {
                  name: 'Double'
                }
              }
            }
          }
        }
      end
    end
  end
end
