# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::Customvisiontraining::V3_0
  module Models
    #
    # Batch of image region information to create.
    #
    class ImageRegionCreateBatch

      include MsRestAzure

      # @return [Array<ImageRegionCreateEntry>]
      attr_accessor :regions


      #
      # Mapper for ImageRegionCreateBatch class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ImageRegionCreateBatch',
          type: {
            name: 'Composite',
            class_name: 'ImageRegionCreateBatch',
            model_properties: {
              regions: {
                client_side_validation: true,
                required: false,
                serialized_name: 'regions',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ImageRegionCreateEntryElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ImageRegionCreateEntry'
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
