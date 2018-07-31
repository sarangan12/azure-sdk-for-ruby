# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for
# license information.
#
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2017_07_01
  module Models
    #
    # Azure storage specific error information
    #
    class AzureStorageErrorInfo

      include MsRestAzure

      # @return [Integer] Error code.
      attr_accessor :error_code

      # @return [String] Localized error string.
      attr_accessor :error_string

      # @return [Array<String>] List of localized recommendations for above
      # error code.
      attr_accessor :recommendations


      #
      # Mapper for AzureStorageErrorInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AzureStorageErrorInfo',
          type: {
            name: 'Composite',
            class_name: 'AzureStorageErrorInfo',
            model_properties: {
              error_code: {
                client_side_validation: true,
                required: false,
                serialized_name: 'errorCode',
                type: {
                  name: 'Number'
                }
              },
              error_string: {
                client_side_validation: true,
                required: false,
                serialized_name: 'errorString',
                type: {
                  name: 'String'
                }
              },
              recommendations: {
                client_side_validation: true,
                required: false,
                serialized_name: 'recommendations',
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
