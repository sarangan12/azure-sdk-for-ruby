# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2016_03_30
  module Models
    #
    # Describes a single certificate reference in a Key Vault, and where the
    # certificate should reside on the VM.
    #
    class VaultCertificate

      include MsRestAzure

      # @return [String] The URL referencing a secret in a Key Vault which
      # contains a properly formatted certificate.
      attr_accessor :certificate_url

      # @return [String] The Certificate store in LocalMachine to add the
      # certificate to on Windows, leave empty on Linux.
      attr_accessor :certificate_store


      #
      # Mapper for VaultCertificate class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VaultCertificate',
          type: {
            name: 'Composite',
            class_name: 'VaultCertificate',
            model_properties: {
              certificate_url: {
                client_side_validation: true,
                required: false,
                serialized_name: 'certificateUrl',
                type: {
                  name: 'String'
                }
              },
              certificate_store: {
                client_side_validation: true,
                required: false,
                serialized_name: 'certificateStore',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
