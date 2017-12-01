# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StorSimple8000Series::Mgmt::V2017_06_01
  module Models
    #
    # The backup policy.
    #
    class BackupPolicy < BaseModel

      include MsRestAzure

      # @return [Array<String>] The path IDs of the volumes which are part of
      # the backup policy.
      attr_accessor :volume_ids

      # @return [DateTime] The time of the next backup for the backup policy.
      attr_accessor :next_backup_time

      # @return [DateTime] The time of the last backup for the backup policy.
      attr_accessor :last_backup_time

      # @return [Integer] The count of schedules the backup policy contains.
      attr_accessor :schedules_count

      # @return [ScheduledBackupStatus] Indicates whether atleast one of the
      # schedules in the backup policy is active or not. Possible values
      # include: 'Disabled', 'Enabled'
      attr_accessor :scheduled_backup_status

      # @return [BackupPolicyCreationType] The backup policy creation type.
      # Indicates whether this was created through SaaS or through StorSimple
      # Snapshot Manager. Possible values include: 'BySaaS', 'BySSM'
      attr_accessor :backup_policy_creation_type

      # @return [String] If the backup policy was created by StorSimple
      # Snapshot Manager, then this field indicates the hostname of the
      # StorSimple Snapshot Manager.
      attr_accessor :ssm_host_name


      #
      # Mapper for BackupPolicy class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'BackupPolicy',
          type: {
            name: 'Composite',
            class_name: 'BackupPolicy',
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
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              kind: {
                client_side_validation: true,
                required: false,
                serialized_name: 'kind',
                type: {
                  name: 'Enum',
                  module: 'Kind'
                }
              },
              volume_ids: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.volumeIds',
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
              },
              next_backup_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.nextBackupTime',
                type: {
                  name: 'DateTime'
                }
              },
              last_backup_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.lastBackupTime',
                type: {
                  name: 'DateTime'
                }
              },
              schedules_count: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.schedulesCount',
                type: {
                  name: 'Number'
                }
              },
              scheduled_backup_status: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.scheduledBackupStatus',
                type: {
                  name: 'Enum',
                  module: 'ScheduledBackupStatus'
                }
              },
              backup_policy_creation_type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.backupPolicyCreationType',
                type: {
                  name: 'Enum',
                  module: 'BackupPolicyCreationType'
                }
              },
              ssm_host_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.ssmHostName',
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
