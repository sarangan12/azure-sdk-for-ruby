# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataMigration::Mgmt::V2018_07_15_preview
  module Models
    #
    # Database specific information for PostgreSQL to Azure Database for
    # PostgreSQL migration task inputs
    #
    class MigratePostgreSqlAzureDbForPostgreSqlSyncDatabaseInput

      include MsRestAzure

      # @return [String] Name of the database
      attr_accessor :name

      # @return [String] Name of target database. Note: Target database will be
      # truncated before starting migration.
      attr_accessor :target_database_name


      #
      # Mapper for MigratePostgreSqlAzureDbForPostgreSqlSyncDatabaseInput class
      # as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MigratePostgreSqlAzureDbForPostgreSqlSyncDatabaseInput',
          type: {
            name: 'Composite',
            class_name: 'MigratePostgreSqlAzureDbForPostgreSqlSyncDatabaseInput',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              target_database_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'targetDatabaseName',
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
