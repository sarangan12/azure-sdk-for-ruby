# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MachineLearning::Mgmt::V2017_01_01
  module Models
    #
    # Defines the graph of modules making up the machine learning solution.
    #
    class GraphPackage

      include MsRestAzure

      # @return [Hash{String => GraphNode}] The set of nodes making up the
      # graph, provided as a nodeId to GraphNode map
      attr_accessor :nodes

      # @return [Array<GraphEdge>] The list of edges making up the graph.
      attr_accessor :edges

      # @return [Hash{String => GraphParameter}] The collection of global
      # parameters for the graph, given as a global parameter name to
      # GraphParameter map. Each parameter here has a 1:1 match with the global
      # parameters values map declared at the WebServiceProperties level.
      attr_accessor :graph_parameters


      #
      # Mapper for GraphPackage class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'GraphPackage',
          type: {
            name: 'Composite',
            class_name: 'GraphPackage',
            model_properties: {
              nodes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'nodes',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'GraphNodeElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'GraphNode'
                      }
                  }
                }
              },
              edges: {
                client_side_validation: true,
                required: false,
                serialized_name: 'edges',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'GraphEdgeElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'GraphEdge'
                      }
                  }
                }
              },
              graph_parameters: {
                client_side_validation: true,
                required: false,
                serialized_name: 'graphParameters',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'GraphParameterElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'GraphParameter'
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
