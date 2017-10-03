# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::MobileEngagement::Api_2014_12_01
  module Models
    #
    # Used to target devices based on their last know area.
    #
    class LocationCriterion < Criterion

      include MsRestAzure

      include MsRest::JSONable

      def initialize
        @type = "location"
      end

      attr_accessor :type

      # @return [String] Two character country code where the user is located
      # (ISO 3166-1).
      attr_accessor :country

      # @return [String] An administrative region of the country, such as a
      # state or province.
      attr_accessor :region

      # @return [String] A locality within the administrative region, such as a
      # town or city.
      attr_accessor :locality


      #
      # Mapper for LocationCriterion class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'location',
          type: {
            name: 'Composite',
            class_name: 'LocationCriterion',
            model_properties: {
              type: {
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              country: {
                required: false,
                serialized_name: 'country',
                type: {
                  name: 'String'
                }
              },
              region: {
                required: false,
                serialized_name: 'region',
                type: {
                  name: 'String'
                }
              },
              locality: {
                required: false,
                serialized_name: 'locality',
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
