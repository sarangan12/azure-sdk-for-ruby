# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2018_07_01
  module Models
    #
    # Describes all the settings to be used when encoding the input video with
    # the Standard Encoder.
    #
    class StandardEncoderPreset < Preset

      include MsRestAzure


      def initialize
        @odatatype = "#Microsoft.Media.StandardEncoderPreset"
      end

      attr_accessor :odatatype

      # @return [Filters] One or more filtering operations that are applied to
      # the input media before encoding.
      attr_accessor :filters

      # @return [Array<Codec>] The list of codecs to be used when encoding the
      # input video.
      attr_accessor :codecs

      # @return [Array<Format>] The list of outputs to be produced by the
      # encoder.
      attr_accessor :formats


      #
      # Mapper for StandardEncoderPreset class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: '#Microsoft.Media.StandardEncoderPreset',
          type: {
            name: 'Composite',
            class_name: 'StandardEncoderPreset',
            model_properties: {
              odatatype: {
                client_side_validation: true,
                required: true,
                serialized_name: '@odata\\.type',
                type: {
                  name: 'String'
                }
              },
              filters: {
                client_side_validation: true,
                required: false,
                serialized_name: 'filters',
                type: {
                  name: 'Composite',
                  class_name: 'Filters'
                }
              },
              codecs: {
                client_side_validation: true,
                required: false,
                serialized_name: 'codecs',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'CodecElementType',
                      type: {
                        name: 'Composite',
                        polymorphic_discriminator: '@odata.type',
                        uber_parent: 'Codec',
                        class_name: 'Codec'
                      }
                  }
                }
              },
              formats: {
                client_side_validation: true,
                required: false,
                serialized_name: 'formats',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'FormatElementType',
                      type: {
                        name: 'Composite',
                        polymorphic_discriminator: '@odata.type',
                        uber_parent: 'Format',
                        class_name: 'Format'
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
