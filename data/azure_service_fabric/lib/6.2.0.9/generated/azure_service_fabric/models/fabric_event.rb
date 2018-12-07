# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_2_0_9
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
      @@discriminatorMap["ApplicationHealthReportCreated"] = "ApplicationHealthReportCreatedEvent"
      @@discriminatorMap["ApplicationHealthReportExpired"] = "ApplicationHealthReportExpiredEvent"
      @@discriminatorMap["ApplicationUpgradeComplete"] = "ApplicationUpgradeCompleteEvent"
      @@discriminatorMap["ApplicationUpgradeDomainComplete"] = "ApplicationUpgradeDomainCompleteEvent"
      @@discriminatorMap["ApplicationUpgradeRollbackComplete"] = "ApplicationUpgradeRollbackCompleteEvent"
      @@discriminatorMap["ApplicationUpgradeRollbackStart"] = "ApplicationUpgradeRollbackStartEvent"
      @@discriminatorMap["ApplicationUpgradeStart"] = "ApplicationUpgradeStartEvent"
      @@discriminatorMap["DeployedApplicationHealthReportCreated"] = "DeployedApplicationHealthReportCreatedEvent"
      @@discriminatorMap["DeployedApplicationHealthReportExpired"] = "DeployedApplicationHealthReportExpiredEvent"
      @@discriminatorMap["ProcessDeactivated"] = "ProcessDeactivatedEvent"
      @@discriminatorMap["ContainerDeactivated"] = "ContainerDeactivatedEvent"
      @@discriminatorMap["NodeAborted"] = "NodeAbortedEvent"
      @@discriminatorMap["NodeAborting"] = "NodeAbortingEvent"
      @@discriminatorMap["NodeAdded"] = "NodeAddedEvent"
      @@discriminatorMap["NodeClose"] = "NodeCloseEvent"
      @@discriminatorMap["NodeClosing"] = "NodeClosingEvent"
      @@discriminatorMap["NodeDeactivateComplete"] = "NodeDeactivateCompleteEvent"
      @@discriminatorMap["NodeDeactivateStart"] = "NodeDeactivateStartEvent"
      @@discriminatorMap["NodeDown"] = "NodeDownEvent"
      @@discriminatorMap["NodeHealthReportCreated"] = "NodeHealthReportCreatedEvent"
      @@discriminatorMap["NodeHealthReportExpired"] = "NodeHealthReportExpiredEvent"
      @@discriminatorMap["NodeOpenedSuccess"] = "NodeOpenedSuccessEvent"
      @@discriminatorMap["NodeOpenFailed"] = "NodeOpenFailedEvent"
      @@discriminatorMap["NodeOpening"] = "NodeOpeningEvent"
      @@discriminatorMap["NodeRemoved"] = "NodeRemovedEvent"
      @@discriminatorMap["NodeUp"] = "NodeUpEvent"
      @@discriminatorMap["PartitionHealthReportCreated"] = "PartitionHealthReportCreatedEvent"
      @@discriminatorMap["PartitionHealthReportExpired"] = "PartitionHealthReportExpiredEvent"
      @@discriminatorMap["PartitionReconfigurationCompleted"] = "PartitionReconfigurationCompletedEvent"
      @@discriminatorMap["PartitionPrimaryMoveAnalysis"] = "PartitionPrimaryMoveAnalysisEvent"
      @@discriminatorMap["ServiceCreated"] = "ServiceCreatedEvent"
      @@discriminatorMap["ServiceDeleted"] = "ServiceDeletedEvent"
      @@discriminatorMap["ServiceHealthReportCreated"] = "ServiceHealthReportCreatedEvent"
      @@discriminatorMap["ServiceHealthReportExpired"] = "ServiceHealthReportExpiredEvent"
      @@discriminatorMap["DeployedServiceHealthReportCreated"] = "DeployedServiceHealthReportCreatedEvent"
      @@discriminatorMap["DeployedServiceHealthReportExpired"] = "DeployedServiceHealthReportExpiredEvent"
      @@discriminatorMap["StatefulReplicaHealthReportCreated"] = "StatefulReplicaHealthReportCreatedEvent"
      @@discriminatorMap["StatefulReplicaHealthReportExpired"] = "StatefulReplicaHealthReportExpiredEvent"
      @@discriminatorMap["StatelessReplicaHealthReportCreated"] = "StatelessReplicaHealthReportCreatedEvent"
      @@discriminatorMap["StatelessReplicaHealthReportExpired"] = "StatelessReplicaHealthReportExpiredEvent"
      @@discriminatorMap["ClusterHealthReportCreated"] = "ClusterHealthReportCreatedEvent"
      @@discriminatorMap["ClusterHealthReportExpired"] = "ClusterHealthReportExpiredEvent"
      @@discriminatorMap["ClusterUpgradeComplete"] = "ClusterUpgradeCompleteEvent"
      @@discriminatorMap["ClusterUpgradeDomainComplete"] = "ClusterUpgradeDomainCompleteEvent"
      @@discriminatorMap["ClusterUpgradeRollbackComplete"] = "ClusterUpgradeRollbackCompleteEvent"
      @@discriminatorMap["ClusterUpgradeRollbackStart"] = "ClusterUpgradeRollbackStartEvent"
      @@discriminatorMap["ClusterUpgradeStart"] = "ClusterUpgradeStartEvent"
      @@discriminatorMap["ChaosStopped"] = "ChaosStoppedEvent"
      @@discriminatorMap["ChaosStarted"] = "ChaosStartedEvent"
      @@discriminatorMap["ChaosRestartNodeFaultCompleted"] = "ChaosRestartNodeFaultCompletedEvent"
      @@discriminatorMap["ChaosRestartCodePackageFaultScheduled"] = "ChaosRestartCodePackageFaultScheduledEvent"
      @@discriminatorMap["ChaosRestartCodePackageFaultCompleted"] = "ChaosRestartCodePackageFaultCompletedEvent"
      @@discriminatorMap["ChaosRemoveReplicaFaultScheduled"] = "ChaosRemoveReplicaFaultScheduledEvent"
      @@discriminatorMap["ChaosRemoveReplicaFaultCompleted"] = "ChaosRemoveReplicaFaultCompletedEvent"
      @@discriminatorMap["ChaosMoveSecondaryFaultScheduled"] = "ChaosMoveSecondaryFaultScheduledEvent"
      @@discriminatorMap["ChaosMovePrimaryFaultScheduled"] = "ChaosMovePrimaryFaultScheduledEvent"
      @@discriminatorMap["ChaosRestartReplicaFaultScheduled"] = "ChaosRestartReplicaFaultScheduledEvent"
      @@discriminatorMap["ChaosRestartNodeFaultScheduled"] = "ChaosRestartNodeFaultScheduledEvent"

      def initialize
        @Kind = "FabricEvent"
      end

      attr_accessor :Kind

      # @return The identifier for the FabricEvent instance.
      attr_accessor :event_instance_id

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
