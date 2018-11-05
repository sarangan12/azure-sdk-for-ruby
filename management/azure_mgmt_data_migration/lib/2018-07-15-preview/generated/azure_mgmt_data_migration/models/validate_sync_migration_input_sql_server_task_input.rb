# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataMigration::Mgmt::V2018_07_15_preview
  module Models
    #
    # Input for task that validates migration input for SQL sync migrations
    #
    class ValidateSyncMigrationInputSqlServerTaskInput

      include MsRestAzure

      # @return [SqlConnectionInfo] Information for connecting to source SQL
      # server
      attr_accessor :source_connection_info

      # @return [SqlConnectionInfo] Information for connecting to target
      attr_accessor :target_connection_info

      # @return [Array<MigrateSqlServerSqlDbSyncDatabaseInput>] Databases to
      # migrate
      attr_accessor :selected_databases


      #
      # Mapper for ValidateSyncMigrationInputSqlServerTaskInput class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ValidateSyncMigrationInputSqlServerTaskInput',
          type: {
            name: 'Composite',
            class_name: 'ValidateSyncMigrationInputSqlServerTaskInput',
            model_properties: {
              source_connection_info: {
                client_side_validation: true,
                required: true,
                serialized_name: 'sourceConnectionInfo',
                type: {
                  name: 'Composite',
                  class_name: 'SqlConnectionInfo'
                }
              },
              target_connection_info: {
                client_side_validation: true,
                required: true,
                serialized_name: 'targetConnectionInfo',
                type: {
                  name: 'Composite',
                  class_name: 'SqlConnectionInfo'
                }
              },
              selected_databases: {
                client_side_validation: true,
                required: true,
                serialized_name: 'selectedDatabases',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'MigrateSqlServerSqlDbSyncDatabaseInputElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'MigrateSqlServerSqlDbSyncDatabaseInput'
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
