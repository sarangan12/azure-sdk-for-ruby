# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2018_06_01
  module Models
    #
    # Describes the parameters of a ScaleSet managed disk.
    #
    class VirtualMachineScaleSetManagedDiskParameters

      include MsRestAzure

      # @return [StorageAccountTypes] Specifies the storage account type for
      # the managed disk. Possible values are: Standard_LRS, Premium_LRS, and
      # StandardSSD_LRS. Possible values include: 'Standard_LRS',
      # 'Premium_LRS', 'StandardSSD_LRS', 'UltraSSD_LRS'
      attr_accessor :storage_account_type


      #
      # Mapper for VirtualMachineScaleSetManagedDiskParameters class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VirtualMachineScaleSetManagedDiskParameters',
          type: {
            name: 'Composite',
            class_name: 'VirtualMachineScaleSetManagedDiskParameters',
            model_properties: {
              storage_account_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'storageAccountType',
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
