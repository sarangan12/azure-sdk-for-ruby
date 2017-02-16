# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::SQL
  module Models
    #
    # Represents the response to a List Firewall Rules request.
    #
    class ServerFirewallRuleListResult

      include MsRestAzure

      # @return [Array<ServerFirewallRule>] The list of Azure SQL server
      # firewall rules for the server.
      attr_accessor :value


      #
      # Mapper for ServerFirewallRuleListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ServerFirewallRuleListResult',
          type: {
            name: 'Composite',
            class_name: 'ServerFirewallRuleListResult',
            model_properties: {
              value: {
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ServerFirewallRuleElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ServerFirewallRule'
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