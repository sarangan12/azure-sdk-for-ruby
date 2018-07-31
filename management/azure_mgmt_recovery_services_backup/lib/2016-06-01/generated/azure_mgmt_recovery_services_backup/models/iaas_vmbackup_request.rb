# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for
# license information.
#
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2016_06_01
  module Models
    #
    # This is an Azure VM (also known as IaaS VM) workload-specific backup
    # request.
    #
    class IaasVMBackupRequest < BackupRequest

      include MsRestAzure


      def initialize
        @objectType = "IaasVMBackupRequest"
      end

      attr_accessor :objectType

      # @return [DateTime] The backup copy will expire after the time
      # specified. The time is in UTC format.
      attr_accessor :recovery_point_expiry_time_in_utc


      #
      # Mapper for IaasVMBackupRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'IaasVMBackupRequest',
          type: {
            name: 'Composite',
            class_name: 'IaasVMBackupRequest',
            model_properties: {
              objectType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'objectType',
                type: {
                  name: 'String'
                }
              },
              recovery_point_expiry_time_in_utc: {
                client_side_validation: true,
                required: false,
                serialized_name: 'recoveryPointExpiryTimeInUTC',
                type: {
                  name: 'DateTime'
                }
              }
            }
          }
        }
      end
    end
  end
end
