# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataMigration::Mgmt::V2018_04_19
  module Models
    #
    # Results for query analysis comparison between the source and target
    #
    class QueryAnalysisValidationResult

      include MsRestAzure

      # @return [QueryExecutionResult] List of queries executed and it's
      # execution results in source and target
      attr_accessor :query_results

      # @return [ValidationError] Errors that are part of the execution
      attr_accessor :validation_errors


      #
      # Mapper for QueryAnalysisValidationResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'QueryAnalysisValidationResult',
          type: {
            name: 'Composite',
            class_name: 'QueryAnalysisValidationResult',
            model_properties: {
              query_results: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'queryResults',
                type: {
                  name: 'Composite',
                  class_name: 'QueryExecutionResult'
                }
              },
              validation_errors: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'validationErrors',
                type: {
                  name: 'Composite',
                  class_name: 'ValidationError'
                }
              }
            }
          }
        }
      end
    end
  end
end
