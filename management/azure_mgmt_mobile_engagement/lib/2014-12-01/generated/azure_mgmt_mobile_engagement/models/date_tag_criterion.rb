# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MobileEngagement::Mgmt::V2014_12_01
  module Models
    #
    # Target devices based on a date tag value.
    #
    class DateTagCriterion < Criterion

      include MsRestAzure


      def initialize
        @type = "date-tag"
      end

      attr_accessor :type

      # @return [String] The name of the custom tag.
      attr_accessor :name

      # @return [Date] It can be either: * an absolute date using yyyy-MM-dd
      # format (e.g. 1969-12-07 stands for 7 Dec 1969). * an offset in days
      # relative to the current day (`TODAY` + `value`).
      #
      attr_accessor :value

      # @return [AudienceOperators] comparison operator: `EQ` (equal to), `LT`
      # (less than), `GT` (greater than), `LE` (less than or equal to) or `GE`
      # (greater than or equal to). Possible values include: 'EQ', 'LT', 'GT',
      # 'LE', 'GE'
      attr_accessor :op


      #
      # Mapper for DateTagCriterion class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'date-tag',
          type: {
            name: 'Composite',
            class_name: 'DateTagCriterion',
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
              },
              value: {
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Date'
                }
              },
              op: {
                required: false,
                serialized_name: 'op',
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
