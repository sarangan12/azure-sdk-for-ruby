# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::Mgmt::V2016_09_01
  module Models
    #
    # Available operation list result
    #
    class OperationResult

      include MsRestAzure

      # @return [String] Result name
      attr_accessor :name

      # @return [AvailableOperationDisplay] Dispaly of the result
      attr_accessor :display

      # @return [String] Origin result
      attr_accessor :origin

      # @return [String] The URL to use for getting the next set of results.
      attr_accessor :next_link


      #
      # Mapper for OperationResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'OperationResult',
          type: {
            name: 'Composite',
            class_name: 'OperationResult',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              display: {
                client_side_validation: true,
                required: false,
                serialized_name: 'display',
                type: {
                  name: 'Composite',
                  class_name: 'AvailableOperationDisplay'
                }
              },
              origin: {
                client_side_validation: true,
                required: false,
                serialized_name: 'origin',
                type: {
                  name: 'String'
                }
              },
              next_link: {
                client_side_validation: true,
                required: false,
                serialized_name: 'nextLink',
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
