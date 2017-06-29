# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.1.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Commerce
  module Models
    #
    # Detailed information about the meter.
    #
    class MeterInfo

      include MsRestAzure

      include MsRest::JSONable
      # @return The unique identifier of the resource.
      attr_accessor :meter_id

      # @return [String] The name of the meter, within the given meter category
      attr_accessor :meter_name

      # @return [String] The category of the meter, e.g., 'Cloud services',
      # 'Networking', etc..
      attr_accessor :meter_category

      # @return [String] The subcategory of the meter, e.g., 'A6 Cloud
      # services', 'ExpressRoute (IXP)', etc..
      attr_accessor :meter_sub_category

      # @return [String] The unit in which the meter consumption is charged,
      # e.g., 'Hours', 'GB', etc.
      attr_accessor :unit

      # @return [Array<String>] Provides additional meter data. 'Third Party'
      # indicates a meter with no discount. Blanks indicate First Party.
      attr_accessor :meter_tags

      # @return [String] The region in which the Azure service is available.
      attr_accessor :meter_region

      # @return [Hash{String => Float}] The list of key/value pairs for the
      # meter rates, in the format 'key':'value' where key = the meter
      # quantity, and value = the corresponding price
      attr_accessor :meter_rates

      # @return [DateTime] Indicates the date from which the meter rate is
      # effective.
      attr_accessor :effective_date

      # @return [Float] The resource quantity that is included in the offer at
      # no cost. Consumption beyond this quantity will be charged.
      attr_accessor :included_quantity


      #
      # Mapper for MeterInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'MeterInfo',
          type: {
            name: 'Composite',
            class_name: 'MeterInfo',
            model_properties: {
              meter_id: {
                required: false,
                serialized_name: 'MeterId',
                type: {
                  name: 'String'
                }
              },
              meter_name: {
                required: false,
                serialized_name: 'MeterName',
                type: {
                  name: 'String'
                }
              },
              meter_category: {
                required: false,
                serialized_name: 'MeterCategory',
                type: {
                  name: 'String'
                }
              },
              meter_sub_category: {
                required: false,
                serialized_name: 'MeterSubCategory',
                type: {
                  name: 'String'
                }
              },
              unit: {
                required: false,
                serialized_name: 'Unit',
                type: {
                  name: 'String'
                }
              },
              meter_tags: {
                required: false,
                serialized_name: 'MeterTags',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              meter_region: {
                required: false,
                serialized_name: 'MeterRegion',
                type: {
                  name: 'String'
                }
              },
              meter_rates: {
                required: false,
                serialized_name: 'MeterRates',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'FloatElementType',
                      type: {
                        name: 'Double'
                      }
                  }
                }
              },
              effective_date: {
                required: false,
                serialized_name: 'EffectiveDate',
                type: {
                  name: 'DateTime'
                }
              },
              included_quantity: {
                required: false,
                serialized_name: 'IncludedQuantity',
                type: {
                  name: 'Double'
                }
              }
            }
          }
        }
      end
    end
  end
end
