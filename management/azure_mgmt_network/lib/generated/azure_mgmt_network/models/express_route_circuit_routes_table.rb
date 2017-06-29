# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.1.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Network
  module Models
    #
    # The routes table associated with the ExpressRouteCircuit
    #
    class ExpressRouteCircuitRoutesTable

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] network
      attr_accessor :network

      # @return [String] nextHop
      attr_accessor :next_hop

      # @return [String] locPrf
      attr_accessor :loc_prf

      # @return [Integer] weight.
      attr_accessor :weight

      # @return [String] path
      attr_accessor :path


      #
      # Mapper for ExpressRouteCircuitRoutesTable class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ExpressRouteCircuitRoutesTable',
          type: {
            name: 'Composite',
            class_name: 'ExpressRouteCircuitRoutesTable',
            model_properties: {
              network: {
                required: false,
                serialized_name: 'network',
                type: {
                  name: 'String'
                }
              },
              next_hop: {
                required: false,
                serialized_name: 'nextHop',
                type: {
                  name: 'String'
                }
              },
              loc_prf: {
                required: false,
                serialized_name: 'locPrf',
                type: {
                  name: 'String'
                }
              },
              weight: {
                required: false,
                serialized_name: 'weight',
                type: {
                  name: 'Number'
                }
              },
              path: {
                required: false,
                serialized_name: 'path',
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
