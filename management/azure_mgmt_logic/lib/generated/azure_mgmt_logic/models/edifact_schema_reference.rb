# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Logic
  module Models
    #
    # The Edifact schema reference.
    #
    class EdifactSchemaReference

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The message id.
      attr_accessor :message_id

      # @return [String] The message version.
      attr_accessor :message_version

      # @return [String] The message release version.
      attr_accessor :message_release

      # @return [String] The sender application id.
      attr_accessor :sender_application_id

      # @return [String] The sender application qualifier.
      attr_accessor :sender_application_qualifier

      # @return [String] The association assigned code.
      attr_accessor :association_assigned_code

      # @return [String] The schema name.
      attr_accessor :schema_name


      #
      # Mapper for EdifactSchemaReference class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'EdifactSchemaReference',
          type: {
            name: 'Composite',
            class_name: 'EdifactSchemaReference',
            model_properties: {
              message_id: {
                required: true,
                serialized_name: 'messageId',
                type: {
                  name: 'String'
                }
              },
              message_version: {
                required: true,
                serialized_name: 'messageVersion',
                type: {
                  name: 'String'
                }
              },
              message_release: {
                required: true,
                serialized_name: 'messageRelease',
                type: {
                  name: 'String'
                }
              },
              sender_application_id: {
                required: false,
                serialized_name: 'senderApplicationId',
                type: {
                  name: 'String'
                }
              },
              sender_application_qualifier: {
                required: false,
                serialized_name: 'senderApplicationQualifier',
                type: {
                  name: 'String'
                }
              },
              association_assigned_code: {
                required: false,
                serialized_name: 'associationAssignedCode',
                type: {
                  name: 'String'
                }
              },
              schema_name: {
                required: true,
                serialized_name: 'schemaName',
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
