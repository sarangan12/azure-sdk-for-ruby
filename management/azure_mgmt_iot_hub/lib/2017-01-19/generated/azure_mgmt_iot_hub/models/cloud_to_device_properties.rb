# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::IotHub::Api_2017_01_19
  module Models
    #
    # The IoT hub cloud-to-device messaging properties.
    #
    class CloudToDeviceProperties

      include MsRestAzure

      include MsRest::JSONable
      # @return [Integer] The max delivery count for cloud-to-device messages
      # in the device queue. See:
      # https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-messaging#cloud-to-device-messages.
      attr_accessor :max_delivery_count

      # @return [Duration] The default time to live for cloud-to-device
      # messages in the device queue. See:
      # https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-messaging#cloud-to-device-messages.
      attr_accessor :default_ttl_as_iso8601

      # @return [FeedbackProperties]
      attr_accessor :feedback


      #
      # Mapper for CloudToDeviceProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'CloudToDeviceProperties',
          type: {
            name: 'Composite',
            class_name: 'CloudToDeviceProperties',
            model_properties: {
              max_delivery_count: {
                required: false,
                serialized_name: 'maxDeliveryCount',
                constraints: {
                  InclusiveMaximum: 100,
                  InclusiveMinimum: 1
                },
                type: {
                  name: 'Number'
                }
              },
              default_ttl_as_iso8601: {
                required: false,
                serialized_name: 'defaultTtlAsIso8601',
                type: {
                  name: 'TimeSpan'
                }
              },
              feedback: {
                required: false,
                serialized_name: 'feedback',
                type: {
                  name: 'Composite',
                  class_name: 'FeedbackProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
