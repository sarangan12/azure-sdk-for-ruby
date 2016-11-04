# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::DevTestLabs
  module Models
    #
    # A cost item.
    #
    class Cost

      include MsRestAzure

      # @return [String] The currency code of the cost.
      attr_accessor :currency_code

      # @return [Array<CostPerDayProperties>] The lab cost component of the
      # cost data.
      attr_accessor :costs

      # @return [Array<ResourceCostProperties>] The resource cost component of
      # the cost data.
      attr_accessor :resource_costs

      # @return [String] The identifier of the resource.
      attr_accessor :id

      # @return [String] The name of the resource.
      attr_accessor :name

      # @return [String] The type of the resource.
      attr_accessor :type

      # @return [String] The location of the resource.
      attr_accessor :location

      # @return [Hash{String => String}] The tags of the resource.
      attr_accessor :tags


      #
      # Mapper for Cost class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Cost',
          type: {
            name: 'Composite',
            class_name: 'Cost',
            model_properties: {
              currency_code: {
                required: false,
                serialized_name: 'properties.currencyCode',
                type: {
                  name: 'String'
                }
              },
              costs: {
                required: false,
                serialized_name: 'properties.costs',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'CostPerDayPropertiesElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'CostPerDayProperties'
                      }
                  }
                }
              },
              resource_costs: {
                required: false,
                serialized_name: 'properties.resourceCosts',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ResourceCostPropertiesElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ResourceCostProperties'
                      }
                  }
                }
              },
              id: {
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location: {
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
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
