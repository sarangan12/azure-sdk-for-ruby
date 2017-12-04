# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2016_12_01
  module Models
    #
    # Additional information of DPM Protected item.
    #
    class DPMProtectedItemExtendedInfo

      include MsRestAzure

      # @return [Hash{String => String}] Attribute to provide information on
      # various DBs.
      attr_accessor :protectable_object_load_path

      # @return [Boolean] To check if backup item is disk protected.
      attr_accessor :protected

      # @return [Boolean] To check if backup item is cloud protected.
      attr_accessor :is_present_on_cloud

      # @return [String] Last backup status information on backup item.
      attr_accessor :last_backup_status

      # @return [DateTime] Last refresh time on backup item.
      attr_accessor :last_refreshed_at

      # @return [DateTime] Oldest cloud recovery point time.
      attr_accessor :oldest_recovery_point

      # @return [Integer] cloud recovery point count.
      attr_accessor :recovery_point_count

      # @return [DateTime] Oldest disk recovery point time.
      attr_accessor :on_premise_oldest_recovery_point

      # @return [DateTime] latest disk recovery point time.
      attr_accessor :on_premise_latest_recovery_point

      # @return [Integer] disk recovery point count.
      attr_accessor :on_premise_recovery_point_count

      # @return [Boolean] To check if backup item is collocated.
      attr_accessor :is_collocated

      # @return [String] Protection group name of the backup item.
      attr_accessor :protection_group_name

      # @return [String] Used Disk storage in bytes.
      attr_accessor :disk_storage_used_in_bytes

      # @return [String] total Disk storage in bytes.
      attr_accessor :total_disk_storage_size_in_bytes


      #
      # Mapper for DPMProtectedItemExtendedInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DPMProtectedItemExtendedInfo',
          type: {
            name: 'Composite',
            class_name: 'DPMProtectedItemExtendedInfo',
            model_properties: {
              protectable_object_load_path: {
                client_side_validation: true,
                required: false,
                serialized_name: 'protectableObjectLoadPath',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              protected: {
                client_side_validation: true,
                required: false,
                serialized_name: 'protected',
                type: {
                  name: 'Boolean'
                }
              },
              is_present_on_cloud: {
                client_side_validation: true,
                required: false,
                serialized_name: 'isPresentOnCloud',
                type: {
                  name: 'Boolean'
                }
              },
              last_backup_status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'lastBackupStatus',
                type: {
                  name: 'String'
                }
              },
              last_refreshed_at: {
                client_side_validation: true,
                required: false,
                serialized_name: 'lastRefreshedAt',
                type: {
                  name: 'DateTime'
                }
              },
              oldest_recovery_point: {
                client_side_validation: true,
                required: false,
                serialized_name: 'oldestRecoveryPoint',
                type: {
                  name: 'DateTime'
                }
              },
              recovery_point_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'recoveryPointCount',
                type: {
                  name: 'Number'
                }
              },
              on_premise_oldest_recovery_point: {
                client_side_validation: true,
                required: false,
                serialized_name: 'onPremiseOldestRecoveryPoint',
                type: {
                  name: 'DateTime'
                }
              },
              on_premise_latest_recovery_point: {
                client_side_validation: true,
                required: false,
                serialized_name: 'onPremiseLatestRecoveryPoint',
                type: {
                  name: 'DateTime'
                }
              },
              on_premise_recovery_point_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'onPremiseRecoveryPointCount',
                type: {
                  name: 'Number'
                }
              },
              is_collocated: {
                client_side_validation: true,
                required: false,
                serialized_name: 'isCollocated',
                type: {
                  name: 'Boolean'
                }
              },
              protection_group_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'protectionGroupName',
                type: {
                  name: 'String'
                }
              },
              disk_storage_used_in_bytes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'diskStorageUsedInBytes',
                type: {
                  name: 'String'
                }
              },
              total_disk_storage_size_in_bytes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'totalDiskStorageSizeInBytes',
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
