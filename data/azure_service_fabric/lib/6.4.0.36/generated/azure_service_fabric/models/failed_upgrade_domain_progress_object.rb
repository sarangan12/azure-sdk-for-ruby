# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_4_0_36
  module Models
    #
    # The detailed upgrade progress for nodes in the current upgrade domain at
    # the point of failure.
    #
    class FailedUpgradeDomainProgressObject

      include MsRestAzure

      # @return [String] The name of the upgrade domain
      attr_accessor :domain_name

      # @return [Array<NodeUpgradeProgressInfo>] List of upgrading nodes and
      # their statuses
      attr_accessor :node_upgrade_progress_list


      #
      # Mapper for FailedUpgradeDomainProgressObject class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'FailedUpgradeDomainProgressObject',
          type: {
            name: 'Composite',
            class_name: 'FailedUpgradeDomainProgressObject',
            model_properties: {
              domain_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'DomainName',
                type: {
                  name: 'String'
                }
              },
              node_upgrade_progress_list: {
                client_side_validation: true,
                required: false,
                serialized_name: 'NodeUpgradeProgressList',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'NodeUpgradeProgressInfoElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'NodeUpgradeProgressInfo'
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
