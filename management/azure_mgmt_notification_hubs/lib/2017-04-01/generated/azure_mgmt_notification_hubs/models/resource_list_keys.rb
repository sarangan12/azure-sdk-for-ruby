# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::NotificationHubs::Api_2017_04_01
  module Models
    #
    # Namespace/NotificationHub Connection String
    #
    class ResourceListKeys

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] PrimaryConnectionString of the AuthorizationRule.
      attr_accessor :primary_connection_string

      # @return [String] SecondaryConnectionString of the created
      # AuthorizationRule
      attr_accessor :secondary_connection_string

      # @return [String] PrimaryKey of the created AuthorizationRule.
      attr_accessor :primary_key

      # @return [String] SecondaryKey of the created AuthorizationRule
      attr_accessor :secondary_key

      # @return [String] KeyName of the created AuthorizationRule
      attr_accessor :key_name


      #
      # Mapper for ResourceListKeys class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ResourceListKeys',
          type: {
            name: 'Composite',
            class_name: 'ResourceListKeys',
            model_properties: {
              primary_connection_string: {
                required: false,
                serialized_name: 'primaryConnectionString',
                type: {
                  name: 'String'
                }
              },
              secondary_connection_string: {
                required: false,
                serialized_name: 'secondaryConnectionString',
                type: {
                  name: 'String'
                }
              },
              primary_key: {
                required: false,
                serialized_name: 'primaryKey',
                type: {
                  name: 'String'
                }
              },
              secondary_key: {
                required: false,
                serialized_name: 'secondaryKey',
                type: {
                  name: 'String'
                }
              },
              key_name: {
                required: false,
                serialized_name: 'keyName',
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
