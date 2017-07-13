# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::MobileEngagement
  module Models
    #
    # Specify which users will be targeted by this campaign. By default, all
    # users will be targeted. If you set `pushMode` property to `manual`, the
    # only thing you can specify in the audience is the push quota filter. An
    # audience is a boolean expression made of criteria (variables) operators
    # (`not`, `and` or `or`) and parenthesis. Additionally, a set of filters
    # can be added to an audience. 65535 bytes max as per JSON encoding.
    #
    #
    class CampaignAudience

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Boolean expression made of criteria (variables)
      # operators (`not`, `and` or `or`) and parenthesis. Criterion names in
      # the audience expression must start with a capital letter and can only
      # contain alphanumeric (A-Z,a-z,0-9) and underscore (_) characters.
      #
      attr_accessor :expression

      # @return [Hash{String => Criterion}] Criteria by name.
      attr_accessor :criteria

      # @return [Array<Filter>] Global filters applied to all devices.
      attr_accessor :filters


      #
      # Mapper for CampaignAudience class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Campaign_audience',
          type: {
            name: 'Composite',
            class_name: 'CampaignAudience',
            model_properties: {
              expression: {
                required: false,
                serialized_name: 'expression',
                type: {
                  name: 'String'
                }
              },
              criteria: {
                required: false,
                serialized_name: 'criteria',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'CriterionElementType',
                      type: {
                        name: 'Composite',
                        polymorphic_discriminator: 'type',
                        uber_parent: 'Criterion',
                        class_name: 'Criterion'
                      }
                  }
                }
              },
              filters: {
                required: false,
                serialized_name: 'filters',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'FilterElementType',
                      type: {
                        name: 'Composite',
                        polymorphic_discriminator: 'type',
                        uber_parent: 'Filter',
                        class_name: 'Filter'
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
