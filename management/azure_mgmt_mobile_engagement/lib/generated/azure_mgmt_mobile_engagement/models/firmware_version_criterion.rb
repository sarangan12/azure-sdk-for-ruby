# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.1.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::MobileEngagement
  module Models
    #
    # Used to target devices based on their firmware version.
    #
    class FirmwareVersionCriterion < Criterion

      include MsRestAzure

      include MsRest::JSONable

      def initialize
        @type = "firmware-version"
      end

      attr_accessor :type

      # @return [String] Firmware version.
      attr_accessor :name


      #
      # Mapper for FirmwareVersionCriterion class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'firmware-version',
          type: {
            name: 'Composite',
            class_name: 'FirmwareVersionCriterion',
            model_properties: {
              type: {
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                serialized_name: 'name',
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
