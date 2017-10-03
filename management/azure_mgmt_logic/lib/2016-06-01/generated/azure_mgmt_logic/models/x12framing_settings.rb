# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Logic::Api_2016_06_01
  module Models
    #
    # The X12 agreement framing settings.
    #
    class X12FramingSettings

      include MsRestAzure

      include MsRest::JSONable
      # @return [Integer] The data element separator.
      attr_accessor :data_element_separator

      # @return [Integer] The component separator.
      attr_accessor :component_separator

      # @return [Boolean] The value indicating whether to replace separators in
      # payload.
      attr_accessor :replace_separators_in_payload

      # @return [Integer] The replacement character.
      attr_accessor :replace_character

      # @return [Integer] The segment terminator.
      attr_accessor :segment_terminator

      # @return [X12CharacterSet] The X12 character set. Possible values
      # include: 'NotSpecified', 'Basic', 'Extended', 'UTF8'
      attr_accessor :character_set

      # @return [SegmentTerminatorSuffix] The segment terminator suffix.
      # Possible values include: 'NotSpecified', 'None', 'CR', 'LF', 'CRLF'
      attr_accessor :segment_terminator_suffix


      #
      # Mapper for X12FramingSettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'X12FramingSettings',
          type: {
            name: 'Composite',
            class_name: 'X12FramingSettings',
            model_properties: {
              data_element_separator: {
                required: true,
                serialized_name: 'dataElementSeparator',
                type: {
                  name: 'Number'
                }
              },
              component_separator: {
                required: true,
                serialized_name: 'componentSeparator',
                type: {
                  name: 'Number'
                }
              },
              replace_separators_in_payload: {
                required: true,
                serialized_name: 'replaceSeparatorsInPayload',
                type: {
                  name: 'Boolean'
                }
              },
              replace_character: {
                required: true,
                serialized_name: 'replaceCharacter',
                type: {
                  name: 'Number'
                }
              },
              segment_terminator: {
                required: true,
                serialized_name: 'segmentTerminator',
                type: {
                  name: 'Number'
                }
              },
              character_set: {
                required: true,
                serialized_name: 'characterSet',
                type: {
                  name: 'Enum',
                  module: 'X12CharacterSet'
                }
              },
              segment_terminator_suffix: {
                required: true,
                serialized_name: 'segmentTerminatorSuffix',
                type: {
                  name: 'Enum',
                  module: 'SegmentTerminatorSuffix'
                }
              }
            }
          }
        }
      end
    end
  end
end
