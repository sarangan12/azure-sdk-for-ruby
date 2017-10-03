# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::SQL::Api_2014_04_01
  module Models
    #
    # Represents the response to a list advisors request.
    #
    class AdvisorListResult

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<Advisor>] The list of advisors.
      attr_accessor :value


      #
      # Mapper for AdvisorListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AdvisorListResult',
          type: {
            name: 'Composite',
            class_name: 'AdvisorListResult',
            model_properties: {
              value: {
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'AdvisorElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Advisor'
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
