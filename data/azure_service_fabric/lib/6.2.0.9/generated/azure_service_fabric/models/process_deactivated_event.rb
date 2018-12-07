# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_2_0_9
  module Models
    #
    # Process Deactivated event.
    #
    class ProcessDeactivatedEvent < ApplicationEvent

      include MsRestAzure


      def initialize
        @Kind = "ProcessDeactivated"
      end

      attr_accessor :Kind

      # @return [String] Name of Service.
      attr_accessor :service_name

      # @return [String] Name of Service package.
      attr_accessor :service_package_name

      # @return [String] Activation Id of Service package.
      attr_accessor :service_package_activation_id

      # @return [Boolean] Indicates IsExclusive flag.
      attr_accessor :is_exclusive

      # @return [String] Name of Code package.
      attr_accessor :code_package_name

      # @return [String] Type of EntryPoint.
      attr_accessor :entry_point_type

      # @return [String] Name of executable.
      attr_accessor :exe_name

      # @return [Integer] Process Id.
      attr_accessor :process_id

      # @return [String] Host Id.
      attr_accessor :host_id

      # @return [Integer] Exit code of process.
      attr_accessor :exit_code

      # @return [Boolean] Indicates if termination is unexpected.
      attr_accessor :unexpected_termination

      # @return [DateTime] Start time of process.
      attr_accessor :start_time


      #
      # Mapper for ProcessDeactivatedEvent class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ProcessDeactivated',
          type: {
            name: 'Composite',
            class_name: 'ProcessDeactivatedEvent',
            model_properties: {
              event_instance_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'EventInstanceId',
                type: {
                  name: 'String'
                }
              },
              time_stamp: {
                client_side_validation: true,
                required: true,
                serialized_name: 'TimeStamp',
                type: {
                  name: 'DateTime'
                }
              },
              has_correlated_events: {
                client_side_validation: true,
                required: false,
                serialized_name: 'HasCorrelatedEvents',
                type: {
                  name: 'Boolean'
                }
              },
              Kind: {
                client_side_validation: true,
                required: true,
                serialized_name: 'Kind',
                type: {
                  name: 'String'
                }
              },
              application_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ApplicationId',
                type: {
                  name: 'String'
                }
              },
              service_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ServiceName',
                type: {
                  name: 'String'
                }
              },
              service_package_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ServicePackageName',
                type: {
                  name: 'String'
                }
              },
              service_package_activation_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ServicePackageActivationId',
                type: {
                  name: 'String'
                }
              },
              is_exclusive: {
                client_side_validation: true,
                required: false,
                serialized_name: 'IsExclusive',
                type: {
                  name: 'Boolean'
                }
              },
              code_package_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'CodePackageName',
                type: {
                  name: 'String'
                }
              },
              entry_point_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'EntryPointType',
                type: {
                  name: 'String'
                }
              },
              exe_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ExeName',
                type: {
                  name: 'String'
                }
              },
              process_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ProcessId',
                type: {
                  name: 'Number'
                }
              },
              host_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'HostId',
                type: {
                  name: 'String'
                }
              },
              exit_code: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ExitCode',
                type: {
                  name: 'Number'
                }
              },
              unexpected_termination: {
                client_side_validation: true,
                required: false,
                serialized_name: 'UnexpectedTermination',
                type: {
                  name: 'Boolean'
                }
              },
              start_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'StartTime',
                type: {
                  name: 'DateTime'
                }
              }
            }
          }
        }
      end
    end
  end
end
