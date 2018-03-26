# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Authorization::Mgmt::V2018_01_01_preview
  module Models
    #
    # Role definition.
    #
    class RoleDefinition

      include MsRestAzure

      # @return [String] The role definition ID.
      attr_accessor :id

      # @return [String] The role definition name.
      attr_accessor :name

      # @return [String] The role definition type.
      attr_accessor :type

      # @return [String] The role name.
      attr_accessor :role_name

      # @return [String] The role definition description.
      attr_accessor :description

      # @return [String] The role type.
      attr_accessor :role_type

      # @return [Array<Permission>] Role definition permissions.
      attr_accessor :permissions

      # @return [Array<String>] Role definition assignable scopes.
      attr_accessor :assignable_scopes


      #
      # Mapper for RoleDefinition class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RoleDefinition',
          type: {
            name: 'Composite',
            class_name: 'RoleDefinition',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              role_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.roleName',
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.description',
                type: {
                  name: 'String'
                }
              },
              role_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.type',
                type: {
                  name: 'String'
                }
              },
              permissions: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.permissions',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'PermissionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Permission'
                      }
                  }
                }
              },
              assignable_scopes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.assignableScopes',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
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
