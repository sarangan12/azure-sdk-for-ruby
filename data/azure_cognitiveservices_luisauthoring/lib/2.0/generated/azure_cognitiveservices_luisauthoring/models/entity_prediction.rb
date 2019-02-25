# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::LuisAuthoring::V2_0
  module Models
    #
    # A suggested entity.
    #
    class EntityPrediction

      include MsRestAzure

      # @return [String] The entity's name
      attr_accessor :entity_name

      # @return [Integer] The index within the utterance where the extracted
      # entity starts.
      attr_accessor :start_token_index

      # @return [Integer] The index within the utterance where the extracted
      # entity ends.
      attr_accessor :end_token_index

      # @return [String] The actual token(s) that comprise the entity.
      attr_accessor :phrase


      #
      # Mapper for EntityPrediction class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'EntityPrediction',
          type: {
            name: 'Composite',
            class_name: 'EntityPrediction',
            model_properties: {
              entity_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'entityName',
                type: {
                  name: 'String'
                }
              },
              start_token_index: {
                client_side_validation: true,
                required: true,
                serialized_name: 'startTokenIndex',
                type: {
                  name: 'Number'
                }
              },
              end_token_index: {
                client_side_validation: true,
                required: true,
                serialized_name: 'endTokenIndex',
                type: {
                  name: 'Number'
                }
              },
              phrase: {
                client_side_validation: true,
                required: true,
                serialized_name: 'phrase',
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
