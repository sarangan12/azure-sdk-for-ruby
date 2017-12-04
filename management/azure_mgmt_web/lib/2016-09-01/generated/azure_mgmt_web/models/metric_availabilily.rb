# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2016_09_01
  module Models
    #
    # Metric availability and retention.
    #
    class MetricAvailabilily

      include MsRestAzure

      # @return [String] Time grain.
      attr_accessor :time_grain

      # @return [String] Retention period for the current time grain.
      attr_accessor :retention


      #
      # Mapper for MetricAvailabilily class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MetricAvailabilily',
          type: {
            name: 'Composite',
            class_name: 'MetricAvailabilily',
            model_properties: {
              time_grain: {
                client_side_validation: true,
                required: false,
                serialized_name: 'timeGrain',
                type: {
                  name: 'String'
                }
              },
              retention: {
                client_side_validation: true,
                required: false,
                serialized_name: 'retention',
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
