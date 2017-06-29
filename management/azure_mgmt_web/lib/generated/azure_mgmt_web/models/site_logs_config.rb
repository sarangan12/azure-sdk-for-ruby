# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.1.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # Configuration of App Service site logs.
    #
    class SiteLogsConfig < MsRestAzure::Resource

      include MsRestAzure

      include MsRest::JSONable
      # @return [ApplicationLogsConfig] Application logs configuration.
      attr_accessor :application_logs

      # @return [HttpLogsConfig] HTTP logs configuration.
      attr_accessor :http_logs

      # @return [EnabledConfig] Failed requests tracing configuration.
      attr_accessor :failed_requests_tracing

      # @return [EnabledConfig] Detailed error messages configuration.
      attr_accessor :detailed_error_messages


      #
      # Mapper for SiteLogsConfig class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'SiteLogsConfig',
          type: {
            name: 'Composite',
            class_name: 'SiteLogsConfig',
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
              kind: {
                required: false,
                serialized_name: 'kind',
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
              type: {
                required: false,
                serialized_name: 'type',
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
              application_logs: {
                required: false,
                serialized_name: 'properties.applicationLogs',
                type: {
                  name: 'Composite',
                  class_name: 'ApplicationLogsConfig'
                }
              },
              http_logs: {
                required: false,
                serialized_name: 'properties.httpLogs',
                type: {
                  name: 'Composite',
                  class_name: 'HttpLogsConfig'
                }
              },
              failed_requests_tracing: {
                required: false,
                serialized_name: 'properties.failedRequestsTracing',
                type: {
                  name: 'Composite',
                  class_name: 'EnabledConfig'
                }
              },
              detailed_error_messages: {
                required: false,
                serialized_name: 'properties.detailedErrorMessages',
                type: {
                  name: 'Composite',
                  class_name: 'EnabledConfig'
                }
              }
            }
          }
        }
      end
    end
  end
end
