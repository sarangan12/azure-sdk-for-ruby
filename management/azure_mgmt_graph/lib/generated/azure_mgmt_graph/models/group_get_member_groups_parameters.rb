# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Graph
  module Models
    #
    # Request parameters for GetMemberGroups API call.
    #
    class GroupGetMemberGroupsParameters

      include MsRestAzure

      include MsRest::JSONable
      # @return [Boolean] If true, only membership in security-enabled groups
      # should be checked. Otherwise, membership in all groups should be
      # checked.
      attr_accessor :security_enabled_only


      #
      # Mapper for GroupGetMemberGroupsParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'GroupGetMemberGroupsParameters',
          type: {
            name: 'Composite',
            class_name: 'GroupGetMemberGroupsParameters',
            model_properties: {
              security_enabled_only: {
                required: true,
                serialized_name: 'securityEnabledOnly',
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
