# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for
# license information.
#
# Code generated by Microsoft (R) AutoRest Code Generator 1.1.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesBackup
  module Models
    #
    # Filters to list backup copies.
    #
    class BMSRPQueryObject

      include MsRestAzure

      include MsRest::JSONable
      # @return [DateTime] Backup copies created after this time.
      attr_accessor :start_date

      # @return [DateTime] Backup copies created before this time.
      attr_accessor :end_date


      #
      # Mapper for BMSRPQueryObject class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'BMSRPQueryObject',
          type: {
            name: 'Composite',
            class_name: 'BMSRPQueryObject',
            model_properties: {
              start_date: {
                required: false,
                serialized_name: 'startDate',
                type: {
                  name: 'DateTime'
                }
              },
              end_date: {
                required: false,
                serialized_name: 'endDate',
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
