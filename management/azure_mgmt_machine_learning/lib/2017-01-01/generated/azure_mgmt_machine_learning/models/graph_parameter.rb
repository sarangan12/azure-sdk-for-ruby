# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MachineLearning::Mgmt::V2017_01_01
  module Models
    #
    # Defines a global parameter in the graph.
    #
    class GraphParameter

      include MsRestAzure

      # @return [String] Description of this graph parameter.
      attr_accessor :description

      # @return [ParameterType] Graph parameter's type. Possible values
      # include: 'String', 'Int', 'Float', 'Enumerated', 'Script', 'Mode',
      # 'Credential', 'Boolean', 'Double', 'ColumnPicker', 'ParameterRange',
      # 'DataGatewayName'
      attr_accessor :type

      # @return [Array<GraphParameterLink>] Association links for this
      # parameter to nodes in the graph.
      attr_accessor :links


      #
      # Mapper for GraphParameter class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'GraphParameter',
          type: {
            name: 'Composite',
            class_name: 'GraphParameter',
            model_properties: {
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'description',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              links: {
                client_side_validation: true,
                required: true,
                serialized_name: 'links',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'GraphParameterLinkElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'GraphParameterLink'
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
