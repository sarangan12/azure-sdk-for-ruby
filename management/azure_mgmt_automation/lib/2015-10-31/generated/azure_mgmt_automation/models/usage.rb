# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Automation::Mgmt::V2015_10_31
  module Models
    #
    # Definition of Usage.
    #
    class Usage

      include MsRestAzure

      # @return [String] Gets or sets the id of the resource.
      attr_accessor :id

      # @return [UsageCounterName] Gets or sets the usage counter name.
      attr_accessor :name

      # @return [String] Gets or sets the usage unit name.
      attr_accessor :unit

      # @return [Float] Gets or sets the current usage value.
      attr_accessor :current_value

      # @return [Integer] Gets or sets max limit. -1 for unlimited
      attr_accessor :limit

      # @return [String] Gets or sets the throttle status.
      attr_accessor :throttle_status


      #
      # Mapper for Usage class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Usage',
          type: {
            name: 'Composite',
            class_name: 'Usage',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'Composite',
                  class_name: 'UsageCounterName'
                }
              },
              unit: {
                client_side_validation: true,
                required: false,
                serialized_name: 'unit',
                type: {
                  name: 'String'
                }
              },
              current_value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'currentValue',
                type: {
                  name: 'Double'
                }
              },
              limit: {
                client_side_validation: true,
                required: false,
                serialized_name: 'limit',
                type: {
                  name: 'Number'
                }
              },
              throttle_status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'throttleStatus',
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
