# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2016_03_30
  module Models
    #
    # Describes a network profile.
    #
    class NetworkProfile

      include MsRestAzure

      # @return [Array<NetworkInterfaceReference>] Specifies the list of
      # resource IDs for the network interfaces associated with the virtual
      # machine.
      attr_accessor :network_interfaces


      #
      # Mapper for NetworkProfile class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'NetworkProfile',
          type: {
            name: 'Composite',
            class_name: 'NetworkProfile',
            model_properties: {
              network_interfaces: {
                client_side_validation: true,
                required: false,
                serialized_name: 'networkInterfaces',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'NetworkInterfaceReferenceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'NetworkInterfaceReference'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
