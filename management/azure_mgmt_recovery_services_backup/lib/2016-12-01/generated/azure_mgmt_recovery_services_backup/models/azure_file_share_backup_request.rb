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
    # AzureFileShare workload-specific backup request.
    #
    class AzureFileShareBackupRequest < BackupRequest

      include MsRestAzure


      def initialize
        @objectType = "AzureFileShareBackupRequest"
      end

      attr_accessor :objectType

      # @return [DateTime] Backup copy will expire after the time specified
      # (UTC).
      attr_accessor :recovery_point_expiry_time_in_utc


      #
      # Mapper for AzureFileShareBackupRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AzureFileShareBackupRequest',
          type: {
            name: 'Composite',
            class_name: 'AzureFileShareBackupRequest',
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
