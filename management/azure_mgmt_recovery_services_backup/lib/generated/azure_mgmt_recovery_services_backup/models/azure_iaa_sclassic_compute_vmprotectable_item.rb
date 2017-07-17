# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for
# license information.
#
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesBackup
  module Models
    #
    # IaaS VM workload-specific backup item representing the Classic Compute
    # VM.
    #
    class AzureIaaSClassicComputeVMProtectableItem < IaaSVMProtectableItem

      include MsRestAzure

      include MsRest::JSONable

      def initialize
        @protectableItemType = "Microsoft.ClassicCompute/virtualMachines"
      end

      attr_accessor :protectableItemType


      #
      # Mapper for AzureIaaSClassicComputeVMProtectableItem class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Microsoft.ClassicCompute/virtualMachines',
          type: {
            name: 'Composite',
            class_name: 'AzureIaaSClassicComputeVMProtectableItem',
            model_properties: {
              backup_management_type: {
                required: false,
                serialized_name: 'backupManagementType',
                type: {
                  name: 'String'
                }
              },
              friendly_name: {
                required: false,
                serialized_name: 'friendlyName',
                type: {
                  name: 'String'
                }
              },
              protection_state: {
                required: false,
                serialized_name: 'protectionState',
                type: {
                  name: 'String'
                }
              },
              protectableItemType: {
                required: true,
                serialized_name: 'protectableItemType',
                type: {
                  name: 'String'
                }
              },
              virtual_machine_id: {
                required: false,
                serialized_name: 'virtualMachineId',
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
