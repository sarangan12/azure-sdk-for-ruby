# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataMigration::Mgmt::V2017_11_15_preview
  module Models
    #
    # Describes query analysis results for execution in source and target
    #
    class QueryExecutionResult

      include MsRestAzure

      # @return [String] Query text retrieved from the source server
      attr_accessor :query_text

      # @return [Integer] Total no. of statements in the batch
      attr_accessor :statements_in_batch

      # @return [ExecutionStatistics] Query analysis result from the source
      attr_accessor :source_result

      # @return [ExecutionStatistics] Query analysis result from the target
      attr_accessor :target_result


      #
      # Mapper for QueryExecutionResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'QueryExecutionResult',
          type: {
            name: 'Composite',
            class_name: 'QueryExecutionResult',
            model_properties: {
              query_text: {
                client_side_validation: true,
                required: false,
                serialized_name: 'queryText',
                type: {
                  name: 'String'
                }
              },
              statements_in_batch: {
                client_side_validation: true,
                required: false,
                serialized_name: 'statementsInBatch',
                type: {
                  name: 'Number'
                }
              },
              source_result: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sourceResult',
                type: {
                  name: 'Composite',
                  class_name: 'ExecutionStatistics'
                }
              },
              target_result: {
                client_side_validation: true,
                required: false,
                serialized_name: 'targetResult',
                type: {
                  name: 'Composite',
                  class_name: 'ExecutionStatistics'
                }
              }
            }
          }
        }
      end
    end
  end
end
