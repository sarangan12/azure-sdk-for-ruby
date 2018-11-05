# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataMigration::Mgmt::V2017_11_15_preview
  module Models
    #
    # Wait statistics gathered during query batch execution
    #
    class WaitStatistics

      include MsRestAzure

      # @return [String] Type of the Wait
      attr_accessor :wait_type

      # @return [Float] Total wait time in millisecond(s) . Default value: 0 .
      attr_accessor :wait_time_ms

      # @return [Integer] Total no. of waits
      attr_accessor :wait_count


      #
      # Mapper for WaitStatistics class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'WaitStatistics',
          type: {
            name: 'Composite',
            class_name: 'WaitStatistics',
            model_properties: {
              wait_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'waitType',
                type: {
                  name: 'String'
                }
              },
              wait_time_ms: {
                client_side_validation: true,
                required: false,
                serialized_name: 'waitTimeMs',
                default_value: 0,
                type: {
                  name: 'Double'
                }
              },
              wait_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'waitCount',
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
