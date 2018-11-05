# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataMigration::Mgmt::V2017_11_15_preview
  module Models
    #
    # Output of the task that collects user tables for the given list of
    # databases
    #
    class GetUserTablesSqlTaskOutput

      include MsRestAzure

      # @return [String] Result identifier
      attr_accessor :id

      # @return [Hash{String => Array<DatabaseTable>}] Mapping from database
      # name to list of tables
      attr_accessor :databases_to_tables

      # @return [Array<ReportableException>] Validation errors
      attr_accessor :validation_errors


      #
      # Mapper for GetUserTablesSqlTaskOutput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'GetUserTablesSqlTaskOutput',
          type: {
            name: 'Composite',
            class_name: 'GetUserTablesSqlTaskOutput',
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
              databases_to_tables: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'databasesToTables',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ArrayElementType',
                      type: {
                        name: 'Sequence',
                        element: {
                            client_side_validation: true,
                            required: false,
                            serialized_name: 'DatabaseTableElementType',
                            type: {
                              name: 'Composite',
                              class_name: 'DatabaseTable'
                            }
                        }
                      }
                  }
                }
              },
              validation_errors: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'validationErrors',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ReportableExceptionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ReportableException'
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
