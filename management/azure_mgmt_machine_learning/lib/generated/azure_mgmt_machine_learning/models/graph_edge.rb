# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::MachineLearning
  module Models
    #
    # Defines an edge within the web service's graph.
    #
    class GraphEdge

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The source graph node's identifier.
      attr_accessor :source_node_id

      # @return [String] The identifier of the source node's port that the edge
      # connects from.
      attr_accessor :source_port_id

      # @return [String] The destination graph node's identifier.
      attr_accessor :target_node_id

      # @return [String] The identifier of the destination node's port that the
      # edge connects into.
      attr_accessor :target_port_id


      #
      # Mapper for GraphEdge class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'GraphEdge',
          type: {
            name: 'Composite',
            class_name: 'GraphEdge',
            model_properties: {
              source_node_id: {
                required: false,
                serialized_name: 'sourceNodeId',
                type: {
                  name: 'String'
                }
              },
              source_port_id: {
                required: false,
                serialized_name: 'sourcePortId',
                type: {
                  name: 'String'
                }
              },
              target_node_id: {
                required: false,
                serialized_name: 'targetNodeId',
                type: {
                  name: 'String'
                }
              },
              target_port_id: {
                required: false,
                serialized_name: 'targetPortId',
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
