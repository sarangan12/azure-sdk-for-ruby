# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_4_0_36
  module Models
    #
    # Defines the schedule used by Chaos.
    #
    class ChaosSchedule

      include MsRestAzure

      # @return [DateTime] The date and time Chaos will start using this
      # schedule. Default value: Date.parse('1601-01-01T00:00:00Z') .
      attr_accessor :start_date

      # @return [DateTime] The date and time Chaos will continue to use this
      # schedule until. Default value: Date.parse('9999-12-31T23:59:59.999Z') .
      attr_accessor :expiry_date

      # @return [Array<ChaosParametersDictionaryItem>] A mapping of string
      # names to Chaos Parameters to be referenced by Chaos Schedule Jobs.
      attr_accessor :chaos_parameters_dictionary

      # @return [Array<ChaosScheduleJob>] A list of all Chaos Schedule Jobs
      # that will be automated by the schedule.
      attr_accessor :jobs


      #
      # Mapper for ChaosSchedule class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ChaosSchedule',
          type: {
            name: 'Composite',
            class_name: 'ChaosSchedule',
            model_properties: {
              start_date: {
                client_side_validation: true,
                required: false,
                serialized_name: 'StartDate',
                default_value: Date.parse('1601-01-01T00:00:00Z'),
                type: {
                  name: 'DateTime'
                }
              },
              expiry_date: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ExpiryDate',
                default_value: Date.parse('9999-12-31T23:59:59.999Z'),
                type: {
                  name: 'DateTime'
                }
              },
              chaos_parameters_dictionary: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ChaosParametersDictionary',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ChaosParametersDictionaryItemElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ChaosParametersDictionaryItem'
                      }
                  }
                }
              },
              jobs: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Jobs',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ChaosScheduleJobElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ChaosScheduleJob'
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
