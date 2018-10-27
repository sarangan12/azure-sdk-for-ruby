# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventGrid::Mgmt::V2018_09_15_preview
  module Models
    #
    # Information about the HybridConnection destination for an event
    # subscription.
    #
    class HybridConnectionEventSubscriptionDestination < EventSubscriptionDestination

      include MsRestAzure


      def initialize
        @endpointType = "HybridConnection"
      end

      attr_accessor :endpointType

      # @return [String] The Azure Resource ID of an hybrid connection that is
      # the destination of an event subscription.
      attr_accessor :resource_id


      #
      # Mapper for HybridConnectionEventSubscriptionDestination class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'HybridConnection',
          type: {
            name: 'Composite',
            class_name: 'HybridConnectionEventSubscriptionDestination',
            model_properties: {
              endpointType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'endpointType',
                type: {
                  name: 'String'
                }
              },
              resource_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.resourceId',
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
