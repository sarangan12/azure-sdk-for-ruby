# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CustomerInsights::Mgmt::V2017_04_26
  module Models
    #
    # The authorization policy.
    #
    class AuthorizationPolicy

      include MsRestAzure

      # @return [String] Name of the policy.
      attr_accessor :policy_name

      # @return [Array<PermissionTypes>] The permissions associated with the
      # policy.
      attr_accessor :permissions

      # @return [String] Primary key assiciated with the policy.
      attr_accessor :primary_key

      # @return [String] Secondary key assiciated with the policy.
      attr_accessor :secondary_key


      #
      # Mapper for AuthorizationPolicy class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AuthorizationPolicy',
          type: {
            name: 'Composite',
            class_name: 'AuthorizationPolicy',
            model_properties: {
              policy_name: {
                required: false,
                read_only: true,
                serialized_name: 'policyName',
                type: {
                  name: 'String'
                }
              },
              permissions: {
                required: true,
                serialized_name: 'permissions',
                constraints: {
                  UniqueItems: true
                },
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'PermissionTypesElementType',
                      type: {
                        name: 'Enum',
                        module: 'PermissionTypes'
                      }
                  }
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
              }
            }
          }
        }
      end
    end
  end
end
