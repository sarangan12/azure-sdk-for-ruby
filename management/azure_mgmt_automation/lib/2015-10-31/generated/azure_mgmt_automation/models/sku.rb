# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Automation::Api_2015_10_31
  module Models
    #
    # The account SKU.
    #
    class Sku

      include MsRestAzure

      include MsRest::JSONable
      # @return [SkuNameEnum] Gets or sets the SKU name of the account.
      # Possible values include: 'Free', 'Basic'
      attr_accessor :name

      # @return [String] Gets or sets the SKU family.
      attr_accessor :family

      # @return [Integer] Gets or sets the SKU capacity.
      attr_accessor :capacity


      #
      # Mapper for Sku class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Sku',
          type: {
            name: 'Composite',
            class_name: 'Sku',
            model_properties: {
              name: {
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              family: {
                required: false,
                serialized_name: 'family',
                type: {
                  name: 'String'
                }
              },
              capacity: {
                required: false,
                serialized_name: 'capacity',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
