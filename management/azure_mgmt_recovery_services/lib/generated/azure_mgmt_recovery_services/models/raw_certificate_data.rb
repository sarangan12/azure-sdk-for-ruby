# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.1.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServices
  module Models
    #
    # Raw certificate data.
    #
    class RawCertificateData

      include MsRestAzure

      include MsRest::JSONable
      # @return [AuthType] Specifies the authentication type. Possible values
      # include: 'Invalid', 'ACS', 'AAD', 'AccessControlService',
      # 'AzureActiveDirectory'
      attr_accessor :auth_type

      # @return [Array<Integer>] The base64 encoded certificate raw data string
      attr_accessor :certificate


      #
      # Mapper for RawCertificateData class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RawCertificateData',
          type: {
            name: 'Composite',
            class_name: 'RawCertificateData',
            model_properties: {
              auth_type: {
                required: false,
                serialized_name: 'authType',
                type: {
                  name: 'String'
                }
              },
              certificate: {
                required: false,
                serialized_name: 'certificate',
                type: {
                  name: 'ByteArray'
                }
              }
            }
          }
        }
      end
    end
  end
end
