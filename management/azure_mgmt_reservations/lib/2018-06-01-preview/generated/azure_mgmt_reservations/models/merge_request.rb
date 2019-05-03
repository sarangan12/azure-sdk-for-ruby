# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Reservations::Mgmt::V2018_06_01_preview
  module Models
    #
    # Model object.
    #
    #
    class MergeRequest

      include MsRestAzure

      # @return [Array<String>] Format of the resource id should be
      # /providers/Microsoft.Capacity/reservationOrders/{reservationOrderId}/reservations/{reservationId}
      attr_accessor :sources


      #
      # Mapper for MergeRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MergeRequest',
          type: {
            name: 'Composite',
            class_name: 'MergeRequest',
            model_properties: {
              sources: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.sources',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
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
