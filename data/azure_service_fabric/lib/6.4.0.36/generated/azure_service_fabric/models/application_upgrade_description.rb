# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_4_0_36
  module Models
    #
    # Describes the parameters for an application upgrade. Note that upgrade
    # description replaces the existing application description. This means
    # that if the parameters are not specified, the existing parameters on the
    # applications will be overwritten with the empty parameters list. This
    # would result in the application using the default value of the parameters
    # from the application manifest. If you do not want to change any existing
    # parameter values, please get the application parameters first using the
    # GetApplicationInfo query and then supply those values as Parameters in
    # this ApplicationUpgradeDescription.
    #
    class ApplicationUpgradeDescription

      include MsRestAzure

      # @return [String] The name of the target application, including the
      # 'fabric:' URI scheme.
      attr_accessor :name

      # @return [String] The target application type version (found in the
      # application manifest) for the application upgrade.
      attr_accessor :target_application_type_version

      # @return [Array<ApplicationParameter>] List of application parameters
      # with overridden values from their default values specified in the
      # application manifest.
      attr_accessor :parameters

      # @return [UpgradeKind] The kind of upgrade out of the following possible
      # values. Possible values include: 'Invalid', 'Rolling'. Default value:
      # 'Rolling' .
      attr_accessor :upgrade_kind

      # @return [UpgradeMode] The mode used to monitor health during a rolling
      # upgrade. The values are UnmonitoredAuto, UnmonitoredManual, and
      # Monitored. Possible values include: 'Invalid', 'UnmonitoredAuto',
      # 'UnmonitoredManual', 'Monitored'. Default value: 'UnmonitoredAuto' .
      attr_accessor :rolling_upgrade_mode

      # @return [Integer] The maximum amount of time to block processing of an
      # upgrade domain and prevent loss of availability when there are
      # unexpected issues. When this timeout expires, processing of the upgrade
      # domain will proceed regardless of availability loss issues. The timeout
      # is reset at the start of each upgrade domain. Valid values are between
      # 0 and 42949672925 inclusive. (unsigned 32-bit integer).
      attr_accessor :upgrade_replica_set_check_timeout_in_seconds

      # @return [Boolean] If true, then processes are forcefully restarted
      # during upgrade even when the code version has not changed (the upgrade
      # only changes configuration or data).
      attr_accessor :force_restart

      # @return [MonitoringPolicyDescription] Describes the parameters for
      # monitoring an upgrade in Monitored mode.
      attr_accessor :monitoring_policy

      # @return [ApplicationHealthPolicy] Defines a health policy used to
      # evaluate the health of an application or one of its children entities.
      attr_accessor :application_health_policy


      #
      # Mapper for ApplicationUpgradeDescription class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApplicationUpgradeDescription',
          type: {
            name: 'Composite',
            class_name: 'ApplicationUpgradeDescription',
            model_properties: {
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'Name',
                type: {
                  name: 'String'
                }
              },
              target_application_type_version: {
                client_side_validation: true,
                required: true,
                serialized_name: 'TargetApplicationTypeVersion',
                type: {
                  name: 'String'
                }
              },
              parameters: {
                client_side_validation: true,
                required: true,
                serialized_name: 'Parameters',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ApplicationParameterElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ApplicationParameter'
                      }
                  }
                }
              },
              upgrade_kind: {
                client_side_validation: true,
                required: true,
                serialized_name: 'UpgradeKind',
                default_value: 'Rolling',
                type: {
                  name: 'String'
                }
              },
              rolling_upgrade_mode: {
                client_side_validation: true,
                required: false,
                serialized_name: 'RollingUpgradeMode',
                default_value: 'UnmonitoredAuto',
                type: {
                  name: 'String'
                }
              },
              upgrade_replica_set_check_timeout_in_seconds: {
                client_side_validation: true,
                required: false,
                serialized_name: 'UpgradeReplicaSetCheckTimeoutInSeconds',
                type: {
                  name: 'Number'
                }
              },
              force_restart: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ForceRestart',
                type: {
                  name: 'Boolean'
                }
              },
              monitoring_policy: {
                client_side_validation: true,
                required: false,
                serialized_name: 'MonitoringPolicy',
                type: {
                  name: 'Composite',
                  class_name: 'MonitoringPolicyDescription'
                }
              },
              application_health_policy: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ApplicationHealthPolicy',
                type: {
                  name: 'Composite',
                  class_name: 'ApplicationHealthPolicy'
                }
              }
            }
          }
        }
      end
    end
  end
end
