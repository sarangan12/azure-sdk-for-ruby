# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Redis::Mgmt::V2016_04_01
  module Models
    #
    # Patch schedule entry for a Premium Redis Cache.
    #
    class ScheduleEntry

      include MsRestAzure

      # @return [DayOfWeek] Day of the week when a cache can be patched.
      # Possible values include: 'Monday', 'Tuesday', 'Wednesday', 'Thursday',
      # 'Friday', 'Saturday', 'Sunday', 'Everyday', 'Weekend'
      attr_accessor :day_of_week

      # @return [Integer] Start hour after which cache patching can start.
      attr_accessor :start_hour_utc

      # @return [Duration] ISO8601 timespan specifying how much time cache
      # patching can take.
      attr_accessor :maintenance_window


      #
      # Mapper for ScheduleEntry class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ScheduleEntry',
          type: {
            name: 'Composite',
            class_name: 'ScheduleEntry',
            model_properties: {
              day_of_week: {
                client_side_validation: true,
                required: true,
                serialized_name: 'dayOfWeek',
                type: {
                  name: 'Enum',
                  module: 'DayOfWeek'
                }
              },
              start_hour_utc: {
                client_side_validation: true,
                required: true,
                serialized_name: 'startHourUtc',
                type: {
                  name: 'Number'
                }
              },
              maintenance_window: {
                client_side_validation: true,
                required: false,
                serialized_name: 'maintenanceWindow',
                type: {
                  name: 'TimeSpan'
                }
              }
            }
          }
        }
      end
    end
  end
end
