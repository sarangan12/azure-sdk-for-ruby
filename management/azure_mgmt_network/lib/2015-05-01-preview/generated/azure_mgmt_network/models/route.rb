# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2015_05_01_preview
  module Models
    #
    # Route resource
    #
    class Route < SubResource

      include MsRestAzure

      # @return [String] Gets or sets the destination CIDR to which the route
      # applies.
      attr_accessor :address_prefix

      # @return [RouteNextHopType] Gets or sets the type of Azure hop the
      # packet should be sent to. Possible values include:
      # 'VirtualNetworkGateway', 'VnetLocal', 'Internet', 'VirtualAppliance',
      # 'None'
      attr_accessor :next_hop_type

      # @return [String] Gets or sets the IP address packets should be
      # forwarded to. Next hop values are only allowed in routes where the next
      # hop type is VirtualAppliance.
      attr_accessor :next_hop_ip_address

      # @return [String] Gets or sets Provisioning state of the resource
      # Updating/Deleting/Failed
      attr_accessor :provisioning_state

      # @return [String] Gets name of the resource that is unique within a
      # resource group. This name can be used to access the resource
      attr_accessor :name

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated
      attr_accessor :etag


      #
      # Mapper for Route class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Route',
          type: {
            name: 'Composite',
            class_name: 'Route',
            model_properties: {
              id: {
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              address_prefix: {
                required: false,
                serialized_name: 'properties.addressPrefix',
                type: {
                  name: 'String'
                }
              },
              next_hop_type: {
                required: true,
                serialized_name: 'properties.nextHopType',
                type: {
                  name: 'String'
                }
              },
              next_hop_ip_address: {
                required: false,
                serialized_name: 'properties.nextHopIpAddress',
                type: {
                  name: 'String'
                }
              },
              provisioning_state: {
                required: false,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              etag: {
                required: false,
                serialized_name: 'etag',
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
