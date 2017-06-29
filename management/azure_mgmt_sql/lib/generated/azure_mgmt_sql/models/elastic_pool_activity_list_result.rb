# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.1.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::SQL
  module Models
    #
    # Represents the response to a list elastic pool activity request.
    #
    class ElasticPoolActivityListResult

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<ElasticPoolActivity>] The list of elastic pool
      # activities.
      attr_accessor :value


      #
      # Mapper for ElasticPoolActivityListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ElasticPoolActivityListResult',
          type: {
            name: 'Composite',
            class_name: 'ElasticPoolActivityListResult',
            model_properties: {
              value: {
                required: true,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ElasticPoolActivityElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ElasticPoolActivity'
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
