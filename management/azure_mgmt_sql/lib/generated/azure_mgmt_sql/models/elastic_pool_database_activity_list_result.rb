# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::SQL
  module Models
    #
    # Represents the response to a list elastic pool database activity request.
    #
    class ElasticPoolDatabaseActivityListResult

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<ElasticPoolDatabaseActivity>] The list of elastic pool
      # database activities.
      attr_accessor :value


      #
      # Mapper for ElasticPoolDatabaseActivityListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ElasticPoolDatabaseActivityListResult',
          type: {
            name: 'Composite',
            class_name: 'ElasticPoolDatabaseActivityListResult',
            model_properties: {
              value: {
                required: true,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ElasticPoolDatabaseActivityElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ElasticPoolDatabaseActivity'
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
