# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventGrid::V2018_01_01
  module Models
    #
    # Schema of the Data property of an EventGridEvent for a
    # Microsoft.Media.JobStateChange event.
    #
    class MediaJobStateChangeEventData

      include MsRestAzure

      # @return [MediaJobState] The previous state of the Job. Possible values
      # include: 'Canceled', 'Canceling', 'Error', 'Finished', 'Processing',
      # 'Queued', 'Scheduled'
      attr_accessor :previous_state

      # @return [MediaJobState] The new state of the Job. Possible values
      # include: 'Canceled', 'Canceling', 'Error', 'Finished', 'Processing',
      # 'Queued', 'Scheduled'
      attr_accessor :state

      # @return [Hash{String => String}] Gets the Job correlation data.
      attr_accessor :correlation_data


      #
      # Mapper for MediaJobStateChangeEventData class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MediaJobStateChangeEventData',
          type: {
            name: 'Composite',
            class_name: 'MediaJobStateChangeEventData',
            model_properties: {
              previous_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'previousState',
                type: {
                  name: 'Enum',
                  module: 'MediaJobState'
                }
              },
              state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'state',
                type: {
                  name: 'Enum',
                  module: 'MediaJobState'
                }
              },
              correlation_data: {
                client_side_validation: true,
                required: false,
                serialized_name: 'correlationData',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
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
