# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataMigration::Mgmt::V2018_04_19
  module Models
    #
    # Basic summary of a data item migration
    #
    class DataItemMigrationSummaryResult

      include MsRestAzure

      # @return [String] Name of the item
      attr_accessor :name

      # @return [DateTime] Migration start time
      attr_accessor :started_on

      # @return [DateTime] Migration end time
      attr_accessor :ended_on

      # @return [MigrationState] Current state of migration. Possible values
      # include: 'None', 'InProgress', 'Failed', 'Warning', 'Completed',
      # 'Skipped', 'Stopped'
      attr_accessor :state

      # @return [String] Status message
      attr_accessor :status_message

      # @return [Integer] Number of items
      attr_accessor :items_count

      # @return [Integer] Number of successfully completed items
      attr_accessor :items_completed_count

      # @return [String] Wildcard string prefix to use for querying all errors
      # of the item
      attr_accessor :error_prefix

      # @return [String] Wildcard string prefix to use for querying all sub-tem
      # results of the item
      attr_accessor :result_prefix


      #
      # Mapper for DataItemMigrationSummaryResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DataItemMigrationSummaryResult',
          type: {
            name: 'Composite',
            class_name: 'DataItemMigrationSummaryResult',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
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
              state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'state',
                type: {
                  name: 'String'
                }
              },
              status_message: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'statusMessage',
                type: {
                  name: 'String'
                }
              },
              items_count: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'itemsCount',
                type: {
                  name: 'Number'
                }
              },
              items_completed_count: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'itemsCompletedCount',
                type: {
                  name: 'Number'
                }
              },
              error_prefix: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'errorPrefix',
                type: {
                  name: 'String'
                }
              },
              result_prefix: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'resultPrefix',
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
