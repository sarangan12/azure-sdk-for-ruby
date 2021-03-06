# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Network
  module Models
    #
    # Application gateway web application firewall configuration
    #
    class ApplicationGatewayWebApplicationFirewallConfiguration

      include MsRestAzure

      # @return [Boolean] Whether web application firewall is enabled
      attr_accessor :enabled

      # @return [ApplicationGatewayFirewallMode] Web application firewall
      # mode. Possible values include: 'Detection', 'Prevention'
      attr_accessor :firewall_mode


      #
      # Mapper for ApplicationGatewayWebApplicationFirewallConfiguration class
      # as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ApplicationGatewayWebApplicationFirewallConfiguration',
          type: {
            name: 'Composite',
            class_name: 'ApplicationGatewayWebApplicationFirewallConfiguration',
            model_properties: {
              enabled: {
                required: true,
                serialized_name: 'enabled',
                type: {
                  name: 'Boolean'
                }
              },
              firewall_mode: {
                required: false,
                serialized_name: 'firewallMode',
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
