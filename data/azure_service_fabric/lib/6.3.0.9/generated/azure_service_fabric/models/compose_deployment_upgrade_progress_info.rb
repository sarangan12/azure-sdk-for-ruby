# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_3_0_9
  module Models
    #
    # Describes the parameters for a compose deployment upgrade.
    #
    class ComposeDeploymentUpgradeProgressInfo

      include MsRestAzure

      # @return [String] The name of the target deployment.
      attr_accessor :deployment_name

      # @return [String] The name of the target application, including the
      # 'fabric:' URI scheme.
      attr_accessor :application_name

      # @return [ComposeDeploymentUpgradeState] The state of the compose
      # deployment upgrade. Possible values include: 'Invalid',
      # 'ProvisioningTarget', 'RollingForwardInProgress',
      # 'RollingForwardPending', 'UnprovisioningCurrent',
      # 'RollingForwardCompleted', 'RollingBackInProgress',
      # 'UnprovisioningTarget', 'RollingBackCompleted', 'Failed'
      attr_accessor :upgrade_state

      # @return [String] Additional detailed information about the status of
      # the pending upgrade.
      attr_accessor :upgrade_status_details

      # @return [UpgradeKind] The kind of upgrade out of the following possible
      # values. Possible values include: 'Invalid', 'Rolling'. Default value:
      # 'Rolling' .
      attr_accessor :upgrade_kind

      # @return [UpgradeMode] The mode used to monitor health during a rolling
      # upgrade. The values are UnmonitoredAuto, UnmonitoredManual, and
      # Monitored. Possible values include: 'Invalid', 'UnmonitoredAuto',
      # 'UnmonitoredManual', 'Monitored'. Default value: 'UnmonitoredAuto' .
      attr_accessor :rolling_upgrade_mode

      # @return [Boolean] If true, then processes are forcefully restarted
      # during upgrade even when the code version has not changed (the upgrade
      # only changes configuration or data).
      attr_accessor :force_restart

      # @return [Integer] The maximum amount of time to block processing of an
      # upgrade domain and prevent loss of availability when there are
      # unexpected issues. When this timeout expires, processing of the upgrade
      # domain will proceed regardless of availability loss issues. The timeout
      # is reset at the start of each upgrade domain. Valid values are between
      # 0 and 42949672925 inclusive. (unsigned 32-bit integer).
      attr_accessor :upgrade_replica_set_check_timeout_in_seconds

      # @return [MonitoringPolicyDescription] Describes the parameters for
      # monitoring an upgrade in Monitored mode.
      attr_accessor :monitoring_policy

      # @return [ApplicationHealthPolicy] Defines a health policy used to
      # evaluate the health of an application or one of its children entities.
      attr_accessor :application_health_policy

      # @return [String] The target application type version (found in the
      # application manifest) for the application upgrade.
      attr_accessor :target_application_type_version

      # @return [String] The estimated amount of time that the overall upgrade
      # elapsed. It is first interpreted as a string representing an ISO 8601
      # duration. If that fails, then it is interpreted as a number
      # representing the total number of milliseconds.
      attr_accessor :upgrade_duration

      # @return [String] The estimated amount of time spent processing current
      # Upgrade Domain. It is first interpreted as a string representing an ISO
      # 8601 duration. If that fails, then it is interpreted as a number
      # representing the total number of milliseconds.
      attr_accessor :current_upgrade_domain_duration

      # @return [Array<HealthEvaluationWrapper>] List of health evaluations
      # that resulted in the current aggregated health state.
      attr_accessor :application_unhealthy_evaluations

      # @return [CurrentUpgradeDomainProgressInfo] Information about the
      # current in-progress upgrade domain.
      attr_accessor :current_upgrade_domain_progress

      # @return [String] The estimated UTC datetime when the upgrade started.
      attr_accessor :start_timestamp_utc

      # @return [String] The estimated UTC datetime when the upgrade failed and
      # FailureAction was executed.
      attr_accessor :failure_timestamp_utc

      # @return [FailureReason] The cause of an upgrade failure that resulted
      # in FailureAction being executed. Possible values include: 'None',
      # 'Interrupted', 'HealthCheck', 'UpgradeDomainTimeout',
      # 'OverallUpgradeTimeout'
      attr_accessor :failure_reason

      # @return [FailureUpgradeDomainProgressInfo] Information about the
      # upgrade domain progress at the time of upgrade failure.
      attr_accessor :upgrade_domain_progress_at_failure

      # @return [String] Additional details of application upgrade including
      # failure message.
      attr_accessor :application_upgrade_status_details


      #
      # Mapper for ComposeDeploymentUpgradeProgressInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ComposeDeploymentUpgradeProgressInfo',
          type: {
            name: 'Composite',
            class_name: 'ComposeDeploymentUpgradeProgressInfo',
            model_properties: {
              deployment_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'DeploymentName',
                type: {
                  name: 'String'
                }
              },
              application_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ApplicationName',
                type: {
                  name: 'String'
                }
              },
              upgrade_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'UpgradeState',
                type: {
                  name: 'String'
                }
              },
              upgrade_status_details: {
                client_side_validation: true,
                required: false,
                serialized_name: 'UpgradeStatusDetails',
                type: {
                  name: 'String'
                }
              },
              upgrade_kind: {
                client_side_validation: true,
                required: false,
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
              force_restart: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ForceRestart',
                type: {
                  name: 'Boolean'
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
              },
              target_application_type_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'TargetApplicationTypeVersion',
                type: {
                  name: 'String'
                }
              },
              upgrade_duration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'UpgradeDuration',
                type: {
                  name: 'String'
                }
              },
              current_upgrade_domain_duration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'CurrentUpgradeDomainDuration',
                type: {
                  name: 'String'
                }
              },
              application_unhealthy_evaluations: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ApplicationUnhealthyEvaluations',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'HealthEvaluationWrapperElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'HealthEvaluationWrapper'
                      }
                  }
                }
              },
              current_upgrade_domain_progress: {
                client_side_validation: true,
                required: false,
                serialized_name: 'CurrentUpgradeDomainProgress',
                type: {
                  name: 'Composite',
                  class_name: 'CurrentUpgradeDomainProgressInfo'
                }
              },
              start_timestamp_utc: {
                client_side_validation: true,
                required: false,
                serialized_name: 'StartTimestampUtc',
                type: {
                  name: 'String'
                }
              },
              failure_timestamp_utc: {
                client_side_validation: true,
                required: false,
                serialized_name: 'FailureTimestampUtc',
                type: {
                  name: 'String'
                }
              },
              failure_reason: {
                client_side_validation: true,
                required: false,
                serialized_name: 'FailureReason',
                type: {
                  name: 'String'
                }
              },
              upgrade_domain_progress_at_failure: {
                client_side_validation: true,
                required: false,
                serialized_name: 'UpgradeDomainProgressAtFailure',
                type: {
                  name: 'Composite',
                  class_name: 'FailureUpgradeDomainProgressInfo'
                }
              },
              application_upgrade_status_details: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ApplicationUpgradeStatusDetails',
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
