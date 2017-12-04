# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::TrafficManager::Mgmt::V2017_03_01
  module Models
    #
    # Parameters supplied to check Traffic Manager name operation.
    #
    class CheckTrafficManagerRelativeDnsNameAvailabilityParameters

      include MsRestAzure

      # @return [String] Gets or sets the name of the resource.
      attr_accessor :name

      # @return [String] Gets or sets the type of the resource.
      attr_accessor :type


      #
      # Mapper for CheckTrafficManagerRelativeDnsNameAvailabilityParameters
      # class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CheckTrafficManagerRelativeDnsNameAvailabilityParameters',
          type: {
            name: 'Composite',
            class_name: 'CheckTrafficManagerRelativeDnsNameAvailabilityParameters',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'type',
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
