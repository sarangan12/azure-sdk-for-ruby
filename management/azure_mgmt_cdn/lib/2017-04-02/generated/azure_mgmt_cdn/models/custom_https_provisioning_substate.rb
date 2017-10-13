# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CDN::Mgmt::V2017_04_02
  module Models
    #
    # Defines values for CustomHttpsProvisioningSubstate
    #
    module CustomHttpsProvisioningSubstate
      SubmittingDomainControlValidationRequest = "SubmittingDomainControlValidationRequest"
      PendingDomainControlValidationREquestApproval = "PendingDomainControlValidationREquestApproval"
      DomainControlValidationRequestApproved = "DomainControlValidationRequestApproved"
      DomainControlValidationRequestRejected = "DomainControlValidationRequestRejected"
      DomainControlValidationRequestTimedOut = "DomainControlValidationRequestTimedOut"
      IssuingCertificate = "IssuingCertificate"
      DeployingCertificate = "DeployingCertificate"
      CertificateDeployed = "CertificateDeployed"
      DeletingCertificate = "DeletingCertificate"
      CertificateDeleted = "CertificateDeleted"
    end
  end
end
