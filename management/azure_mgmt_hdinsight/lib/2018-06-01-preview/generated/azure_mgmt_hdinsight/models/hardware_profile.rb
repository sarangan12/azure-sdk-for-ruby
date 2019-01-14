# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Hdinsight::Mgmt::V2018_06_01_preview
  module Models
    #
    # The hardware profile.
    #
    class HardwareProfile

      include MsRestAzure

      # @return [String] The size of the VM
      attr_accessor :vm_size


      #
      # Mapper for HardwareProfile class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'HardwareProfile',
          type: {
            name: 'Composite',
            class_name: 'HardwareProfile',
            model_properties: {
              vm_size: {
                client_side_validation: true,
                required: false,
                serialized_name: 'vmSize',
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
