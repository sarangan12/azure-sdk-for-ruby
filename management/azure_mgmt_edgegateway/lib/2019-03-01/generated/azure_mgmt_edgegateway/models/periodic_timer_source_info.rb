# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EdgeGateway::Mgmt::V2019_03_01
  module Models
    #
    # Periodic timer event source.
    #
    class PeriodicTimerSourceInfo

      include MsRestAzure

      # @return [DateTime] The time of the day that results in a valid trigger.
      # Schedule is computed with reference to the time specified.
      attr_accessor :start_time

      # @return [String] Periodic frequency at which timer event needs to be
      # raised. Supports daily, hourly, minutes, and seconds.
      attr_accessor :schedule

      # @return [String] Topic where periodic events are published to IoT
      # device.
      attr_accessor :topic


      #
      # Mapper for PeriodicTimerSourceInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PeriodicTimerSourceInfo',
          type: {
            name: 'Composite',
            class_name: 'PeriodicTimerSourceInfo',
            model_properties: {
              start_time: {
                client_side_validation: true,
                required: true,
                serialized_name: 'startTime',
                type: {
                  name: 'DateTime'
                }
              },
              schedule: {
                client_side_validation: true,
                required: true,
                serialized_name: 'schedule',
                type: {
                  name: 'String'
                }
              },
              topic: {
                client_side_validation: true,
                required: false,
                serialized_name: 'topic',
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
