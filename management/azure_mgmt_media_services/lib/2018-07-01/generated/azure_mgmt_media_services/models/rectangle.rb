# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2018_07_01
  module Models
    #
    # Describes the properties of a rectangular window applied to the input
    # media before processing it.
    #
    class Rectangle

      include MsRestAzure

      # @return [String] The number of pixels from the left-margin. This can be
      # absolute pixel value (e.g 100), or relative to the size of the video
      # (For example, 50%).
      attr_accessor :left

      # @return [String] The number of pixels from the top-margin. This can be
      # absolute pixel value (e.g 100), or relative to the size of the video
      # (For example, 50%).
      attr_accessor :top

      # @return [String] The width of the rectangular region in pixels. This
      # can be absolute pixel value (e.g 100), or relative to the size of the
      # video (For example, 50%).
      attr_accessor :width

      # @return [String] The height of the rectangular region in pixels. This
      # can be absolute pixel value (e.g 100), or relative to the size of the
      # video (For example, 50%).
      attr_accessor :height


      #
      # Mapper for Rectangle class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Rectangle',
          type: {
            name: 'Composite',
            class_name: 'Rectangle',
            model_properties: {
              left: {
                client_side_validation: true,
                required: false,
                serialized_name: 'left',
                type: {
                  name: 'String'
                }
              },
              top: {
                client_side_validation: true,
                required: false,
                serialized_name: 'top',
                type: {
                  name: 'String'
                }
              },
              width: {
                client_side_validation: true,
                required: false,
                serialized_name: 'width',
                type: {
                  name: 'String'
                }
              },
              height: {
                client_side_validation: true,
                required: false,
                serialized_name: 'height',
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
