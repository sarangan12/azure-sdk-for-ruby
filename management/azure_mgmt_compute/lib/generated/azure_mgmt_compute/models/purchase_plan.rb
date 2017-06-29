# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.1.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute
  module Models
    #
    # Used for establishing the purchase context of any 3rd Party artifact
    # through MarketPlace.
    #
    class PurchasePlan

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The publisher ID.
      attr_accessor :publisher

      # @return [String] The plan ID.
      attr_accessor :name

      # @return [String] The product ID.
      attr_accessor :product


      #
      # Mapper for PurchasePlan class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'PurchasePlan',
          type: {
            name: 'Composite',
            class_name: 'PurchasePlan',
            model_properties: {
              publisher: {
                required: true,
                serialized_name: 'publisher',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              product: {
                required: true,
                serialized_name: 'product',
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
