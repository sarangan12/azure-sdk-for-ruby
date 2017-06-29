# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.1.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Logic
  module Models
    #
    # The X12 agreement protocol settings.
    #
    class X12ProtocolSettings

      include MsRestAzure

      include MsRest::JSONable
      # @return [X12ValidationSettings] The X12 validation settings.
      attr_accessor :validation_settings

      # @return [X12FramingSettings] The X12 framing settings.
      attr_accessor :framing_settings

      # @return [X12EnvelopeSettings] The X12 envelope settings.
      attr_accessor :envelope_settings

      # @return [X12AcknowledgementSettings] The X12 acknowledgment settings.
      attr_accessor :acknowledgement_settings

      # @return [X12MessageFilter] The X12 message filter.
      attr_accessor :message_filter

      # @return [X12SecuritySettings] The X12 security settings.
      attr_accessor :security_settings

      # @return [X12ProcessingSettings] The X12 processing settings.
      attr_accessor :processing_settings

      # @return [Array<X12EnvelopeOverride>] The X12 envelope override
      # settings.
      attr_accessor :envelope_overrides

      # @return [Array<X12ValidationOverride>] The X12 validation override
      # settings.
      attr_accessor :validation_overrides

      # @return [Array<X12MessageIdentifier>] The X12 message filter list.
      attr_accessor :message_filter_list

      # @return [Array<X12SchemaReference>] The X12 schema references.
      attr_accessor :schema_references

      # @return [Array<X12DelimiterOverrides>] The X12 delimiter override
      # settings.
      attr_accessor :x12delimiter_overrides


      #
      # Mapper for X12ProtocolSettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'X12ProtocolSettings',
          type: {
            name: 'Composite',
            class_name: 'X12ProtocolSettings',
            model_properties: {
              validation_settings: {
                required: true,
                serialized_name: 'validationSettings',
                type: {
                  name: 'Composite',
                  class_name: 'X12ValidationSettings'
                }
              },
              framing_settings: {
                required: true,
                serialized_name: 'framingSettings',
                type: {
                  name: 'Composite',
                  class_name: 'X12FramingSettings'
                }
              },
              envelope_settings: {
                required: true,
                serialized_name: 'envelopeSettings',
                type: {
                  name: 'Composite',
                  class_name: 'X12EnvelopeSettings'
                }
              },
              acknowledgement_settings: {
                required: true,
                serialized_name: 'acknowledgementSettings',
                type: {
                  name: 'Composite',
                  class_name: 'X12AcknowledgementSettings'
                }
              },
              message_filter: {
                required: true,
                serialized_name: 'messageFilter',
                type: {
                  name: 'Composite',
                  class_name: 'X12MessageFilter'
                }
              },
              security_settings: {
                required: true,
                serialized_name: 'securitySettings',
                type: {
                  name: 'Composite',
                  class_name: 'X12SecuritySettings'
                }
              },
              processing_settings: {
                required: true,
                serialized_name: 'processingSettings',
                type: {
                  name: 'Composite',
                  class_name: 'X12ProcessingSettings'
                }
              },
              envelope_overrides: {
                required: false,
                serialized_name: 'envelopeOverrides',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'X12EnvelopeOverrideElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'X12EnvelopeOverride'
                      }
                  }
                }
              },
              validation_overrides: {
                required: false,
                serialized_name: 'validationOverrides',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'X12ValidationOverrideElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'X12ValidationOverride'
                      }
                  }
                }
              },
              message_filter_list: {
                required: false,
                serialized_name: 'messageFilterList',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'X12MessageIdentifierElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'X12MessageIdentifier'
                      }
                  }
                }
              },
              schema_references: {
                required: true,
                serialized_name: 'schemaReferences',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'X12SchemaReferenceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'X12SchemaReference'
                      }
                  }
                }
              },
              x12delimiter_overrides: {
                required: false,
                serialized_name: 'x12DelimiterOverrides',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'X12DelimiterOverridesElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'X12DelimiterOverrides'
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
