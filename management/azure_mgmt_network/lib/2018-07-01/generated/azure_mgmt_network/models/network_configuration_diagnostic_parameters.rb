# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2018_07_01
  module Models
    #
    # Parameters to get network configuration diagnostic.
    #
    class NetworkConfigurationDiagnosticParameters

      include MsRestAzure

      # @return [String] The ID of the target resource to perform network
      # configuration diagnostic. Valid options are VM, NetworkInterface,
      # VMSS/NetworkInterface and Application Gateway.
      attr_accessor :target_resource_id

      # @return [Array<TrafficQuery>] List of traffic queries.
      attr_accessor :queries


      #
      # Mapper for NetworkConfigurationDiagnosticParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'NetworkConfigurationDiagnosticParameters',
          type: {
            name: 'Composite',
            class_name: 'NetworkConfigurationDiagnosticParameters',
            model_properties: {
              target_resource_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'targetResourceId',
                type: {
                  name: 'String'
                }
              },
              queries: {
                client_side_validation: true,
                required: true,
                serialized_name: 'queries',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'TrafficQueryElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'TrafficQuery'
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
