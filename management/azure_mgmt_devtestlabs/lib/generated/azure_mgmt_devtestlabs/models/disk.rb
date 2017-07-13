# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::DevTestLabs
  module Models
    #
    # A Disk.
    #
    class Disk < MsRestAzure::Resource

      include MsRestAzure

      include MsRest::JSONable
      # @return [StorageType] The storage type for the disk (i.e. Standard,
      # Premium). Possible values include: 'Standard', 'Premium'
      attr_accessor :disk_type

      # @return [Integer] The size of the disk in GibiBytes.
      attr_accessor :disk_size_gi_b

      # @return [String] The resource ID of the VM to which this disk is
      # leased.
      attr_accessor :leased_by_lab_vm_id

      # @return [String] When backed by a blob, the name of the VHD blob
      # without extension.
      attr_accessor :disk_blob_name

      # @return [String] When backed by a blob, the URI of underlying blob.
      attr_accessor :disk_uri

      # @return [DateTime] The creation date of the disk.
      attr_accessor :created_date

      # @return [String] The host caching policy of the disk (i.e. None,
      # ReadOnly, ReadWrite).
      attr_accessor :host_caching

      # @return [String] When backed by managed disk, this is the ID of the
      # compute disk resource.
      attr_accessor :managed_disk_id

      # @return [String] The provisioning status of the resource.
      attr_accessor :provisioning_state

      # @return [String] The unique immutable identifier of a resource (Guid).
      attr_accessor :unique_identifier


      #
      # Mapper for Disk class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Disk',
          type: {
            name: 'Composite',
            class_name: 'Disk',
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
              disk_type: {
                required: false,
                serialized_name: 'properties.diskType',
                type: {
                  name: 'String'
                }
              },
              disk_size_gi_b: {
                required: false,
                serialized_name: 'properties.diskSizeGiB',
                type: {
                  name: 'Number'
                }
              },
              leased_by_lab_vm_id: {
                required: false,
                serialized_name: 'properties.leasedByLabVmId',
                type: {
                  name: 'String'
                }
              },
              disk_blob_name: {
                required: false,
                serialized_name: 'properties.diskBlobName',
                type: {
                  name: 'String'
                }
              },
              disk_uri: {
                required: false,
                serialized_name: 'properties.diskUri',
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
              host_caching: {
                required: false,
                serialized_name: 'properties.hostCaching',
                type: {
                  name: 'String'
                }
              },
              managed_disk_id: {
                required: false,
                serialized_name: 'properties.managedDiskId',
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
