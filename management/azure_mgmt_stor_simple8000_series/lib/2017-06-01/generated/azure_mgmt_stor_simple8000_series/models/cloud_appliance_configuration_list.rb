# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::StorSimple8000Series::Api_2017_06_01
  module Models
    #
    # The cloud appliance configuration list
    #
    class CloudApplianceConfigurationList

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<CloudApplianceConfiguration>] The value.
      attr_accessor :value


      #
      # Mapper for CloudApplianceConfigurationList class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'CloudApplianceConfigurationList',
          type: {
            name: 'Composite',
            class_name: 'CloudApplianceConfigurationList',
            model_properties: {
              value: {
                required: true,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'CloudApplianceConfigurationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'CloudApplianceConfiguration'
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
