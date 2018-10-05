# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2018_07_01
  module Models
    #
    # The IP access control for Live Event Input.
    #
    class LiveEventInputAccessControl

      include MsRestAzure

      # @return [IPAccessControl] The IP access control properties.
      attr_accessor :ip


      #
      # Mapper for LiveEventInputAccessControl class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'LiveEventInputAccessControl',
          type: {
            name: 'Composite',
            class_name: 'LiveEventInputAccessControl',
            model_properties: {
              ip: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ip',
                type: {
                  name: 'Composite',
                  class_name: 'IPAccessControl'
                }
              }
            }
          }
        }
      end
    end
  end
end
