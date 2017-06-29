# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.1.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::SQL
  module Models
    #
    # Azure Active Directory identity configuration for a resource.
    #
    class ResourceIdentity

      include MsRestAzure

      include MsRest::JSONable
      # @return The Azure Active Directory principal id.
      attr_accessor :principal_id

      # @return [IdentityType] The identity type. Set this to 'SystemAssigned'
      # in order to automatically create and assign an Azure Active Directory
      # principal for the resource. Possible values include: 'SystemAssigned'
      attr_accessor :type

      # @return The Azure Active Directory tenant id.
      attr_accessor :tenant_id


      #
      # Mapper for ResourceIdentity class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ResourceIdentity',
          type: {
            name: 'Composite',
            class_name: 'ResourceIdentity',
            model_properties: {
              principal_id: {
                required: false,
                read_only: true,
                serialized_name: 'principalId',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              tenant_id: {
                required: false,
                read_only: true,
                serialized_name: 'tenantId',
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
