# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2017_03_01
  module Models
    #
    # Effective network security group.
    #
    class EffectiveNetworkSecurityGroup

      include MsRestAzure

      # @return [SubResource] The ID of network security group that is applied.
      attr_accessor :network_security_group

      # @return [EffectiveNetworkSecurityGroupAssociation]
      attr_accessor :association

      # @return [Array<EffectiveNetworkSecurityRule>] A collection of effective
      # security rules.
      attr_accessor :effective_security_rules


      #
      # Mapper for EffectiveNetworkSecurityGroup class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'EffectiveNetworkSecurityGroup',
          type: {
            name: 'Composite',
            class_name: 'EffectiveNetworkSecurityGroup',
            model_properties: {
              network_security_group: {
                client_side_validation: true,
                required: false,
                serialized_name: 'networkSecurityGroup',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              association: {
                client_side_validation: true,
                required: false,
                serialized_name: 'association',
                type: {
                  name: 'Composite',
                  class_name: 'EffectiveNetworkSecurityGroupAssociation'
                }
              },
              effective_security_rules: {
                client_side_validation: true,
                required: false,
                serialized_name: 'effectiveSecurityRules',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'EffectiveNetworkSecurityRuleElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'EffectiveNetworkSecurityRule'
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
