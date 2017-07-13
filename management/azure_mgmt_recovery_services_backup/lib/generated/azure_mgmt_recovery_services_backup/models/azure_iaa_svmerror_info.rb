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
    # Azure IaaS VM workload-specific error information.
    #
    class AzureIaaSVMErrorInfo

      include MsRestAzure

      include MsRest::JSONable
      # @return [Integer] Error code.
      attr_accessor :error_code

      # @return [String] Title: Typically, the entity that the error pertains
      # to.
      attr_accessor :error_title

      # @return [String] Localized error string.
      attr_accessor :error_string

      # @return [Array<String>] List of localized recommendations for above
      # error code.
      attr_accessor :recommendations


      #
      # Mapper for AzureIaaSVMErrorInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AzureIaaSVMErrorInfo',
          type: {
            name: 'Composite',
            class_name: 'AzureIaaSVMErrorInfo',
            model_properties: {
              error_code: {
                required: false,
                serialized_name: 'errorCode',
                type: {
                  name: 'Number'
                }
              },
              error_title: {
                required: false,
                serialized_name: 'errorTitle',
                type: {
                  name: 'String'
                }
              },
              error_string: {
                required: false,
                serialized_name: 'errorString',
                type: {
                  name: 'String'
                }
              },
              recommendations: {
                required: false,
                serialized_name: 'recommendations',
                type: {
                  name: 'Sequence',
                  element: {
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
