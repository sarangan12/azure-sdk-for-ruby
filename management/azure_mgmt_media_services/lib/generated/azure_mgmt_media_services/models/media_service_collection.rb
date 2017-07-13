# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::MediaServices
  module Models
    #
    # The collection of Media Service resources.
    #
    class MediaServiceCollection

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<MediaService>]
      attr_accessor :value


      #
      # Mapper for MediaServiceCollection class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'MediaServiceCollection',
          type: {
            name: 'Composite',
            class_name: 'MediaServiceCollection',
            model_properties: {
              value: {
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'MediaServiceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'MediaService'
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
