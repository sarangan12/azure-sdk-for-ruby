# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesBackup
  module Models
    #
    # The base backup engine class. All workload specific backup engines
    # derive from this class.
    #
    class BackupEngineBase < MsRestAzure::Resource

      include MsRestAzure


      def initialize
        @backupEngineType = "BackupEngineBase"
      end

      attr_accessor :backupEngineType

      # @return [String] Friendly name of the backup engine.
      attr_accessor :friendly_name

      # @return [String] Type of backup management for the backup engine.
      # Possible values: AzureIaasVM, DPM or MAB.
      attr_accessor :backup_management_type

      # @return [String] Registration status of the backup engine with the
      # Recovery Services Vault.
      attr_accessor :registration_status

      # @return [String] Backup status of the backup engine.
      attr_accessor :health_status

      # @return [Boolean] Flag indicating if the backup engine be registered,
      # once already registered.
      attr_accessor :can_re_register

      # @return [String] ID of the backup engine.
      attr_accessor :backup_engine_id


      #
      # Mapper for BackupEngineBase class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'BackupEngineBase',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'backupEngineType',
            uber_parent: 'Resource',
            class_name: 'BackupEngineBase',
            model_properties: {
              id: {
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location: {
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              e_tag: {
                required: false,
                serialized_name: 'eTag',
                type: {
                  name: 'String'
                }
              },
              friendly_name: {
                required: false,
                serialized_name: 'friendlyName',
                type: {
                  name: 'String'
                }
              },
              backup_management_type: {
                required: false,
                serialized_name: 'backupManagementType',
                type: {
                  name: 'String'
                }
              },
              registration_status: {
                required: false,
                serialized_name: 'registrationStatus',
                type: {
                  name: 'String'
                }
              },
              health_status: {
                required: false,
                serialized_name: 'healthStatus',
                type: {
                  name: 'String'
                }
              },
              can_re_register: {
                required: false,
                serialized_name: 'canReRegister',
                type: {
                  name: 'Boolean'
                }
              },
              backup_engine_id: {
                required: false,
                serialized_name: 'backupEngineId',
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
