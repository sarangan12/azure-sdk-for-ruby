# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.1.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::DevTestLabs
  module Models
    #
    # Properties of a VHD in the lab.
    #
    class LabVhd

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The URI to the VHD.
      attr_accessor :id


      #
      # Mapper for LabVhd class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'LabVhd',
          type: {
            name: 'Composite',
            class_name: 'LabVhd',
            model_properties: {
              id: {
                required: false,
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
