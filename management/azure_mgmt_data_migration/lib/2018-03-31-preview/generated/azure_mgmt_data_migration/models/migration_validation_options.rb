# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataMigration::Mgmt::V2018_03_31_preview
  module Models
    #
    # Types of validations to run after the migration
    #
    class MigrationValidationOptions

      include MsRestAzure

      # @return [Boolean] Allows to compare the schema information between
      # source and target.
      attr_accessor :enable_schema_validation

      # @return [Boolean] Allows to perform a checksum based data integrity
      # validation between source and target for the selected database / tables
      # .
      attr_accessor :enable_data_integrity_validation

      # @return [Boolean] Allows to perform a quick and intelligent query
      # analysis by retrieving queries from the source database and executes
      # them in the target. The result will have execution statistics for
      # executions in source and target databases for the extracted queries.
      attr_accessor :enable_query_analysis_validation


      #
      # Mapper for MigrationValidationOptions class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MigrationValidationOptions',
          type: {
            name: 'Composite',
            class_name: 'MigrationValidationOptions',
            model_properties: {
              enable_schema_validation: {
                client_side_validation: true,
                required: false,
                serialized_name: 'enableSchemaValidation',
                type: {
                  name: 'Boolean'
                }
              },
              enable_data_integrity_validation: {
                client_side_validation: true,
                required: false,
                serialized_name: 'enableDataIntegrityValidation',
                type: {
                  name: 'Boolean'
                }
              },
              enable_query_analysis_validation: {
                client_side_validation: true,
                required: false,
                serialized_name: 'enableQueryAnalysisValidation',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
