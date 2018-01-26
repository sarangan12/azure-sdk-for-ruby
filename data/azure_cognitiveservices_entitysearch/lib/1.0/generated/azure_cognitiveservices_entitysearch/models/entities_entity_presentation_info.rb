# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::EntitySearch::V1_0
  module Models
    #
    # Defines additional information about an entity such as type hints.
    #
    class EntitiesEntityPresentationInfo

      include MsRestAzure

      # @return [EntityScenario] The supported scenario. Possible values
      # include: 'DominantEntity', 'DisambiguationItem', 'ListItem'. Default
      # value: 'DominantEntity' .
      attr_accessor :entity_scenario

      # @return [Array<EntityType>] A list of hints that indicate the entity's
      # type. The list could contain a single hint such as Movie or a list of
      # hints such as Place, LocalBusiness, Restaurant. Each successive hint in
      # the array narrows the entity's type.
      attr_accessor :entity_type_hints

      # @return [String] A display version of the entity hint. For example, if
      # entityTypeHints is Artist, this field may be set to American Singer.
      attr_accessor :entity_type_display_hint


      #
      # Mapper for EntitiesEntityPresentationInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Entities/EntityPresentationInfo',
          type: {
            name: 'Composite',
            class_name: 'EntitiesEntityPresentationInfo',
            model_properties: {
              entity_scenario: {
                client_side_validation: true,
                required: true,
                serialized_name: 'entityScenario',
                default_value: 'DominantEntity',
                type: {
                  name: 'String'
                }
              },
              entity_type_hints: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'entityTypeHints',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'EntityTypeElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              entity_type_display_hint: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'entityTypeDisplayHint',
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
