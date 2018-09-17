# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2018_06_01
  module Models
    #
    # Describes the basic gallery artifact publishing profile.
    #
    class GalleryArtifactPublishingProfileBase

      include MsRestAzure

      # @return [Array<TargetRegion>] The target regions where the artifact is
      # going to be published.
      attr_accessor :target_regions

      # @return [GalleryArtifactSource]
      attr_accessor :source


      #
      # Mapper for GalleryArtifactPublishingProfileBase class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'GalleryArtifactPublishingProfileBase',
          type: {
            name: 'Composite',
            class_name: 'GalleryArtifactPublishingProfileBase',
            model_properties: {
              target_regions: {
                client_side_validation: true,
                required: false,
                serialized_name: 'targetRegions',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'TargetRegionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'TargetRegion'
                      }
                  }
                }
              },
              source: {
                client_side_validation: true,
                required: true,
                serialized_name: 'source',
                type: {
                  name: 'Composite',
                  class_name: 'GalleryArtifactSource'
                }
              }
            }
          }
        }
      end
    end
  end
end
