# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.1.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::DevTestLabs
  module Models
    #
    # A custom image.
    #
    class CustomImage < MsRestAzure::Resource

      include MsRestAzure

      include MsRest::JSONable
      # @return [CustomImagePropertiesFromVm] The virtual machine from which
      # the image is to be created.
      attr_accessor :vm

      # @return [CustomImagePropertiesCustom] The VHD from which the image is
      # to be created.
      attr_accessor :vhd

      # @return [String] The description of the custom image.
      attr_accessor :description

      # @return [String] The author of the custom image.
      attr_accessor :author

      # @return [DateTime] The creation date of the custom image.
      attr_accessor :creation_date

      # @return [String] The Managed Image Id backing the custom image.
      attr_accessor :managed_image_id

      # @return [String] The provisioning status of the resource.
      attr_accessor :provisioning_state

      # @return [String] The unique immutable identifier of a resource (Guid).
      attr_accessor :unique_identifier


      #
      # Mapper for CustomImage class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'CustomImage',
          type: {
            name: 'Composite',
            class_name: 'CustomImage',
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
              vm: {
                required: false,
                serialized_name: 'properties.vm',
                type: {
                  name: 'Composite',
                  class_name: 'CustomImagePropertiesFromVm'
                }
              },
              vhd: {
                required: false,
                serialized_name: 'properties.vhd',
                type: {
                  name: 'Composite',
                  class_name: 'CustomImagePropertiesCustom'
                }
              },
              description: {
                required: false,
                serialized_name: 'properties.description',
                type: {
                  name: 'String'
                }
              },
              author: {
                required: false,
                serialized_name: 'properties.author',
                type: {
                  name: 'String'
                }
              },
              creation_date: {
                required: false,
                read_only: true,
                serialized_name: 'properties.creationDate',
                type: {
                  name: 'DateTime'
                }
              },
              managed_image_id: {
                required: false,
                serialized_name: 'properties.managedImageId',
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
