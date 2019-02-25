# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::LuisAuthoring::V2_0
  module Models
    #
    # A Hierarchical Child Entity.
    #
    class HierarchicalChildEntity < ChildEntity

      include MsRestAzure

      # @return [Integer] The type ID of the Entity Model.
      attr_accessor :type_id

      # @return [Enum] Possible values include: 'Entity Extractor',
      # 'Hierarchical Entity Extractor', 'Hierarchical Child Entity Extractor',
      # 'Composite Entity Extractor', 'Closed List Entity Extractor', 'Prebuilt
      # Entity Extractor', 'Intent Classifier', 'Pattern.Any Entity Extractor',
      # 'Regex Entity Extractor'
      attr_accessor :readable_type


      #
      # Mapper for HierarchicalChildEntity class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'HierarchicalChildEntity',
          type: {
            name: 'Composite',
            class_name: 'HierarchicalChildEntity',
            model_properties: {
              id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeId',
                type: {
                  name: 'Number'
                }
              },
              readable_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'readableType',
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
