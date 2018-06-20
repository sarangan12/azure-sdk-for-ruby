# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

require 'uri'
require 'cgi'
require 'date'
require 'json'
require 'base64'
require 'erb'
require 'securerandom'
require 'time'
require 'timeliness'
require 'faraday'
require 'faraday-cookie_jar'
require 'concurrent'
require 'ms_rest'
require '2015-06-01/generated/azure_key_vault/module_definition'
require 'ms_rest_azure'

module Azure::KeyVault::V2015_06_01
  autoload :KeyVaultClient,                                     '2015-06-01/generated/azure_key_vault/key_vault_client.rb'

  module Models
    autoload :IssuerBundle,                                       '2015-06-01/generated/azure_key_vault/models/issuer_bundle.rb'
    autoload :Contact,                                            '2015-06-01/generated/azure_key_vault/models/contact.rb'
    autoload :JsonWebKey,                                         '2015-06-01/generated/azure_key_vault/models/json_web_key.rb'
    autoload :Contacts,                                           '2015-06-01/generated/azure_key_vault/models/contacts.rb'
    autoload :KeyBundle,                                          '2015-06-01/generated/azure_key_vault/models/key_bundle.rb'
    autoload :KeyCreateParameters,                                '2015-06-01/generated/azure_key_vault/models/key_create_parameters.rb'
    autoload :KeyItem,                                            '2015-06-01/generated/azure_key_vault/models/key_item.rb'
    autoload :KeyVaultError,                                      '2015-06-01/generated/azure_key_vault/models/key_vault_error.rb'
    autoload :SecretItem,                                         '2015-06-01/generated/azure_key_vault/models/secret_item.rb'
    autoload :KeyImportParameters,                                '2015-06-01/generated/azure_key_vault/models/key_import_parameters.rb'
    autoload :CertificateItem,                                    '2015-06-01/generated/azure_key_vault/models/certificate_item.rb'
    autoload :KeyOperationsParameters,                            '2015-06-01/generated/azure_key_vault/models/key_operations_parameters.rb'
    autoload :KeyProperties,                                      '2015-06-01/generated/azure_key_vault/models/key_properties.rb'
    autoload :KeySignParameters,                                  '2015-06-01/generated/azure_key_vault/models/key_sign_parameters.rb'
    autoload :SubjectAlternativeNames,                            '2015-06-01/generated/azure_key_vault/models/subject_alternative_names.rb'
    autoload :KeyVerifyParameters,                                '2015-06-01/generated/azure_key_vault/models/key_verify_parameters.rb'
    autoload :Trigger,                                            '2015-06-01/generated/azure_key_vault/models/trigger.rb'
    autoload :KeyUpdateParameters,                                '2015-06-01/generated/azure_key_vault/models/key_update_parameters.rb'
    autoload :LifetimeAction,                                     '2015-06-01/generated/azure_key_vault/models/lifetime_action.rb'
    autoload :KeyRestoreParameters,                               '2015-06-01/generated/azure_key_vault/models/key_restore_parameters.rb'
    autoload :CertificatePolicy,                                  '2015-06-01/generated/azure_key_vault/models/certificate_policy.rb'
    autoload :SecretSetParameters,                                '2015-06-01/generated/azure_key_vault/models/secret_set_parameters.rb'
    autoload :Error,                                              '2015-06-01/generated/azure_key_vault/models/error.rb'
    autoload :SecretUpdateParameters,                             '2015-06-01/generated/azure_key_vault/models/secret_update_parameters.rb'
    autoload :IssuerCredentials,                                  '2015-06-01/generated/azure_key_vault/models/issuer_credentials.rb'
    autoload :CertificateCreateParameters,                        '2015-06-01/generated/azure_key_vault/models/certificate_create_parameters.rb'
    autoload :OrganizationDetails,                                '2015-06-01/generated/azure_key_vault/models/organization_details.rb'
    autoload :CertificateImportParameters,                        '2015-06-01/generated/azure_key_vault/models/certificate_import_parameters.rb'
    autoload :Attributes,                                         '2015-06-01/generated/azure_key_vault/models/attributes.rb'
    autoload :CertificateUpdateParameters,                        '2015-06-01/generated/azure_key_vault/models/certificate_update_parameters.rb'
    autoload :SecretBundle,                                       '2015-06-01/generated/azure_key_vault/models/secret_bundle.rb'
    autoload :CertificateMergeParameters,                         '2015-06-01/generated/azure_key_vault/models/certificate_merge_parameters.rb'
    autoload :CertificateIssuerItem,                              '2015-06-01/generated/azure_key_vault/models/certificate_issuer_item.rb'
    autoload :CertificateIssuerSetParameters,                     '2015-06-01/generated/azure_key_vault/models/certificate_issuer_set_parameters.rb'
    autoload :X509CertificateProperties,                          '2015-06-01/generated/azure_key_vault/models/x509certificate_properties.rb'
    autoload :CertificateIssuerUpdateParameters,                  '2015-06-01/generated/azure_key_vault/models/certificate_issuer_update_parameters.rb'
    autoload :IssuerParameters,                                   '2015-06-01/generated/azure_key_vault/models/issuer_parameters.rb'
    autoload :CertificateOperationUpdateParameter,                '2015-06-01/generated/azure_key_vault/models/certificate_operation_update_parameter.rb'
    autoload :CertificateOperation,                               '2015-06-01/generated/azure_key_vault/models/certificate_operation.rb'
    autoload :KeyOperationResult,                                 '2015-06-01/generated/azure_key_vault/models/key_operation_result.rb'
    autoload :IssuerAttributes,                                   '2015-06-01/generated/azure_key_vault/models/issuer_attributes.rb'
    autoload :KeyVerifyResult,                                    '2015-06-01/generated/azure_key_vault/models/key_verify_result.rb'
    autoload :KeyListResult,                                      '2015-06-01/generated/azure_key_vault/models/key_list_result.rb'
    autoload :Action,                                             '2015-06-01/generated/azure_key_vault/models/action.rb'
    autoload :SecretListResult,                                   '2015-06-01/generated/azure_key_vault/models/secret_list_result.rb'
    autoload :AdministratorDetails,                               '2015-06-01/generated/azure_key_vault/models/administrator_details.rb'
    autoload :CertificateListResult,                              '2015-06-01/generated/azure_key_vault/models/certificate_list_result.rb'
    autoload :SecretProperties,                                   '2015-06-01/generated/azure_key_vault/models/secret_properties.rb'
    autoload :CertificateIssuerListResult,                        '2015-06-01/generated/azure_key_vault/models/certificate_issuer_list_result.rb'
    autoload :PendingCertificateSigningRequestResult,             '2015-06-01/generated/azure_key_vault/models/pending_certificate_signing_request_result.rb'
    autoload :CertificateBundle,                                  '2015-06-01/generated/azure_key_vault/models/certificate_bundle.rb'
    autoload :BackupKeyResult,                                    '2015-06-01/generated/azure_key_vault/models/backup_key_result.rb'
    autoload :KeyAttributes,                                      '2015-06-01/generated/azure_key_vault/models/key_attributes.rb'
    autoload :SecretAttributes,                                   '2015-06-01/generated/azure_key_vault/models/secret_attributes.rb'
    autoload :CertificateAttributes,                              '2015-06-01/generated/azure_key_vault/models/certificate_attributes.rb'
    autoload :JsonWebKeyType,                                     '2015-06-01/generated/azure_key_vault/models/json_web_key_type.rb'
    autoload :KeyUsageType,                                       '2015-06-01/generated/azure_key_vault/models/key_usage_type.rb'
    autoload :ActionType,                                         '2015-06-01/generated/azure_key_vault/models/action_type.rb'
    autoload :JsonWebKeyOperation,                                '2015-06-01/generated/azure_key_vault/models/json_web_key_operation.rb'
    autoload :JsonWebKeyEncryptionAlgorithm,                      '2015-06-01/generated/azure_key_vault/models/json_web_key_encryption_algorithm.rb'
    autoload :JsonWebKeySignatureAlgorithm,                       '2015-06-01/generated/azure_key_vault/models/json_web_key_signature_algorithm.rb'
  end
end
