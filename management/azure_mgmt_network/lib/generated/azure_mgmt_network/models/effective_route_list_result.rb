# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Network
  module Models
    #
    # Response for list effective route API service call.
    #
    class EffectiveRouteListResult

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<EffectiveRoute>] A list of effective routes.
      attr_accessor :value

      # @return [String] The URL to get the next set of results.
      attr_accessor :next_link


      #
      # Mapper for EffectiveRouteListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'EffectiveRouteListResult',
          type: {
            name: 'Composite',
            class_name: 'EffectiveRouteListResult',
            model_properties: {
              value: {
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'EffectiveRouteElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'EffectiveRoute'
                      }
                  }
                }
              },
              next_link: {
                required: false,
                serialized_name: 'nextLink',
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
