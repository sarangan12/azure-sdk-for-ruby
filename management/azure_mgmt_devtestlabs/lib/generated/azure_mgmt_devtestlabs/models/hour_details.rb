# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::DevTestLabs
  module Models
    #
    # Properties of an hourly schedule.
    #
    class HourDetails

      include MsRestAzure

      # @return [Integer] Minutes of the hour the schedule will run.
      attr_accessor :minute


      #
      # Mapper for HourDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'HourDetails',
          type: {
            name: 'Composite',
            class_name: 'HourDetails',
            model_properties: {
              minute: {
                required: false,
                serialized_name: 'minute',
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
