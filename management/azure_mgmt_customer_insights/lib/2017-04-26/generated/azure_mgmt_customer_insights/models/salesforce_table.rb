# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::CustomerInsights::Api_2017_04_26
  module Models
    #
    # Salesforce table.
    #
    class SalesforceTable

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Indicating whether this instance is profile.
      attr_accessor :is_profile

      # @return [String] The table category.
      attr_accessor :table_category

      # @return [String] The name of the table.
      attr_accessor :table_name

      # @return [String] The table remarks.
      attr_accessor :table_remarks

      # @return [String] The table schema.
      attr_accessor :table_schema


      #
      # Mapper for SalesforceTable class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'SalesforceTable',
          type: {
            name: 'Composite',
            class_name: 'SalesforceTable',
            model_properties: {
              is_profile: {
                required: false,
                serialized_name: 'isProfile',
                type: {
                  name: 'String'
                }
              },
              table_category: {
                required: true,
                serialized_name: 'tableCategory',
                type: {
                  name: 'String'
                }
              },
              table_name: {
                required: true,
                serialized_name: 'tableName',
                type: {
                  name: 'String'
                }
              },
              table_remarks: {
                required: false,
                serialized_name: 'tableRemarks',
                type: {
                  name: 'String'
                }
              },
              table_schema: {
                required: true,
                serialized_name: 'tableSchema',
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
