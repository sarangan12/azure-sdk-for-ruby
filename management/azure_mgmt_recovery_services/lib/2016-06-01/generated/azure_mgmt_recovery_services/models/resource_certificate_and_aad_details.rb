# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServices::Mgmt::V2016_06_01
  module Models
    #
    # Certificate details representing the Vault credentials for AAD.
    #
    class ResourceCertificateAndAadDetails < ResourceCertificateDetails

      include MsRestAzure


      def initialize
        @authType = "AzureActiveDirectory"
      end

      attr_accessor :authType

      # @return [String] AAD tenant authority.
      attr_accessor :aad_authority

      # @return [String] AAD tenant Id.
      attr_accessor :aad_tenant_id

      # @return [String] AAD service principal clientId.
      attr_accessor :service_principal_client_id

      # @return [String] AAD service principal ObjectId.
      attr_accessor :service_principal_object_id

      # @return [String] Azure Management Endpoint Audience.
      attr_accessor :azure_management_endpoint_audience


      #
      # Mapper for ResourceCertificateAndAadDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AzureActiveDirectory',
          type: {
            name: 'Composite',
            class_name: 'ResourceCertificateAndAadDetails',
            model_properties: {
              certificate: {
                client_side_validation: true,
                required: false,
                serialized_name: 'certificate',
                type: {
                  name: 'ByteArray'
                }
              },
              friendly_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'friendlyName',
                type: {
                  name: 'String'
                }
              },
              issuer: {
                client_side_validation: true,
                required: false,
                serialized_name: 'issuer',
                type: {
                  name: 'String'
                }
              },
              resource_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'resourceId',
                type: {
                  name: 'Number'
                }
              },
              subject: {
                client_side_validation: true,
                required: false,
                serialized_name: 'subject',
                type: {
                  name: 'String'
                }
              },
              thumbprint: {
                client_side_validation: true,
                required: false,
                serialized_name: 'thumbprint',
                type: {
                  name: 'String'
                }
              },
              valid_from: {
                client_side_validation: true,
                required: false,
                serialized_name: 'validFrom',
                type: {
                  name: 'DateTime'
                }
              },
              valid_to: {
                client_side_validation: true,
                required: false,
                serialized_name: 'validTo',
                type: {
                  name: 'DateTime'
                }
              },
              authType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'authType',
                type: {
                  name: 'String'
                }
              },
              aad_authority: {
                client_side_validation: true,
                required: true,
                serialized_name: 'aadAuthority',
                type: {
                  name: 'String'
                }
              },
              aad_tenant_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'aadTenantId',
                type: {
                  name: 'String'
                }
              },
              service_principal_client_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'servicePrincipalClientId',
                type: {
                  name: 'String'
                }
              },
              service_principal_object_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'servicePrincipalObjectId',
                type: {
                  name: 'String'
                }
              },
              azure_management_endpoint_audience: {
                client_side_validation: true,
                required: true,
                serialized_name: 'azureManagementEndpointAudience',
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
