# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Authorization::Mgmt::V2017_10_01_preview
  module Models
    #
    # Role Assignments
    #
    class RoleAssignment

      include MsRestAzure

      # @return [String] The role assignment ID.
      attr_accessor :id

      # @return [String] The role assignment name.
      attr_accessor :name

      # @return [String] The role assignment type.
      attr_accessor :type

      # @return [String] The role assignment scope.
      attr_accessor :scope

      # @return [String] The role definition ID.
      attr_accessor :role_definition_id

      # @return [String] The principal ID.
      attr_accessor :principal_id

      # @return [Boolean] The Delegation flag for the roleassignment
      attr_accessor :can_delegate


      #
      # Mapper for RoleAssignment class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RoleAssignment',
          type: {
            name: 'Composite',
            class_name: 'RoleAssignment',
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
              scope: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.scope',
                type: {
                  name: 'String'
                }
              },
              role_definition_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.roleDefinitionId',
                type: {
                  name: 'String'
                }
              },
              principal_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.principalId',
                type: {
                  name: 'String'
                }
              },
              can_delegate: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.canDelegate',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
