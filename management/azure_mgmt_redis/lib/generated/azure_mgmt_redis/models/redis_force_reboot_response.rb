# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.1.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Redis
  module Models
    #
    # Response to force reboot for Redis cache.
    #
    class RedisForceRebootResponse

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Status message
      attr_accessor :message


      #
      # Mapper for RedisForceRebootResponse class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RedisForceRebootResponse',
          type: {
            name: 'Composite',
            class_name: 'RedisForceRebootResponse',
            model_properties: {
              message: {
                required: false,
                read_only: true,
                serialized_name: 'Message',
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
