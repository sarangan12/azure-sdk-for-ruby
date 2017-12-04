# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CustomerInsights::Mgmt::V2017_04_26
  module Models
    #
    # The definition of a prediction grade.
    #
    class PredictionGradesItem

      include MsRestAzure

      # @return [String] Name of the grade.
      attr_accessor :grade_name

      # @return [Integer] Minimum score threshold.
      attr_accessor :min_score_threshold

      # @return [Integer] Maximum score threshold.
      attr_accessor :max_score_threshold


      #
      # Mapper for PredictionGradesItem class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Prediction_gradesItem',
          type: {
            name: 'Composite',
            class_name: 'PredictionGradesItem',
            model_properties: {
              grade_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'gradeName',
                type: {
                  name: 'String'
                }
              },
              min_score_threshold: {
                client_side_validation: true,
                required: false,
                serialized_name: 'minScoreThreshold',
                type: {
                  name: 'Number'
                }
              },
              max_score_threshold: {
                client_side_validation: true,
                required: false,
                serialized_name: 'maxScoreThreshold',
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
