# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServices
  module Models
    #
    # Replication usages of a vault.
    #
    class ReplicationUsage

      include MsRestAzure

      include MsRest::JSONable
      # @return [MonitoringSummary] Summary of the replication monitoring data
      # for this vault.
      attr_accessor :monitoring_summary

      # @return [JobsSummary] Summary of the replication jobs data for this
      # vault.
      attr_accessor :jobs_summary

      # @return [Integer] Number of replication protected items for this vault.
      attr_accessor :protected_item_count

      # @return [Integer] Number of replication recovery plans for this vault.
      attr_accessor :recovery_plan_count

      # @return [Integer] Number of servers registered to this vault.
      attr_accessor :registered_servers_count

      # @return [Integer] The authentication type of recovery service providers
      # in the vault.
      attr_accessor :recovery_services_provider_auth_type


      #
      # Mapper for ReplicationUsage class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ReplicationUsage',
          type: {
            name: 'Composite',
            class_name: 'ReplicationUsage',
            model_properties: {
              monitoring_summary: {
                required: false,
                serialized_name: 'monitoringSummary',
                type: {
                  name: 'Composite',
                  class_name: 'MonitoringSummary'
                }
              },
              jobs_summary: {
                required: false,
                serialized_name: 'jobsSummary',
                type: {
                  name: 'Composite',
                  class_name: 'JobsSummary'
                }
              },
              protected_item_count: {
                required: false,
                serialized_name: 'protectedItemCount',
                type: {
                  name: 'Number'
                }
              },
              recovery_plan_count: {
                required: false,
                serialized_name: 'recoveryPlanCount',
                type: {
                  name: 'Number'
                }
              },
              registered_servers_count: {
                required: false,
                serialized_name: 'registeredServersCount',
                type: {
                  name: 'Number'
                }
              },
              recovery_services_provider_auth_type: {
                required: false,
                serialized_name: 'recoveryServicesProviderAuthType',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
