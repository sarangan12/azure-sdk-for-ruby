# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.1.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute
  module Models
    #
    # Describes Windows Remote Management configuration of the VM
    #
    class WinRMConfiguration

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<WinRMListener>] The list of Windows Remote Management
      # listeners
      attr_accessor :listeners


      #
      # Mapper for WinRMConfiguration class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'WinRMConfiguration',
          type: {
            name: 'Composite',
            class_name: 'WinRMConfiguration',
            model_properties: {
              listeners: {
                required: false,
                serialized_name: 'listeners',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'WinRMListenerElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'WinRMListener'
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
