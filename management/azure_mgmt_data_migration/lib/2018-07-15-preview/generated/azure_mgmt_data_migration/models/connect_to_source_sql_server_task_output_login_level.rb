# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataMigration::Mgmt::V2018_07_15_preview
  module Models
    #
    # Login level output for the task that validates connection to SQL Server
    # and also validates source server requirements
    #
    class ConnectToSourceSqlServerTaskOutputLoginLevel < ConnectToSourceSqlServerTaskOutput

      include MsRestAzure


      def initialize
        @resultType = "LoginLevelOutput"
      end

      attr_accessor :resultType

      # @return [String] Login name.
      attr_accessor :name

      # @return [LoginType] The type of login. Possible values include:
      # 'WindowsUser', 'WindowsGroup', 'SqlLogin', 'Certificate',
      # 'AsymmetricKey', 'ExternalUser', 'ExternalGroup'
      attr_accessor :login_type

      # @return [String] The default database for the login.
      attr_accessor :default_database

      # @return [Boolean] The state of the login.
      attr_accessor :is_enabled

      # @return [MigrationEligibilityInfo] Information about eligiblity of
      # login for migration.
      attr_accessor :migration_eligibility


      #
      # Mapper for ConnectToSourceSqlServerTaskOutputLoginLevel class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'LoginLevelOutput',
          type: {
            name: 'Composite',
            class_name: 'ConnectToSourceSqlServerTaskOutputLoginLevel',
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
              resultType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'resultType',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              login_type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'loginType',
                type: {
                  name: 'String'
                }
              },
              default_database: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'defaultDatabase',
                type: {
                  name: 'String'
                }
              },
              is_enabled: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'isEnabled',
                type: {
                  name: 'Boolean'
                }
              },
              migration_eligibility: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'migrationEligibility',
                type: {
                  name: 'Composite',
                  class_name: 'MigrationEligibilityInfo'
                }
              }
            }
          }
        }
      end
    end
  end
end
