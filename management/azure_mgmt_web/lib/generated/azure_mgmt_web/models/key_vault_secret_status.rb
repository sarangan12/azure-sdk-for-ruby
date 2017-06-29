# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.1.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # Defines values for KeyVaultSecretStatus
    #
    module KeyVaultSecretStatus
      Initialized = "Initialized"
      WaitingOnCertificateOrder = "WaitingOnCertificateOrder"
      Succeeded = "Succeeded"
      CertificateOrderFailed = "CertificateOrderFailed"
      OperationNotPermittedOnKeyVault = "OperationNotPermittedOnKeyVault"
      AzureServiceUnauthorizedToAccessKeyVault = "AzureServiceUnauthorizedToAccessKeyVault"
      KeyVaultDoesNotExist = "KeyVaultDoesNotExist"
      KeyVaultSecretDoesNotExist = "KeyVaultSecretDoesNotExist"
      UnknownError = "UnknownError"
      ExternalPrivateKey = "ExternalPrivateKey"
      Unknown = "Unknown"
    end
  end
end
