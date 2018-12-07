# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_3_0_9
  module Models
    #
    # Cluster Upgrade Domain Complete event.
    #
    class ClusterUpgradeDomainCompleteEvent < ClusterEvent

      include MsRestAzure


      def initialize
        @Kind = "ClusterUpgradeDomainComplete"
      end

      attr_accessor :Kind

      # @return [String] Target Cluster version.
      attr_accessor :target_cluster_version

      # @return [String] State of upgrade.
      attr_accessor :upgrade_state

      # @return [String] Upgrade domains.
      attr_accessor :upgrade_domains

      # @return [Float] Duration of domain upgrade in milli-seconds.
      attr_accessor :upgrade_domain_elapsed_time_in_ms


      #
      # Mapper for ClusterUpgradeDomainCompleteEvent class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ClusterUpgradeDomainComplete',
          type: {
            name: 'Composite',
            class_name: 'ClusterUpgradeDomainCompleteEvent',
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
              target_cluster_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'TargetClusterVersion',
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
              upgrade_domains: {
                client_side_validation: true,
                required: false,
                serialized_name: 'UpgradeDomains',
                type: {
                  name: 'String'
                }
              },
              upgrade_domain_elapsed_time_in_ms: {
                client_side_validation: true,
                required: false,
                serialized_name: 'UpgradeDomainElapsedTimeInMs',
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
