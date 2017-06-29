# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.1.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Insights
  module Models
    #
    # Description of a service diagnostic setting
    #
    class ServiceDiagnosticSettingsResource < MsRestAzure::Resource

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The resource ID of the storage account to which you
      # would like to send Diagnostic Logs.
      attr_accessor :storage_account_id

      # @return [String] The service bus rule ID of the service bus namespace
      # in which you would like to have Event Hubs created for streaming
      # Diagnostic Logs. The rule ID is of the format: '{service bus resource
      # ID}/authorizationrules/{key name}'.
      attr_accessor :service_bus_rule_id

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
          required: false,
          serialized_name: 'ServiceDiagnosticSettingsResource',
          type: {
            name: 'Composite',
            class_name: 'ServiceDiagnosticSettingsResource',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location: {
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              storage_account_id: {
                required: false,
                serialized_name: 'properties.storageAccountId',
                type: {
                  name: 'String'
                }
              },
              service_bus_rule_id: {
                required: false,
                serialized_name: 'properties.serviceBusRuleId',
                type: {
                  name: 'String'
                }
              },
              metrics: {
                required: false,
                serialized_name: 'properties.metrics',
                type: {
                  name: 'Sequence',
                  element: {
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
                required: false,
                serialized_name: 'properties.logs',
                type: {
                  name: 'Sequence',
                  element: {
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
