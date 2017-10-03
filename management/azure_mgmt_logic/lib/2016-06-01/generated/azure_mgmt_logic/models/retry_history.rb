# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Logic::Api_2016_06_01
  module Models
    #
    # The retry history.
    #
    class RetryHistory

      include MsRestAzure

      include MsRest::JSONable
      # @return [DateTime] Gets the start time.
      attr_accessor :start_time

      # @return [DateTime] Gets the end time.
      attr_accessor :end_time

      # @return [String] Gets the status code.
      attr_accessor :code

      # @return [String] Gets the client request Id.
      attr_accessor :client_request_id

      # @return [String] Gets the service request Id.
      attr_accessor :service_request_id

      # @return [ErrorResponse] Gets the error response.
      attr_accessor :error


      #
      # Mapper for RetryHistory class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RetryHistory',
          type: {
            name: 'Composite',
            class_name: 'RetryHistory',
            model_properties: {
              start_time: {
                required: false,
                serialized_name: 'startTime',
                type: {
                  name: 'DateTime'
                }
              },
              end_time: {
                required: false,
                serialized_name: 'endTime',
                type: {
                  name: 'DateTime'
                }
              },
              code: {
                required: false,
                serialized_name: 'code',
                type: {
                  name: 'String'
                }
              },
              client_request_id: {
                required: false,
                serialized_name: 'clientRequestId',
                type: {
                  name: 'String'
                }
              },
              service_request_id: {
                required: false,
                serialized_name: 'serviceRequestId',
                type: {
                  name: 'String'
                }
              },
              error: {
                required: false,
                serialized_name: 'error',
                type: {
                  name: 'Composite',
                  class_name: 'ErrorResponse'
                }
              }
            }
          }
        }
      end
    end
  end
end
