# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Postgresql::Mgmt::V2017_12_01_preview
  module Models
    #
    # A server security alert policy.
    #
    class ServerSecurityAlertPolicy < ProxyResource

      include MsRestAzure

      # @return [ServerSecurityAlertPolicyState] Specifies the state of the
      # policy, whether it is enabled or disabled. Possible values include:
      # 'Enabled', 'Disabled'
      attr_accessor :state

      # @return [Array<String>] Specifies an array of alerts that are disabled.
      # Allowed values are: Sql_Injection, Sql_Injection_Vulnerability,
      # Access_Anomaly
      attr_accessor :disabled_alerts

      # @return [Array<String>] Specifies an array of e-mail addresses to which
      # the alert is sent.
      attr_accessor :email_addresses

      # @return [Boolean] Specifies that the alert is sent to the account
      # administrators.
      attr_accessor :email_account_admins

      # @return [String] Specifies the blob storage endpoint (e.g.
      # https://MyAccount.blob.core.windows.net). This blob storage will hold
      # all Threat Detection audit logs.
      attr_accessor :storage_endpoint

      # @return [String] Specifies the identifier key of the Threat Detection
      # audit storage account.
      attr_accessor :storage_account_access_key

      # @return [Integer] Specifies the number of days to keep in the Threat
      # Detection audit logs.
      attr_accessor :retention_days


      #
      # Mapper for ServerSecurityAlertPolicy class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ServerSecurityAlertPolicy',
          type: {
            name: 'Composite',
            class_name: 'ServerSecurityAlertPolicy',
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
              state: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.state',
                type: {
                  name: 'Enum',
                  module: 'ServerSecurityAlertPolicyState'
                }
              },
              disabled_alerts: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.disabledAlerts',
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
              },
              email_addresses: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.emailAddresses',
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
              },
              email_account_admins: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.emailAccountAdmins',
                type: {
                  name: 'Boolean'
                }
              },
              storage_endpoint: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.storageEndpoint',
                type: {
                  name: 'String'
                }
              },
              storage_account_access_key: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.storageAccountAccessKey',
                type: {
                  name: 'String'
                }
              },
              retention_days: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.retentionDays',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
