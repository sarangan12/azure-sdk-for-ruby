# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2018_06_01
  module Models
    #
    # The source of the gallery artifact.
    #
    class GalleryArtifactSource

      include MsRestAzure

      # @return [ManagedArtifact]
      attr_accessor :managed_image


      #
      # Mapper for GalleryArtifactSource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'GalleryArtifactSource',
          type: {
            name: 'Composite',
            class_name: 'GalleryArtifactSource',
            model_properties: {
              managed_image: {
                client_side_validation: true,
                required: true,
                serialized_name: 'managedImage',
                type: {
                  name: 'Composite',
                  class_name: 'ManagedArtifact'
                }
              }
            }
          }
        }
      end
    end
  end
end
