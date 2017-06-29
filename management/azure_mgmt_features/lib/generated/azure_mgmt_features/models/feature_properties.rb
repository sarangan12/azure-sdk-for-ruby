# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.1.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Features
  module Models
    #
    # Information about feature.
    #
    class FeatureProperties

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The registration state of the feature for the
      # subscription.
      attr_accessor :state


      #
      # Mapper for FeatureProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'FeatureProperties',
          type: {
            name: 'Composite',
            class_name: 'FeatureProperties',
            model_properties: {
              state: {
                required: false,
                serialized_name: 'state',
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
