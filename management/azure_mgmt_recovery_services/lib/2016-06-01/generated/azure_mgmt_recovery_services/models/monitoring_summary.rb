# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServices::Mgmt::V2016_06_01
  module Models
    #
    # Summary of the replication monitoring data for this vault.
    #
    class MonitoringSummary

      include MsRestAzure

      # @return [Integer] Count of unhealthy VMs.
      attr_accessor :un_healthy_vm_count

      # @return [Integer] Count of unhealthy replication providers.
      attr_accessor :un_healthy_provider_count

      # @return [Integer] Count of all critical warnings.
      attr_accessor :events_count

      # @return [Integer] Count of all deprecated recovery service providers.
      attr_accessor :deprecated_provider_count

      # @return [Integer] Count of all the supported recovery service
      # providers.
      attr_accessor :supported_provider_count

      # @return [Integer] Count of all the unsupported recovery service
      # providers.
      attr_accessor :unsupported_provider_count


      #
      # Mapper for MonitoringSummary class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MonitoringSummary',
          type: {
            name: 'Composite',
            class_name: 'MonitoringSummary',
            model_properties: {
              un_healthy_vm_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'unHealthyVmCount',
                type: {
                  name: 'Number'
                }
              },
              un_healthy_provider_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'unHealthyProviderCount',
                type: {
                  name: 'Number'
                }
              },
              events_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'eventsCount',
                type: {
                  name: 'Number'
                }
              },
              deprecated_provider_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'deprecatedProviderCount',
                type: {
                  name: 'Number'
                }
              },
              supported_provider_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'supportedProviderCount',
                type: {
                  name: 'Number'
                }
              },
              unsupported_provider_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'unsupportedProviderCount',
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
