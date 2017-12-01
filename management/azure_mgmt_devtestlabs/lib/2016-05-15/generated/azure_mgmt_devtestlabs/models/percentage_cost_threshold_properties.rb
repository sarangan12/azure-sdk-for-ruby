# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DevTestLabs::Mgmt::V2016_05_15
  module Models
    #
    # Properties of a percentage cost threshold.
    #
    class PercentageCostThresholdProperties

      include MsRestAzure

      # @return [Float] The cost threshold value.
      attr_accessor :threshold_value


      #
      # Mapper for PercentageCostThresholdProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PercentageCostThresholdProperties',
          type: {
            name: 'Composite',
            class_name: 'PercentageCostThresholdProperties',
            model_properties: {
              threshold_value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'thresholdValue',
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
