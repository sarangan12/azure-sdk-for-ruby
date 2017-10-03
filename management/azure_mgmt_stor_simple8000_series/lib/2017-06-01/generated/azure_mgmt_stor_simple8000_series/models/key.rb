# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::StorSimple8000Series::Api_2017_06_01
  module Models
    #
    # The key.
    #
    class Key

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The activation key for the device.
      attr_accessor :activation_key


      #
      # Mapper for Key class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Key',
          type: {
            name: 'Composite',
            class_name: 'Key',
            model_properties: {
              activation_key: {
                required: true,
                serialized_name: 'activationKey',
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
