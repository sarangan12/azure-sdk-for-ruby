# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.1.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Graph
  module Models
    #
    # Request parameters for updating an existing work or school account user.
    #
    class UserUpdateParameters

      include MsRestAzure

      include MsRest::JSONable
      # @return [Boolean] Whether the account is enabled.
      attr_accessor :account_enabled

      # @return [String] The display name of the user.
      attr_accessor :display_name

      # @return [PasswordProfile] The password profile of the user.
      attr_accessor :password_profile

      # @return [String] The mail alias for the user.
      attr_accessor :mail_nickname

      # @return [String] A two letter country code (ISO standard 3166).
      # Required for users that will be assigned licenses due to legal
      # requirement to check for availability of services in countries.
      # Examples include: "US", "JP", and "GB".
      attr_accessor :usage_location


      #
      # Mapper for UserUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'UserUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'UserUpdateParameters',
            model_properties: {
              account_enabled: {
                required: false,
                serialized_name: 'accountEnabled',
                type: {
                  name: 'Boolean'
                }
              },
              display_name: {
                required: false,
                serialized_name: 'displayName',
                type: {
                  name: 'String'
                }
              },
              password_profile: {
                required: false,
                serialized_name: 'passwordProfile',
                type: {
                  name: 'Composite',
                  class_name: 'PasswordProfile'
                }
              },
              mail_nickname: {
                required: false,
                serialized_name: 'mailNickname',
                type: {
                  name: 'String'
                }
              },
              usage_location: {
                required: false,
                serialized_name: 'usageLocation',
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
