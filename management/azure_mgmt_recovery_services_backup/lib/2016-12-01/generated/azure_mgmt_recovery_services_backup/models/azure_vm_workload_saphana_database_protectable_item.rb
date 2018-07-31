# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for
# license information.
#
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2016_12_01
  module Models
    #
    # Azure VM workload-specific protectable item representing SAP Hana
    # Database.
    #
    class AzureVmWorkloadSAPHanaDatabaseProtectableItem < AzureVmWorkloadProtectableItem

      include MsRestAzure


      def initialize
        @protectableItemType = "SAPHanaDatabase"
      end

      attr_accessor :protectableItemType


      #
      # Mapper for AzureVmWorkloadSAPHanaDatabaseProtectableItem class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SAPHanaDatabase',
          type: {
            name: 'Composite',
            class_name: 'AzureVmWorkloadSAPHanaDatabaseProtectableItem',
            model_properties: {
              backup_management_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'backupManagementType',
                type: {
                  name: 'String'
                }
              },
              workload_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'workloadType',
                type: {
                  name: 'String'
                }
              },
              friendly_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'friendlyName',
                type: {
                  name: 'String'
                }
              },
              protection_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'protectionState',
                type: {
                  name: 'String'
                }
              },
              protectableItemType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'protectableItemType',
                type: {
                  name: 'String'
                }
              },
              parent_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'parentName',
                type: {
                  name: 'String'
                }
              },
              parent_unique_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'parentUniqueName',
                type: {
                  name: 'String'
                }
              },
              server_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'serverName',
                type: {
                  name: 'String'
                }
              },
              is_auto_protectable: {
                client_side_validation: true,
                required: false,
                serialized_name: 'isAutoProtectable',
                type: {
                  name: 'Boolean'
                }
              },
              subinquireditemcount: {
                client_side_validation: true,
                required: false,
                serialized_name: 'subinquireditemcount',
                type: {
                  name: 'Number'
                }
              },
              subprotectableitemcount: {
                client_side_validation: true,
                required: false,
                serialized_name: 'subprotectableitemcount',
                type: {
                  name: 'Number'
                }
              },
              prebackupvalidation: {
                client_side_validation: true,
                required: false,
                serialized_name: 'prebackupvalidation',
                type: {
                  name: 'Composite',
                  class_name: 'PreBackupValidation'
                }
              }
            }
          }
        }
      end
    end
  end
end
