# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::IotHub::Mgmt::V2016_02_03
  module Models
    #
    # Quota metrics properties.
    #
    class IotHubQuotaMetricInfo

      include MsRestAzure

      # @return [String] The name of the quota metric.
      attr_accessor :name

      # @return [Integer] The current value for the quota metric.
      attr_accessor :current_value

      # @return [Integer] The maximum value of the quota metric.
      attr_accessor :max_value


      #
      # Mapper for IotHubQuotaMetricInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'IotHubQuotaMetricInfo',
          type: {
            name: 'Composite',
            class_name: 'IotHubQuotaMetricInfo',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'Name',
                type: {
                  name: 'String'
                }
              },
              current_value: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'CurrentValue',
                type: {
                  name: 'Number'
                }
              },
              max_value: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'MaxValue',
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
