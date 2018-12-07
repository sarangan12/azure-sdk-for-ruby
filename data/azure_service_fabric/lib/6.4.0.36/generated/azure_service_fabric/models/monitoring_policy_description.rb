# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_4_0_36
  module Models
    #
    # Describes the parameters for monitoring an upgrade in Monitored mode.
    #
    class MonitoringPolicyDescription

      include MsRestAzure

      # @return [FailureAction] The compensating action to perform when a
      # Monitored upgrade encounters monitoring policy or health policy
      # violations.
      # Invalid indicates the failure action is invalid. Rollback specifies
      # that the upgrade will start rolling back automatically.
      # Manual indicates that the upgrade will switch to UnmonitoredManual
      # upgrade mode. Possible values include: 'Invalid', 'Rollback', 'Manual'
      attr_accessor :failure_action

      # @return [String] The amount of time to wait after completing an upgrade
      # domain before applying health policies. It is first interpreted as a
      # string representing an ISO 8601 duration. If that fails, then it is
      # interpreted as a number representing the total number of milliseconds.
      attr_accessor :health_check_wait_duration_in_milliseconds

      # @return [String] The amount of time that the application or cluster
      # must remain healthy before the upgrade proceeds to the next upgrade
      # domain. It is first interpreted as a string representing an ISO 8601
      # duration. If that fails, then it is interpreted as a number
      # representing the total number of milliseconds.
      attr_accessor :health_check_stable_duration_in_milliseconds

      # @return [String] The amount of time to retry health evaluation when the
      # application or cluster is unhealthy before FailureAction is executed.
      # It is first interpreted as a string representing an ISO 8601 duration.
      # If that fails, then it is interpreted as a number representing the
      # total number of milliseconds.
      attr_accessor :health_check_retry_timeout_in_milliseconds

      # @return [String] The amount of time the overall upgrade has to complete
      # before FailureAction is executed. It is first interpreted as a string
      # representing an ISO 8601 duration. If that fails, then it is
      # interpreted as a number representing the total number of milliseconds.
      attr_accessor :upgrade_timeout_in_milliseconds

      # @return [String] The amount of time each upgrade domain has to complete
      # before FailureAction is executed. It is first interpreted as a string
      # representing an ISO 8601 duration. If that fails, then it is
      # interpreted as a number representing the total number of milliseconds.
      attr_accessor :upgrade_domain_timeout_in_milliseconds


      #
      # Mapper for MonitoringPolicyDescription class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MonitoringPolicyDescription',
          type: {
            name: 'Composite',
            class_name: 'MonitoringPolicyDescription',
            model_properties: {
              failure_action: {
                client_side_validation: true,
                required: false,
                serialized_name: 'FailureAction',
                type: {
                  name: 'String'
                }
              },
              health_check_wait_duration_in_milliseconds: {
                client_side_validation: true,
                required: false,
                serialized_name: 'HealthCheckWaitDurationInMilliseconds',
                type: {
                  name: 'String'
                }
              },
              health_check_stable_duration_in_milliseconds: {
                client_side_validation: true,
                required: false,
                serialized_name: 'HealthCheckStableDurationInMilliseconds',
                type: {
                  name: 'String'
                }
              },
              health_check_retry_timeout_in_milliseconds: {
                client_side_validation: true,
                required: false,
                serialized_name: 'HealthCheckRetryTimeoutInMilliseconds',
                type: {
                  name: 'String'
                }
              },
              upgrade_timeout_in_milliseconds: {
                client_side_validation: true,
                required: false,
                serialized_name: 'UpgradeTimeoutInMilliseconds',
                type: {
                  name: 'String'
                }
              },
              upgrade_domain_timeout_in_milliseconds: {
                client_side_validation: true,
                required: false,
                serialized_name: 'UpgradeDomainTimeoutInMilliseconds',
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
