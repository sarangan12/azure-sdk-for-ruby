# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Monitor::Mgmt::V2016_09_01
  module Models
    #
    # Description of a service diagnostic setting
    #
    class ServiceDiagnosticSettingsResource < Resource

      include MsRestAzure

      # @return [String] The resource ID of the storage account to which you
      # would like to send Diagnostic Logs.
      attr_accessor :storage_account_id

      # @return [String] The service bus rule ID of the service bus namespace
      # in which you would like to have Event Hubs created for streaming
      # Diagnostic Logs. The rule ID is of the format: '{service bus resource
      # ID}/authorizationrules/{key name}'.
      attr_accessor :service_bus_rule_id

      # @return [String] The resource Id for the event hub namespace
      # authorization rule.
      attr_accessor :event_hub_authorization_rule_id

      # @return [Array<MetricSettings>] the list of metric settings.
      attr_accessor :metrics

      # @return [Array<LogSettings>] the list of logs settings.
      attr_accessor :logs

      # @return [String] The workspace ID (resource ID of a Log Analytics
      # workspace) for a Log Analytics workspace to which you would like to
      # send Diagnostic Logs. Example:
      # /subscriptions/4b9e8510-67ab-4e9a-95a9-e2f1e570ea9c/resourceGroups/insights-integration/providers/Microsoft.OperationalInsights/workspaces/viruela2
      attr_accessor :workspace_id


      #
      # Mapper for ServiceDiagnosticSettingsResource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ServiceDiagnosticSettingsResource',
          type: {
            name: 'Composite',
            class_name: 'ServiceDiagnosticSettingsResource',
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
              location: {
                client_side_validation: true,
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              storage_account_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.storageAccountId',
                type: {
                  name: 'String'
                }
              },
              service_bus_rule_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.serviceBusRuleId',
                type: {
                  name: 'String'
                }
              },
              event_hub_authorization_rule_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.eventHubAuthorizationRuleId',
                type: {
                  name: 'String'
                }
              },
              metrics: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.metrics',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'MetricSettingsElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'MetricSettings'
                      }
                  }
                }
              },
              logs: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.logs',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'LogSettingsElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'LogSettings'
                      }
                  }
                }
              },
              workspace_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.workspaceId',
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
