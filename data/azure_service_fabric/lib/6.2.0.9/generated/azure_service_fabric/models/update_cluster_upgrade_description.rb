# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_2_0_9
  module Models
    #
    # Parameters for updating a cluster upgrade.
    #
    class UpdateClusterUpgradeDescription

      include MsRestAzure

      # @return [UpgradeType] The type of upgrade out of the following possible
      # values. Possible values include: 'Invalid', 'Rolling',
      # 'Rolling_ForceRestart'. Default value: 'Rolling' .
      attr_accessor :upgrade_kind

      # @return [RollingUpgradeUpdateDescription] Describes the parameters for
      # updating a rolling upgrade of application or cluster.
      attr_accessor :update_description

      # @return [ClusterHealthPolicy] Defines a health policy used to evaluate
      # the health of the cluster or of a cluster node.
      attr_accessor :cluster_health_policy

      # @return [Boolean] When true, enables delta health evaluation rather
      # than absolute health evaluation after completion of each upgrade
      # domain.
      attr_accessor :enable_delta_health_evaluation

      # @return [ClusterUpgradeHealthPolicyObject] Defines a health policy used
      # to evaluate the health of the cluster during a cluster upgrade.
      attr_accessor :cluster_upgrade_health_policy

      # @return [ApplicationHealthPolicies] Defines the application health
      # policy map used to evaluate the health of an application or one of its
      # children entities.
      attr_accessor :application_health_policy_map


      #
      # Mapper for UpdateClusterUpgradeDescription class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'UpdateClusterUpgradeDescription',
          type: {
            name: 'Composite',
            class_name: 'UpdateClusterUpgradeDescription',
            model_properties: {
              upgrade_kind: {
                client_side_validation: true,
                required: false,
                serialized_name: 'UpgradeKind',
                default_value: 'Rolling',
                type: {
                  name: 'String'
                }
              },
              update_description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'UpdateDescription',
                type: {
                  name: 'Composite',
                  class_name: 'RollingUpgradeUpdateDescription'
                }
              },
              cluster_health_policy: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ClusterHealthPolicy',
                type: {
                  name: 'Composite',
                  class_name: 'ClusterHealthPolicy'
                }
              },
              enable_delta_health_evaluation: {
                client_side_validation: true,
                required: false,
                serialized_name: 'EnableDeltaHealthEvaluation',
                type: {
                  name: 'Boolean'
                }
              },
              cluster_upgrade_health_policy: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ClusterUpgradeHealthPolicy',
                type: {
                  name: 'Composite',
                  class_name: 'ClusterUpgradeHealthPolicyObject'
                }
              },
              application_health_policy_map: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ApplicationHealthPolicyMap',
                type: {
                  name: 'Composite',
                  class_name: 'ApplicationHealthPolicies'
                }
              }
            }
          }
        }
      end
    end
  end
end
