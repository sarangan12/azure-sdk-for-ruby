# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MobileEngagement::Mgmt::V2014_12_01
  module Models
    #
    # Used to target devices based on the language of their device.
    #
    class LanguageCriterion < Criterion

      include MsRestAzure


      def initialize
        @type = "language"
      end

      attr_accessor :type

      # @return [String] Two character language code (ISO 639-1).
      attr_accessor :name


      #
      # Mapper for LanguageCriterion class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'language',
          type: {
            name: 'Composite',
            class_name: 'LanguageCriterion',
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
