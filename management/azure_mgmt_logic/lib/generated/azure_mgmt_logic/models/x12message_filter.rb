# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Logic
  module Models
    #
    # The X12 message filter for odata query.
    #
    class X12MessageFilter

      include MsRestAzure

      include MsRest::JSONable
      # @return [MessageFilterType] The message filter type. Possible values
      # include: 'NotSpecified', 'Include', 'Exclude'
      attr_accessor :message_filter_type


      #
      # Mapper for X12MessageFilter class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'X12MessageFilter',
          type: {
            name: 'Composite',
            class_name: 'X12MessageFilter',
            model_properties: {
              message_filter_type: {
                required: true,
                serialized_name: 'messageFilterType',
                type: {
                  name: 'Enum',
                  module: 'MessageFilterType'
                }
              }
            }
          }
        }
      end
    end
  end
end
