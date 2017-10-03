# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Features::Api_2015_12_01
  module Models
    #
    # Previewed feature information.
    #
    class FeatureResult

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The name of the feature.
      attr_accessor :name

      # @return [FeatureProperties] Properties of the previewed feature.
      attr_accessor :properties

      # @return [String] The resource ID of the feature.
      attr_accessor :id

      # @return [String] The resource type of the feature.
      attr_accessor :type


      #
      # Mapper for FeatureResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'FeatureResult',
          type: {
            name: 'Composite',
            class_name: 'FeatureResult',
            model_properties: {
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              properties: {
                required: false,
                serialized_name: 'properties',
                type: {
                  name: 'Composite',
                  class_name: 'FeatureProperties'
                }
              },
              id: {
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                serialized_name: 'type',
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
