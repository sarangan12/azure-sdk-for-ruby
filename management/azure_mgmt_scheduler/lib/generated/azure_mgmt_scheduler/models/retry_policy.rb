# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.1.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Scheduler
  module Models
    #
    # Model object.
    #
    #
    class RetryPolicy

      include MsRestAzure

      include MsRest::JSONable
      # @return [RetryType] Gets or sets the retry strategy to be used.
      # Possible values include: 'None', 'Fixed'
      attr_accessor :retry_type

      # @return [Duration] Gets or sets the retry interval between retries,
      # specify duration in ISO 8601 format.
      attr_accessor :retry_interval

      # @return [Integer] Gets or sets the number of times a retry should be
      # attempted.
      attr_accessor :retry_count


      #
      # Mapper for RetryPolicy class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RetryPolicy',
          type: {
            name: 'Composite',
            class_name: 'RetryPolicy',
            model_properties: {
              retry_type: {
                required: false,
                serialized_name: 'retryType',
                type: {
                  name: 'Enum',
                  module: 'RetryType'
                }
              },
              retry_interval: {
                required: false,
                serialized_name: 'retryInterval',
                type: {
                  name: 'TimeSpan'
                }
              },
              retry_count: {
                required: false,
                serialized_name: 'retryCount',
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
