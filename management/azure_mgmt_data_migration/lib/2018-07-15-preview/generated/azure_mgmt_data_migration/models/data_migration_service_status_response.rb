# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataMigration::Mgmt::V2018_07_15_preview
  module Models
    #
    # Service health status
    #
    class DataMigrationServiceStatusResponse

      include MsRestAzure

      # @return [String] The DMS instance agent version
      attr_accessor :agent_version

      # @return [String] The machine-readable status, such as 'Initializing',
      # 'Offline', 'Online', 'Deploying', 'Deleting', 'Stopped', 'Stopping',
      # 'Starting', 'FailedToStart', 'FailedToStop' or 'Failed'
      attr_accessor :status

      # @return [String] The services virtual machine size, such as
      # 'Standard_D2_v2'
      attr_accessor :vm_size

      # @return [Array<String>] The list of supported task types
      attr_accessor :supported_task_types


      #
      # Mapper for DataMigrationServiceStatusResponse class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DataMigrationServiceStatusResponse',
          type: {
            name: 'Composite',
            class_name: 'DataMigrationServiceStatusResponse',
            model_properties: {
              agent_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'agentVersion',
                type: {
                  name: 'String'
                }
              },
              status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'status',
                type: {
                  name: 'String'
                }
              },
              vm_size: {
                client_side_validation: true,
                required: false,
                serialized_name: 'vmSize',
                type: {
                  name: 'String'
                }
              },
              supported_task_types: {
                client_side_validation: true,
                required: false,
                serialized_name: 'supportedTaskTypes',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
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
