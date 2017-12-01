# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Logic::Mgmt::V2016_06_01
  module Models
    #
    # The X12 validation override settings.
    #
    class X12ValidationOverride

      include MsRestAzure

      # @return [String] The message id on which the validation settings has to
      # be applied.
      attr_accessor :message_id

      # @return [Boolean] The value indicating whether to validate EDI types.
      attr_accessor :validate_edi_types

      # @return [Boolean] The value indicating whether to validate XSD types.
      attr_accessor :validate_xsd_types

      # @return [Boolean] The value indicating whether to allow leading and
      # trailing spaces and zeroes.
      attr_accessor :allow_leading_and_trailing_spaces_and_zeroes

      # @return [Boolean] The value indicating whether to validate character
      # Set.
      attr_accessor :validate_character_set

      # @return [Boolean] The value indicating whether to trim leading and
      # trailing spaces and zeroes.
      attr_accessor :trim_leading_and_trailing_spaces_and_zeroes

      # @return [TrailingSeparatorPolicy] The trailing separator policy.
      # Possible values include: 'NotSpecified', 'NotAllowed', 'Optional',
      # 'Mandatory'
      attr_accessor :trailing_separator_policy


      #
      # Mapper for X12ValidationOverride class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'X12ValidationOverride',
          type: {
            name: 'Composite',
            class_name: 'X12ValidationOverride',
            model_properties: {
              message_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'messageId',
                type: {
                  name: 'String'
                }
              },
              validate_edi_types: {
                client_side_validation: true,
                required: true,
                serialized_name: 'validateEdiTypes',
                type: {
                  name: 'Boolean'
                }
              },
              validate_xsd_types: {
                client_side_validation: true,
                required: true,
                serialized_name: 'validateXsdTypes',
                type: {
                  name: 'Boolean'
                }
              },
              allow_leading_and_trailing_spaces_and_zeroes: {
                client_side_validation: true,
                required: true,
                serialized_name: 'allowLeadingAndTrailingSpacesAndZeroes',
                type: {
                  name: 'Boolean'
                }
              },
              validate_character_set: {
                client_side_validation: true,
                required: true,
                serialized_name: 'validateCharacterSet',
                type: {
                  name: 'Boolean'
                }
              },
              trim_leading_and_trailing_spaces_and_zeroes: {
                client_side_validation: true,
                required: true,
                serialized_name: 'trimLeadingAndTrailingSpacesAndZeroes',
                type: {
                  name: 'Boolean'
                }
              },
              trailing_separator_policy: {
                client_side_validation: true,
                required: true,
                serialized_name: 'trailingSeparatorPolicy',
                type: {
                  name: 'Enum',
                  module: 'TrailingSeparatorPolicy'
                }
              }
            }
          }
        }
      end
    end
  end
end
