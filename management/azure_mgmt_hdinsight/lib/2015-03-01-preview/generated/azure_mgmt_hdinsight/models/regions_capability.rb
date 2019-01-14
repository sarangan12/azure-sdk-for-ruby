# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Hdinsight::Mgmt::V2015_03_01_preview
  module Models
    #
    # The regions capability.
    #
    class RegionsCapability

      include MsRestAzure

      # @return [Array<String>] The list of region capabilities.
      attr_accessor :available


      #
      # Mapper for RegionsCapability class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RegionsCapability',
          type: {
            name: 'Composite',
            class_name: 'RegionsCapability',
            model_properties: {
              available: {
                client_side_validation: true,
                required: false,
                serialized_name: 'available',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
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
