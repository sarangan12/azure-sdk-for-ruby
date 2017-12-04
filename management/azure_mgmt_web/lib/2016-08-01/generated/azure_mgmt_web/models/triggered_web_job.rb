# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2016_08_01
  module Models
    #
    # Triggered Web Job Information.
    #
    class TriggeredWebJob < ProxyOnlyResource

      include MsRestAzure

      # @return [TriggeredJobRun] Latest job run information.
      attr_accessor :latest_run

      # @return [String] History URL.
      attr_accessor :history_url

      # @return [String] Scheduler Logs URL.
      attr_accessor :scheduler_logs_url

      # @return [String] Job name. Used as job identifier in ARM resource URI.
      attr_accessor :triggered_web_job_name

      # @return [String] Run command.
      attr_accessor :run_command

      # @return [String] Job URL.
      attr_accessor :url

      # @return [String] Extra Info URL.
      attr_accessor :extra_info_url

      # @return [WebJobType] Job type. Possible values include: 'Continuous',
      # 'Triggered'
      attr_accessor :job_type

      # @return [String] Error information.
      attr_accessor :error

      # @return [Boolean] Using SDK?
      attr_accessor :using_sdk

      # @return Job settings.
      attr_accessor :settings


      #
      # Mapper for TriggeredWebJob class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'TriggeredWebJob',
          type: {
            name: 'Composite',
            class_name: 'TriggeredWebJob',
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
              kind: {
                client_side_validation: true,
                required: false,
                serialized_name: 'kind',
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
              latest_run: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.latestRun',
                type: {
                  name: 'Composite',
                  class_name: 'TriggeredJobRun'
                }
              },
              history_url: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.historyUrl',
                type: {
                  name: 'String'
                }
              },
              scheduler_logs_url: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.schedulerLogsUrl',
                type: {
                  name: 'String'
                }
              },
              triggered_web_job_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.name',
                type: {
                  name: 'String'
                }
              },
              run_command: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.runCommand',
                type: {
                  name: 'String'
                }
              },
              url: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.url',
                type: {
                  name: 'String'
                }
              },
              extra_info_url: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.extraInfoUrl',
                type: {
                  name: 'String'
                }
              },
              job_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.jobType',
                type: {
                  name: 'Enum',
                  module: 'WebJobType'
                }
              },
              error: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.error',
                type: {
                  name: 'String'
                }
              },
              using_sdk: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.usingSdk',
                type: {
                  name: 'Boolean'
                }
              },
              settings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.settings',
                type: {
                  name: 'Object'
                }
              }
            }
          }
        }
      end
    end
  end
end
