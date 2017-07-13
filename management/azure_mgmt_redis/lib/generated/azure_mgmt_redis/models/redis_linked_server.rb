# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Redis
  module Models
    #
    # Linked server Id
    #
    class RedisLinkedServer

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Linked server Id.
      attr_accessor :id


      #
      # Mapper for RedisLinkedServer class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RedisLinkedServer',
          type: {
            name: 'Composite',
            class_name: 'RedisLinkedServer',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
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
