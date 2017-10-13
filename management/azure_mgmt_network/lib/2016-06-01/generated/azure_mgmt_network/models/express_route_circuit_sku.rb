# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2016_06_01
  module Models
    #
    # Contains sku in an ExpressRouteCircuit
    #
    class ExpressRouteCircuitSku

      include MsRestAzure

      # @return [String] Gets or sets name of the sku.
      attr_accessor :name

      # @return [ExpressRouteCircuitSkuTier] Gets or sets tier of the sku.
      # Possible values include: 'Standard', 'Premium'
      attr_accessor :tier

      # @return [ExpressRouteCircuitSkuFamily] Gets or sets family of the sku.
      # Possible values include: 'UnlimitedData', 'MeteredData'
      attr_accessor :family


      #
      # Mapper for ExpressRouteCircuitSku class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ExpressRouteCircuitSku',
          type: {
            name: 'Composite',
            class_name: 'ExpressRouteCircuitSku',
            model_properties: {
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              tier: {
                required: false,
                serialized_name: 'tier',
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
              }
            }
          }
        }
      end
    end
  end
end
