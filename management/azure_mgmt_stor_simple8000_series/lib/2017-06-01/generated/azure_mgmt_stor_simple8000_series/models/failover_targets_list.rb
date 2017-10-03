# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::StorSimple8000Series::Api_2017_06_01
  module Models
    #
    # The list of all devices in a resource and their eligibility status as a
    # failover target device.
    #
    class FailoverTargetsList

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<FailoverTarget>] The list of all the failover targets.
      attr_accessor :value


      #
      # Mapper for FailoverTargetsList class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'FailoverTargetsList',
          type: {
            name: 'Composite',
            class_name: 'FailoverTargetsList',
            model_properties: {
              value: {
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'FailoverTargetElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'FailoverTarget'
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
