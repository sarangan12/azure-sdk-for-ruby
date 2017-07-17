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
    # Defines values for JobOperationType
    #
    module JobOperationType
      Invalid = "Invalid"
      Register = "Register"
      UnRegister = "UnRegister"
      ConfigureBackup = "ConfigureBackup"
      Backup = "Backup"
      Restore = "Restore"
      DisableBackup = "DisableBackup"
      DeleteBackupData = "DeleteBackupData"
    end
  end
end
