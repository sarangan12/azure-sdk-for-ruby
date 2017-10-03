# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10
  module Models
    #
    # VMware/Physical specific Disk Details
    #
    class InMageDiskDetails

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The disk Id.
      attr_accessor :disk_id

      # @return [String] The disk name.
      attr_accessor :disk_name

      # @return [String] The disk size in MB.
      attr_accessor :disk_size_in_mb

      # @return [String] Whether disk is system disk or data disk.
      attr_accessor :disk_type

      # @return [String] Whether disk is dynamic disk or basic disk.
      attr_accessor :disk_configuration

      # @return [Array<DiskVolumeDetails>] Volumes of the disk.
      attr_accessor :volume_list


      #
      # Mapper for InMageDiskDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'InMageDiskDetails',
          type: {
            name: 'Composite',
            class_name: 'InMageDiskDetails',
            model_properties: {
              disk_id: {
                required: false,
                serialized_name: 'diskId',
                type: {
                  name: 'String'
                }
              },
              disk_name: {
                required: false,
                serialized_name: 'diskName',
                type: {
                  name: 'String'
                }
              },
              disk_size_in_mb: {
                required: false,
                serialized_name: 'diskSizeInMB',
                type: {
                  name: 'String'
                }
              },
              disk_type: {
                required: false,
                serialized_name: 'diskType',
                type: {
                  name: 'String'
                }
              },
              disk_configuration: {
                required: false,
                serialized_name: 'diskConfiguration',
                type: {
                  name: 'String'
                }
              },
              volume_list: {
                required: false,
                serialized_name: 'volumeList',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'DiskVolumeDetailsElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'DiskVolumeDetails'
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
