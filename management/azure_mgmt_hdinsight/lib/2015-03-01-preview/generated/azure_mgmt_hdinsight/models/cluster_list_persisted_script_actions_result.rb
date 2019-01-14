# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Hdinsight::Mgmt::V2015_03_01_preview
  module Models
    #
    # The ListPersistedScriptActions operation response.
    #
    class ClusterListPersistedScriptActionsResult

      include MsRestAzure

      # @return [Array<RuntimeScriptAction>] The list of Persisted Script
      # Actions.
      attr_accessor :value

      # @return [String] The link (url) to the next page of results.
      attr_accessor :next_link


      #
      # Mapper for ClusterListPersistedScriptActionsResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ClusterListPersistedScriptActionsResult',
          type: {
            name: 'Composite',
            class_name: 'ClusterListPersistedScriptActionsResult',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'RuntimeScriptActionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'RuntimeScriptAction'
                      }
                  }
                }
              },
              next_link: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'nextLink',
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
