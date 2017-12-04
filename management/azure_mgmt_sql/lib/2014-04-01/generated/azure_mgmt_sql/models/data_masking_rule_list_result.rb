# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SQL::Mgmt::V2014_04_01
  module Models
    #
    # The response to a list data masking rules request.
    #
    class DataMaskingRuleListResult

      include MsRestAzure

      # @return [Array<DataMaskingRule>] The list of database data masking
      # rules.
      attr_accessor :value


      #
      # Mapper for DataMaskingRuleListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DataMaskingRuleListResult',
          type: {
            name: 'Composite',
            class_name: 'DataMaskingRuleListResult',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'DataMaskingRuleElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'DataMaskingRule'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
