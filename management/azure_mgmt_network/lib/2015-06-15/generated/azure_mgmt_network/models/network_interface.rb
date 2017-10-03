# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Network::Api_2015_06_15
  module Models
    #
    # A network interface in a resource group.
    #
    class NetworkInterface < MsRestAzure::Resource

      include MsRestAzure

      include MsRest::JSONable
      # @return [SubResource] The reference of a virtual machine.
      attr_accessor :virtual_machine

      # @return [NetworkSecurityGroup] The reference of the
      # NetworkSecurityGroup resource.
      attr_accessor :network_security_group

      # @return [Array<NetworkInterfaceIPConfiguration>] A list of
      # IPConfigurations of the network interface.
      attr_accessor :ip_configurations

      # @return [NetworkInterfaceDnsSettings] The DNS settings in network
      # interface.
      attr_accessor :dns_settings

      # @return [String] The MAC address of the network interface.
      attr_accessor :mac_address

      # @return [Boolean] Gets whether this is a primary network interface on a
      # virtual machine.
      attr_accessor :primary

      # @return [Boolean] Indicates whether IP forwarding is enabled on this
      # network interface.
      attr_accessor :enable_ipforwarding

      # @return [String] The resource GUID property of the network interface
      # resource.
      attr_accessor :resource_guid

      # @return [String] The provisioning state of the public IP resource.
      # Possible values are: 'Updating', 'Deleting', and 'Failed'.
      attr_accessor :provisioning_state

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated.
      attr_accessor :etag


      #
      # Mapper for NetworkInterface class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'NetworkInterface',
          type: {
            name: 'Composite',
            class_name: 'NetworkInterface',
            model_properties: {
              id: {
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location: {
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
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
              virtual_machine: {
                required: false,
                serialized_name: 'properties.virtualMachine',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              network_security_group: {
                required: false,
                serialized_name: 'properties.networkSecurityGroup',
                type: {
                  name: 'Composite',
                  class_name: 'NetworkSecurityGroup'
                }
              },
              ip_configurations: {
                required: false,
                serialized_name: 'properties.ipConfigurations',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'NetworkInterfaceIPConfigurationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'NetworkInterfaceIPConfiguration'
                      }
                  }
                }
              },
              dns_settings: {
                required: false,
                serialized_name: 'properties.dnsSettings',
                type: {
                  name: 'Composite',
                  class_name: 'NetworkInterfaceDnsSettings'
                }
              },
              mac_address: {
                required: false,
                serialized_name: 'properties.macAddress',
                type: {
                  name: 'String'
                }
              },
              primary: {
                required: false,
                serialized_name: 'properties.primary',
                type: {
                  name: 'Boolean'
                }
              },
              enable_ipforwarding: {
                required: false,
                serialized_name: 'properties.enableIPForwarding',
                type: {
                  name: 'Boolean'
                }
              },
              resource_guid: {
                required: false,
                serialized_name: 'properties.resourceGuid',
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
