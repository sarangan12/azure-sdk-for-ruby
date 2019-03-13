# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Monitor::Mgmt::V2018_09_01
  module Models
    #
    # The time series info needed for calculating the baseline.
    #
    class TimeSeriesInformation

      include MsRestAzure

      # @return [Array<String>] The list of sensitivities for calculating the
      # baseline.
      attr_accessor :sensitivities

      # @return [Array<Float>] The metric values to calculate the baseline.
      attr_accessor :values

      # @return [Array<DateTime>] The array of timestamps of the baselines.
      attr_accessor :timestamps


      #
      # Mapper for TimeSeriesInformation class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'TimeSeriesInformation',
          type: {
            name: 'Composite',
            class_name: 'TimeSeriesInformation',
            model_properties: {
              sensitivities: {
                client_side_validation: true,
                required: true,
                serialized_name: 'sensitivities',
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
              },
              values: {
                client_side_validation: true,
                required: true,
                serialized_name: 'values',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'FloatElementType',
                      type: {
                        name: 'Double'
                      }
                  }
                }
              },
              timestamps: {
                client_side_validation: true,
                required: false,
                serialized_name: 'timestamps',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'DateTimeElementType',
                      type: {
                        name: 'DateTime'
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
