# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.1.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::ServiceBus
  module Models
    #
    # Parameters supplied to the Create Or Update Namespace operation.
    #
    class NamespaceCreateOrUpdateParameters

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Namespace location.
      attr_accessor :location

      # @return [Sku]
      attr_accessor :sku

      # @return [Hash{String => String}] Namespace tags.
      attr_accessor :tags

      # @return [String] Provisioning state of the namespace.
      attr_accessor :provisioning_state

      # @return [NamespaceState] State of the namespace. Possible values
      # include: 'Unknown', 'Creating', 'Created', 'Activating', 'Enabling',
      # 'Active', 'Disabling', 'Disabled', 'SoftDeleting', 'SoftDeleted',
      # 'Removing', 'Removed', 'Failed'
      attr_accessor :status

      # @return [DateTime] The time the namespace was created.
      attr_accessor :created_at

      # @return [DateTime] The time the namespace was updated.
      attr_accessor :updated_at

      # @return [String] Endpoint you can use to perform Service Bus
      # operations.
      attr_accessor :service_bus_endpoint

      # @return [Boolean] Indicates whether to create an ACS namespace.
      attr_accessor :create_acsnamespace

      # @return [Boolean] Specifies whether this instance is enabled.
      attr_accessor :enabled


      #
      # Mapper for NamespaceCreateOrUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'NamespaceCreateOrUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'NamespaceCreateOrUpdateParameters',
            model_properties: {
              location: {
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              sku: {
                required: false,
                serialized_name: 'sku',
                type: {
                  name: 'Composite',
                  class_name: 'Sku'
                }
              },
              tags: {
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              provisioning_state: {
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              status: {
                required: false,
                serialized_name: 'properties.status',
                type: {
                  name: 'Enum',
                  module: 'NamespaceState'
                }
              },
              created_at: {
                required: false,
                read_only: true,
                serialized_name: 'properties.createdAt',
                type: {
                  name: 'DateTime'
                }
              },
              updated_at: {
                required: false,
                read_only: true,
                serialized_name: 'properties.updatedAt',
                type: {
                  name: 'DateTime'
                }
              },
              service_bus_endpoint: {
                required: false,
                read_only: true,
                serialized_name: 'properties.serviceBusEndpoint',
                type: {
                  name: 'String'
                }
              },
              create_acsnamespace: {
                required: false,
                serialized_name: 'properties.createACSNamespace',
                type: {
                  name: 'Boolean'
                }
              },
              enabled: {
                required: false,
                serialized_name: 'properties.enabled',
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
