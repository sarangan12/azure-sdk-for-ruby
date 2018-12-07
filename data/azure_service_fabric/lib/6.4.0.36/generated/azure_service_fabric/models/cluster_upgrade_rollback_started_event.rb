# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_4_0_36
  module Models
    #
    # Cluster Upgrade Rollback Started event.
    #
    class ClusterUpgradeRollbackStartedEvent < ClusterEvent

      include MsRestAzure


      def initialize
        @Kind = "ClusterUpgradeRollbackStarted"
      end

      attr_accessor :Kind

      # @return [String] Target Cluster version.
      attr_accessor :target_cluster_version

      # @return [String] Describes failure.
      attr_accessor :failure_reason

      # @return [Float] Overall duration of upgrade in milli-seconds.
      attr_accessor :overall_upgrade_elapsed_time_in_ms


      #
      # Mapper for ClusterUpgradeRollbackStartedEvent class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ClusterUpgradeRollbackStarted',
          type: {
            name: 'Composite',
            class_name: 'ClusterUpgradeRollbackStartedEvent',
            model_properties: {
              event_instance_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'EventInstanceId',
                type: {
                  name: 'String'
                }
              },
              category: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Category',
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
              target_cluster_version: {
                client_side_validation: true,
                required: true,
                serialized_name: 'TargetClusterVersion',
                type: {
                  name: 'String'
                }
              },
              failure_reason: {
                client_side_validation: true,
                required: true,
                serialized_name: 'FailureReason',
                type: {
                  name: 'String'
                }
              },
              overall_upgrade_elapsed_time_in_ms: {
                client_side_validation: true,
                required: true,
                serialized_name: 'OverallUpgradeElapsedTimeInMs',
                type: {
                  name: 'Double'
                }
              }
            }
          }
        }
      end
    end
  end
end
