# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::ApiManagement::Api_2017_03_01
  module Models
    #
    # Certificate configuration which consist of non-trusted intermediates and
    # root certificates.
    #
    class CertificateConfiguration

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Base64 Encoded certificate.
      attr_accessor :encoded_certificate

      # @return [String] Certificate Password.
      attr_accessor :certificate_password

      # @return [Enum] The local certificate store location. Only Root and
      # CertificateAuthority are valid locations. Possible values include:
      # 'CertificateAuthority', 'Root'
      attr_accessor :store_name

      # @return [CertificateInformation] Certificate information.
      attr_accessor :certificate


      #
      # Mapper for CertificateConfiguration class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'CertificateConfiguration',
          type: {
            name: 'Composite',
            class_name: 'CertificateConfiguration',
            model_properties: {
              encoded_certificate: {
                required: false,
                serialized_name: 'encodedCertificate',
                type: {
                  name: 'String'
                }
              },
              certificate_password: {
                required: false,
                serialized_name: 'certificatePassword',
                type: {
                  name: 'String'
                }
              },
              store_name: {
                required: true,
                serialized_name: 'storeName',
                type: {
                  name: 'String'
                }
              },
              certificate: {
                required: false,
                read_only: true,
                serialized_name: 'certificate',
                type: {
                  name: 'Composite',
                  class_name: 'CertificateInformation'
                }
              }
            }
          }
        }
      end
    end
  end
end
