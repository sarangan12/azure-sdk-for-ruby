# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SQL::Mgmt::V2015_05_01_preview
  module Models
    #
    # A virtual network rule.
    #
    class VirtualNetworkRule < ProxyResource

      include MsRestAzure

      # @return [String] The ARM resource id of the virtual network subnet.
      attr_accessor :virtual_network_subnet_id

      # @return [Boolean] Create firewall rule before the virtual network has
      # vnet service endpoint enabled.
      attr_accessor :ignore_missing_vnet_service_endpoint

      # @return [VirtualNetworkRuleState] Virtual Network Rule State. Possible
      # values include: 'Initializing', 'InProgress', 'Ready', 'Deleting',
      # 'Unknown'
      attr_accessor :state


      #
      # Mapper for VirtualNetworkRule class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VirtualNetworkRule',
          type: {
            name: 'Composite',
            class_name: 'VirtualNetworkRule',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              virtual_network_subnet_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.virtualNetworkSubnetId',
                type: {
                  name: 'String'
                }
              },
              ignore_missing_vnet_service_endpoint: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.ignoreMissingVnetServiceEndpoint',
                type: {
                  name: 'Boolean'
                }
              },
              state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.state',
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
