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
    # BEK is bitlocker key.
    # KEK is encryption key for BEK
    # If the VM was encrypted then we will store follwing details :
    # 1. Secret(BEK) - Url + Backup Data + vaultId.
    # 2. Key(KEK) - Url + Backup Data + vaultId.
    # BEK and KEK can potentiallty have different vault ids.
    #
    class KeyAndSecretDetails

      include MsRestAzure

      include MsRest::JSONable
      # @return [KEKDetails] KEK is encryption key for BEK.
      attr_accessor :kek_details

      # @return [BEKDetails] BEK is bitlocker encrpytion key.
      attr_accessor :bek_details


      #
      # Mapper for KeyAndSecretDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'KeyAndSecretDetails',
          type: {
            name: 'Composite',
            class_name: 'KeyAndSecretDetails',
            model_properties: {
              kek_details: {
                required: false,
                serialized_name: 'kekDetails',
                type: {
                  name: 'Composite',
                  class_name: 'KEKDetails'
                }
              },
              bek_details: {
                required: false,
                serialized_name: 'bekDetails',
                type: {
                  name: 'Composite',
                  class_name: 'BEKDetails'
                }
              }
            }
          }
        }
      end
    end
  end
end
