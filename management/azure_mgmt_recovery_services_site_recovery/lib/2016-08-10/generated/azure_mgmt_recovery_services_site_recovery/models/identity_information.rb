# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10
  module Models
    #
    # Identity details.
    #
    class IdentityInformation

      include MsRestAzure

      # @return [IdentityProviderType] The identity provider type. Value is the
      # ToString() of a IdentityProviderType value. Possible values include:
      # 'RecoveryServicesActiveDirectory', 'CustomerActiveDirectory'
      attr_accessor :identity_provider_type

      # @return [String] The tenant Id for the service principal with which the
      # on-premise management/data plane components would communicate with our
      # Azure services.
      attr_accessor :tenant_id

      # @return [String] The application/client Id for the service principal
      # with which the on-premise management/data plane components would
      # communicate with our Azure services.
      attr_accessor :application_id

      # @return [String] The object Id of the service principal with which the
      # on-premise management/data plane components would communicate with our
      # Azure services.
      attr_accessor :object_id

      # @return [String] The intended Audience of the service principal with
      # which the on-premise management/data plane components would communicate
      # with our Azure services.
      attr_accessor :audience

      # @return [String] The base authority for Azure Active Directory
      # authentication.
      attr_accessor :aad_authority

      # @return [String] The certificate thumbprint. Applicable only if
      # IdentityProviderType is RecoveryServicesActiveDirectory.
      attr_accessor :certificate_thumbprint


      #
      # Mapper for IdentityInformation class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'IdentityInformation',
          type: {
            name: 'Composite',
            class_name: 'IdentityInformation',
            model_properties: {
              identity_provider_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'identityProviderType',
                type: {
                  name: 'Enum',
                  module: 'IdentityProviderType'
                }
              },
              tenant_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tenantId',
                type: {
                  name: 'String'
                }
              },
              application_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'applicationId',
                type: {
                  name: 'String'
                }
              },
              object_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'objectId',
                type: {
                  name: 'String'
                }
              },
              audience: {
                client_side_validation: true,
                required: false,
                serialized_name: 'audience',
                type: {
                  name: 'String'
                }
              },
              aad_authority: {
                client_side_validation: true,
                required: false,
                serialized_name: 'aadAuthority',
                type: {
                  name: 'String'
                }
              },
              certificate_thumbprint: {
                client_side_validation: true,
                required: false,
                serialized_name: 'certificateThumbprint',
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
