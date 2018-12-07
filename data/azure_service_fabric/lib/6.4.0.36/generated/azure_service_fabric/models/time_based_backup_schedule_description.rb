# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_4_0_36
  module Models
    #
    # Describes the time based backup schedule.
    #
    class TimeBasedBackupScheduleDescription < BackupScheduleDescription

      include MsRestAzure


      def initialize
        @ScheduleKind = "TimeBased"
      end

      attr_accessor :ScheduleKind

      # @return [BackupScheduleFrequencyType] Describes the frequency with
      # which to run the time based backup schedule. Possible values include:
      # 'Invalid', 'Daily', 'Weekly'
      attr_accessor :schedule_frequency_type

      # @return [Array<DayOfWeek>] List of days of a week when to trigger the
      # periodic backup. This is valid only when the backup schedule frequency
      # type is weekly.
      attr_accessor :run_days

      # @return [Array<DateTime>] Represents the list of exact time during the
      # day in ISO8601 format. Like '19:00:00' will represent '7PM' during the
      # day. Date specified along with time will be ignored.
      attr_accessor :run_times


      #
      # Mapper for TimeBasedBackupScheduleDescription class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'TimeBased',
          type: {
            name: 'Composite',
            class_name: 'TimeBasedBackupScheduleDescription',
            model_properties: {
              ScheduleKind: {
                client_side_validation: true,
                required: true,
                serialized_name: 'ScheduleKind',
                type: {
                  name: 'String'
                }
              },
              schedule_frequency_type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'ScheduleFrequencyType',
                type: {
                  name: 'String'
                }
              },
              run_days: {
                client_side_validation: true,
                required: false,
                serialized_name: 'RunDays',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'DayOfWeekElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              run_times: {
                client_side_validation: true,
                required: true,
                serialized_name: 'RunTimes',
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
