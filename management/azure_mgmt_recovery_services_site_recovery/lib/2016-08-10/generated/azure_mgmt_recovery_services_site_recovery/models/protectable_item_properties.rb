# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10
  module Models
    #
    # Replication protected item custom data details.
    #
    class ProtectableItemProperties

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The name.
      attr_accessor :friendly_name

      # @return [String] The protection status.
      attr_accessor :protection_status

      # @return [String] The ARM resource of protected items.
      attr_accessor :replication_protected_item_id

      # @return [String] The recovery provider ARM Id.
      attr_accessor :recovery_services_provider_id

      # @return [Array<String>] The Current protection readiness errors.
      attr_accessor :protection_readiness_errors

      # @return [Array<String>] The list of replication providers supported for
      # the protectable item.
      attr_accessor :supported_replication_providers

      # @return [ConfigurationSettings] The Replication provider custom
      # settings.
      attr_accessor :custom_details


      #
      # Mapper for ProtectableItemProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ProtectableItemProperties',
          type: {
            name: 'Composite',
            class_name: 'ProtectableItemProperties',
            model_properties: {
              friendly_name: {
                required: false,
                serialized_name: 'friendlyName',
                type: {
                  name: 'String'
                }
              },
              protection_status: {
                required: false,
                serialized_name: 'protectionStatus',
                type: {
                  name: 'String'
                }
              },
              replication_protected_item_id: {
                required: false,
                serialized_name: 'replicationProtectedItemId',
                type: {
                  name: 'String'
                }
              },
              recovery_services_provider_id: {
                required: false,
                serialized_name: 'recoveryServicesProviderId',
                type: {
                  name: 'String'
                }
              },
              protection_readiness_errors: {
                required: false,
                serialized_name: 'protectionReadinessErrors',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              supported_replication_providers: {
                required: false,
                serialized_name: 'supportedReplicationProviders',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              custom_details: {
                required: false,
                serialized_name: 'customDetails',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'instanceType',
                  uber_parent: 'ConfigurationSettings',
                  class_name: 'ConfigurationSettings'
                }
              }
            }
          }
        }
      end
    end
  end
end
