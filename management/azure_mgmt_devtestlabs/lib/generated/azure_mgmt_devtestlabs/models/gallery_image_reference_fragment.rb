# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.1.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::DevTestLabs
  module Models
    #
    # The reference information for an Azure Marketplace image.
    #
    class GalleryImageReferenceFragment

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The offer of the gallery image.
      attr_accessor :offer

      # @return [String] The publisher of the gallery image.
      attr_accessor :publisher

      # @return [String] The SKU of the gallery image.
      attr_accessor :sku

      # @return [String] The OS type of the gallery image.
      attr_accessor :os_type

      # @return [String] The version of the gallery image.
      attr_accessor :version


      #
      # Mapper for GalleryImageReferenceFragment class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'GalleryImageReferenceFragment',
          type: {
            name: 'Composite',
            class_name: 'GalleryImageReferenceFragment',
            model_properties: {
              offer: {
                required: false,
                serialized_name: 'offer',
                type: {
                  name: 'String'
                }
              },
              publisher: {
                required: false,
                serialized_name: 'publisher',
                type: {
                  name: 'String'
                }
              },
              sku: {
                required: false,
                serialized_name: 'sku',
                type: {
                  name: 'String'
                }
              },
              os_type: {
                required: false,
                serialized_name: 'osType',
                type: {
                  name: 'String'
                }
              },
              version: {
                required: false,
                serialized_name: 'version',
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
