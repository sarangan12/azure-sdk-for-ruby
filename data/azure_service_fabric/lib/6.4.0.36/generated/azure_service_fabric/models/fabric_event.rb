# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_4_0_36
  module Models
    #
    # Represents the base for all Fabric Events.
    #
    class FabricEvent

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["ApplicationEvent"] = "ApplicationEvent"
      @@discriminatorMap["ClusterEvent"] = "ClusterEvent"
      @@discriminatorMap["ContainerInstanceEvent"] = "ContainerInstanceEvent"
      @@discriminatorMap["NodeEvent"] = "NodeEvent"
      @@discriminatorMap["PartitionAnalysisEvent"] = "PartitionAnalysisEvent"
      @@discriminatorMap["PartitionEvent"] = "PartitionEvent"
      @@discriminatorMap["ReplicaEvent"] = "ReplicaEvent"
      @@discriminatorMap["ServiceEvent"] = "ServiceEvent"
      @@discriminatorMap["ApplicationCreated"] = "ApplicationCreatedEvent"
      @@discriminatorMap["ApplicationDeleted"] = "ApplicationDeletedEvent"
      @@discriminatorMap["ApplicationNewHealthReport"] = "ApplicationNewHealthReportEvent"
      @@discriminatorMap["ApplicationHealthReportExpired"] = "ApplicationHealthReportExpiredEvent"
      @@discriminatorMap["ApplicationUpgradeCompleted"] = "ApplicationUpgradeCompletedEvent"
      @@discriminatorMap["ApplicationUpgradeDomainCompleted"] = "ApplicationUpgradeDomainCompletedEvent"
      @@discriminatorMap["ApplicationUpgradeRollbackCompleted"] = "ApplicationUpgradeRollbackCompletedEvent"
      @@discriminatorMap["ApplicationUpgradeRollbackStarted"] = "ApplicationUpgradeRollbackStartedEvent"
      @@discriminatorMap["ApplicationUpgradeStarted"] = "ApplicationUpgradeStartedEvent"
      @@discriminatorMap["DeployedApplicationNewHealthReport"] = "DeployedApplicationNewHealthReportEvent"
      @@discriminatorMap["DeployedApplicationHealthReportExpired"] = "DeployedApplicationHealthReportExpiredEvent"
      @@discriminatorMap["ApplicationProcessExited"] = "ApplicationProcessExitedEvent"
      @@discriminatorMap["ApplicationContainerInstanceExited"] = "ApplicationContainerInstanceExitedEvent"
      @@discriminatorMap["NodeAborted"] = "NodeAbortedEvent"
      @@discriminatorMap["NodeAddedToCluster"] = "NodeAddedToClusterEvent"
      @@discriminatorMap["NodeClosed"] = "NodeClosedEvent"
      @@discriminatorMap["NodeDeactivateCompleted"] = "NodeDeactivateCompletedEvent"
      @@discriminatorMap["NodeDeactivateStarted"] = "NodeDeactivateStartedEvent"
      @@discriminatorMap["NodeDown"] = "NodeDownEvent"
      @@discriminatorMap["NodeNewHealthReport"] = "NodeNewHealthReportEvent"
      @@discriminatorMap["NodeHealthReportExpired"] = "NodeHealthReportExpiredEvent"
      @@discriminatorMap["NodeOpenSucceeded"] = "NodeOpenSucceededEvent"
      @@discriminatorMap["NodeOpenFailed"] = "NodeOpenFailedEvent"
      @@discriminatorMap["NodeRemovedFromCluster"] = "NodeRemovedFromClusterEvent"
      @@discriminatorMap["NodeUp"] = "NodeUpEvent"
      @@discriminatorMap["PartitionNewHealthReport"] = "PartitionNewHealthReportEvent"
      @@discriminatorMap["PartitionHealthReportExpired"] = "PartitionHealthReportExpiredEvent"
      @@discriminatorMap["PartitionReconfigured"] = "PartitionReconfiguredEvent"
      @@discriminatorMap["PartitionPrimaryMoveAnalysis"] = "PartitionPrimaryMoveAnalysisEvent"
      @@discriminatorMap["ServiceCreated"] = "ServiceCreatedEvent"
      @@discriminatorMap["ServiceDeleted"] = "ServiceDeletedEvent"
      @@discriminatorMap["ServiceNewHealthReport"] = "ServiceNewHealthReportEvent"
      @@discriminatorMap["ServiceHealthReportExpired"] = "ServiceHealthReportExpiredEvent"
      @@discriminatorMap["DeployedServicePackageNewHealthReport"] = "DeployedServicePackageNewHealthReportEvent"
      @@discriminatorMap["DeployedServicePackageHealthReportExpired"] = "DeployedServicePackageHealthReportExpiredEvent"
      @@discriminatorMap["StatefulReplicaNewHealthReport"] = "StatefulReplicaNewHealthReportEvent"
      @@discriminatorMap["StatefulReplicaHealthReportExpired"] = "StatefulReplicaHealthReportExpiredEvent"
      @@discriminatorMap["StatelessReplicaNewHealthReport"] = "StatelessReplicaNewHealthReportEvent"
      @@discriminatorMap["StatelessReplicaHealthReportExpired"] = "StatelessReplicaHealthReportExpiredEvent"
      @@discriminatorMap["ClusterNewHealthReport"] = "ClusterNewHealthReportEvent"
      @@discriminatorMap["ClusterHealthReportExpired"] = "ClusterHealthReportExpiredEvent"
      @@discriminatorMap["ClusterUpgradeCompleted"] = "ClusterUpgradeCompletedEvent"
      @@discriminatorMap["ClusterUpgradeDomainCompleted"] = "ClusterUpgradeDomainCompletedEvent"
      @@discriminatorMap["ClusterUpgradeRollbackCompleted"] = "ClusterUpgradeRollbackCompletedEvent"
      @@discriminatorMap["ClusterUpgradeRollbackStarted"] = "ClusterUpgradeRollbackStartedEvent"
      @@discriminatorMap["ClusterUpgradeStarted"] = "ClusterUpgradeStartedEvent"
      @@discriminatorMap["ChaosStopped"] = "ChaosStoppedEvent"
      @@discriminatorMap["ChaosStarted"] = "ChaosStartedEvent"
      @@discriminatorMap["ChaosCodePackageRestartScheduled"] = "ChaosCodePackageRestartScheduledEvent"
      @@discriminatorMap["ChaosReplicaRemovalScheduled"] = "ChaosReplicaRemovalScheduledEvent"
      @@discriminatorMap["ChaosPartitionSecondaryMoveScheduled"] = "ChaosPartitionSecondaryMoveScheduledEvent"
      @@discriminatorMap["ChaosPartitionPrimaryMoveScheduled"] = "ChaosPartitionPrimaryMoveScheduledEvent"
      @@discriminatorMap["ChaosReplicaRestartScheduled"] = "ChaosReplicaRestartScheduledEvent"
      @@discriminatorMap["ChaosNodeRestartScheduled"] = "ChaosNodeRestartScheduledEvent"

      def initialize
        @Kind = "FabricEvent"
      end

      attr_accessor :Kind

      # @return The identifier for the FabricEvent instance.
      attr_accessor :event_instance_id

      # @return [String] The category of event.
      attr_accessor :category

      # @return [DateTime] The time event was logged.
      attr_accessor :time_stamp

      # @return [Boolean] Shows there is existing related events available.
      attr_accessor :has_correlated_events


      #
      # Mapper for FabricEvent class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'FabricEvent',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'Kind',
            uber_parent: 'FabricEvent',
            class_name: 'FabricEvent',
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
              }
            }
          }
        }
      end
    end
  end
end
