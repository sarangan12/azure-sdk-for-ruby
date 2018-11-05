# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataMigration::Mgmt::V2017_11_15_preview
  module Models
    #
    # Input for the task that validates connection to SQL Server and also
    # validates source server requirements
    #
    class ConnectToSourceSqlServerTaskInput

      include MsRestAzure

      # @return [SqlConnectionInfo] Connection information for Source SQL
      # Server
      attr_accessor :source_connection_info

      # @return [ServerLevelPermissionsGroup] Permission group for validations.
      # Possible values include: 'Default', 'MigrationFromSqlServerToAzureDB'
      attr_accessor :check_permissions_group


      #
      # Mapper for ConnectToSourceSqlServerTaskInput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ConnectToSourceSqlServerTaskInput',
          type: {
            name: 'Composite',
            class_name: 'ConnectToSourceSqlServerTaskInput',
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
              check_permissions_group: {
                client_side_validation: true,
                required: false,
                serialized_name: 'checkPermissionsGroup',
                type: {
                  name: 'Enum',
                  module: 'ServerLevelPermissionsGroup'
                }
              }
            }
          }
        }
      end
    end
  end
end
