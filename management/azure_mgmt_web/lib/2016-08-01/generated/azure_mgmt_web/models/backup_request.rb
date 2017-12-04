# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2016_08_01
  module Models
    #
    # Description of a backup which will be performed.
    #
    class BackupRequest < ProxyOnlyResource

      include MsRestAzure

      # @return [String] Name of the backup.
      attr_accessor :backup_request_name

      # @return [Boolean] True if the backup schedule is enabled (must be
      # included in that case), false if the backup schedule should be
      # disabled.
      attr_accessor :enabled

      # @return [String] SAS URL to the container.
      attr_accessor :storage_account_url

      # @return [BackupSchedule] Schedule for the backup if it is executed
      # periodically.
      attr_accessor :backup_schedule

      # @return [Array<DatabaseBackupSetting>] Databases included in the
      # backup.
      attr_accessor :databases

      # @return [BackupRestoreOperationType] Type of the backup. Possible
      # values include: 'Default', 'Clone', 'Relocation', 'Snapshot'
      attr_accessor :backup_request_type


      #
      # Mapper for BackupRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'BackupRequest',
          type: {
            name: 'Composite',
            class_name: 'BackupRequest',
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
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              kind: {
                client_side_validation: true,
                required: false,
                serialized_name: 'kind',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              backup_request_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.name',
                type: {
                  name: 'String'
                }
              },
              enabled: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.enabled',
                type: {
                  name: 'Boolean'
                }
              },
              storage_account_url: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.storageAccountUrl',
                type: {
                  name: 'String'
                }
              },
              backup_schedule: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.backupSchedule',
                type: {
                  name: 'Composite',
                  class_name: 'BackupSchedule'
                }
              },
              databases: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.databases',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'DatabaseBackupSettingElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'DatabaseBackupSetting'
                      }
                  }
                }
              },
              backup_request_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.type',
                type: {
                  name: 'Enum',
                  module: 'BackupRestoreOperationType'
                }
              }
            }
          }
        }
      end
    end
  end
end
