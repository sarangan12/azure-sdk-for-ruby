# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::StorSimple8000Series::Api_2017_06_01
  module Models
    #
    # The source details at which the alert was raised
    #
    class AlertSource

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The name of the source
      attr_accessor :name

      # @return [String] The time zone of the source
      attr_accessor :time_zone

      # @return [AlertSourceType] The source type of the alert. Possible values
      # include: 'Resource', 'Device'
      attr_accessor :alert_source_type


      #
      # Mapper for AlertSource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AlertSource',
          type: {
            name: 'Composite',
            class_name: 'AlertSource',
            model_properties: {
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              time_zone: {
                required: false,
                serialized_name: 'timeZone',
                type: {
                  name: 'String'
                }
              },
              alert_source_type: {
                required: false,
                serialized_name: 'alertSourceType',
                type: {
                  name: 'Enum',
                  module: 'AlertSourceType'
                }
              }
            }
          }
        }
      end
    end
  end
end
