# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataMigration::Mgmt::V2017_11_15_preview
  module Models
    #
    # Database level validation results
    #
    class MigrationValidationDatabaseLevelResult

      include MsRestAzure

      # @return [String] Result identifier
      attr_accessor :id

      # @return [String] Migration Identifier
      attr_accessor :migration_id

      # @return [String] Name of the source database
      attr_accessor :source_database_name

      # @return [String] Name of the target database
      attr_accessor :target_database_name

      # @return [DateTime] Validation start time
      attr_accessor :started_on

      # @return [DateTime] Validation end time
      attr_accessor :ended_on

      # @return [DataIntegrityValidationResult] Provides data integrity
      # validation result between the source and target tables that are
      # migrated.
      attr_accessor :data_integrity_validation_result

      # @return [SchemaComparisonValidationResult] Provides schema comparison
      # result between source and target database
      attr_accessor :schema_validation_result

      # @return [QueryAnalysisValidationResult] Results of some of the query
      # execution result between source and target database
      attr_accessor :query_analysis_validation_result

      # @return [ValidationStatus] Current status of validation at the database
      # level. Possible values include: 'Default', 'NotStarted', 'Initialized',
      # 'InProgress', 'Completed', 'CompletedWithIssues', 'Failed', 'Stopped'
      attr_accessor :status


      #
      # Mapper for MigrationValidationDatabaseLevelResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MigrationValidationDatabaseLevelResult',
          type: {
            name: 'Composite',
            class_name: 'MigrationValidationDatabaseLevelResult',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              migration_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'migrationId',
                type: {
                  name: 'String'
                }
              },
              source_database_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'sourceDatabaseName',
                type: {
                  name: 'String'
                }
              },
              target_database_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'targetDatabaseName',
                type: {
                  name: 'String'
                }
              },
              started_on: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'startedOn',
                type: {
                  name: 'DateTime'
                }
              },
              ended_on: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'endedOn',
                type: {
                  name: 'DateTime'
                }
              },
              data_integrity_validation_result: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'dataIntegrityValidationResult',
                type: {
                  name: 'Composite',
                  class_name: 'DataIntegrityValidationResult'
                }
              },
              schema_validation_result: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'schemaValidationResult',
                type: {
                  name: 'Composite',
                  class_name: 'SchemaComparisonValidationResult'
                }
              },
              query_analysis_validation_result: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'queryAnalysisValidationResult',
                type: {
                  name: 'Composite',
                  class_name: 'QueryAnalysisValidationResult'
                }
              },
              status: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'status',
                type: {
                  name: 'Enum',
                  module: 'ValidationStatus'
                }
              }
            }
          }
        }
      end
    end
  end
end
