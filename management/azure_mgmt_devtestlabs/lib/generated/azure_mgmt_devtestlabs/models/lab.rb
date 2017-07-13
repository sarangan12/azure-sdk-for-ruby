# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::DevTestLabs
  module Models
    #
    # A lab.
    #
    class Lab < MsRestAzure::Resource

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The lab's default storage account.
      attr_accessor :default_storage_account

      # @return [String] The lab's default premium storage account.
      attr_accessor :default_premium_storage_account

      # @return [String] The lab's artifact storage account.
      attr_accessor :artifacts_storage_account

      # @return [String] The lab's premium data disk storage account.
      attr_accessor :premium_data_disk_storage_account

      # @return [String] The lab's Key vault.
      attr_accessor :vault_name

      # @return [StorageType] Type of storage used by the lab. It can be either
      # Premium or Standard. Default is Premium. Possible values include:
      # 'Standard', 'Premium'
      attr_accessor :lab_storage_type

      # @return [DateTime] The creation date of the lab.
      attr_accessor :created_date

      # @return [PremiumDataDisk] The setting to enable usage of premium data
      # disks.
      # When its value is 'Enabled', creation of standard or premium data disks
      # is allowed.
      # When its value is 'Disabled', only creation of standard data disks is
      # allowed. Possible values include: 'Disabled', 'Enabled'
      attr_accessor :premium_data_disks

      # @return [String] The provisioning status of the resource.
      attr_accessor :provisioning_state

      # @return [String] The unique immutable identifier of a resource (Guid).
      attr_accessor :unique_identifier


      #
      # Mapper for Lab class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Lab',
          type: {
            name: 'Composite',
            class_name: 'Lab',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
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
              default_storage_account: {
                required: false,
                read_only: true,
                serialized_name: 'properties.defaultStorageAccount',
                type: {
                  name: 'String'
                }
              },
              default_premium_storage_account: {
                required: false,
                read_only: true,
                serialized_name: 'properties.defaultPremiumStorageAccount',
                type: {
                  name: 'String'
                }
              },
              artifacts_storage_account: {
                required: false,
                read_only: true,
                serialized_name: 'properties.artifactsStorageAccount',
                type: {
                  name: 'String'
                }
              },
              premium_data_disk_storage_account: {
                required: false,
                read_only: true,
                serialized_name: 'properties.premiumDataDiskStorageAccount',
                type: {
                  name: 'String'
                }
              },
              vault_name: {
                required: false,
                read_only: true,
                serialized_name: 'properties.vaultName',
                type: {
                  name: 'String'
                }
              },
              lab_storage_type: {
                required: false,
                serialized_name: 'properties.labStorageType',
                type: {
                  name: 'String'
                }
              },
              created_date: {
                required: false,
                read_only: true,
                serialized_name: 'properties.createdDate',
                type: {
                  name: 'DateTime'
                }
              },
              premium_data_disks: {
                required: false,
                serialized_name: 'properties.premiumDataDisks',
                type: {
                  name: 'String'
                }
              },
              provisioning_state: {
                required: false,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              unique_identifier: {
                required: false,
                serialized_name: 'properties.uniqueIdentifier',
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
