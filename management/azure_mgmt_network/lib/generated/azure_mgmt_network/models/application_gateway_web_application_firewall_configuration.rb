# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Network
  module Models
    #
    # Application gateway web application firewall configuration.
    #
    class ApplicationGatewayWebApplicationFirewallConfiguration

      include MsRestAzure

      include MsRest::JSONable
      # @return [Boolean] Whether the web application firewall is enabled or
      # not.
      attr_accessor :enabled

      # @return [ApplicationGatewayFirewallMode] Web application firewall mode.
      # Possible values include: 'Detection', 'Prevention'
      attr_accessor :firewall_mode

      # @return [String] The type of the web application firewall rule set.
      # Possible values are: 'OWASP'.
      attr_accessor :rule_set_type

      # @return [String] The version of the rule set type.
      attr_accessor :rule_set_version

      # @return [Array<ApplicationGatewayFirewallDisabledRuleGroup>] The
      # disabled rule groups.
      attr_accessor :disabled_rule_groups


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
                required: true,
                serialized_name: 'firewallMode',
                type: {
                  name: 'String'
                }
              },
              rule_set_type: {
                required: true,
                serialized_name: 'ruleSetType',
                type: {
                  name: 'String'
                }
              },
              rule_set_version: {
                required: true,
                serialized_name: 'ruleSetVersion',
                type: {
                  name: 'String'
                }
              },
              disabled_rule_groups: {
                required: false,
                serialized_name: 'disabledRuleGroups',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ApplicationGatewayFirewallDisabledRuleGroupElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ApplicationGatewayFirewallDisabledRuleGroup'
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
