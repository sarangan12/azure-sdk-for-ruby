# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Scheduler
  module Models
    #
    # Model object.
    #
    class ClientCertAuthentication < HttpAuthentication

      include MsRestAzure

      # @return [String] Gets or sets the password.
      attr_accessor :password

      # @return [String] Gets or sets the pfx.
      attr_accessor :pfx

      # @return [String] Gets or sets the certificate thumbprint.
      attr_accessor :certificate_thumbprint

      # @return [DateTime] Gets or sets the certificate expiration date.
      attr_accessor :certificate_expiration_date

      # @return [String] Gets or sets the certificate subject name.
      attr_accessor :certificate_subject_name


      #
      # Mapper for ClientCertAuthentication class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ClientCertAuthentication',
          type: {
            name: 'Composite',
            class_name: 'ClientCertAuthentication',
            model_properties: {
              type: {
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'Enum',
                  module: 'HttpAuthenticationType'
                }
              },
              password: {
                required: false,
                serialized_name: 'password',
                type: {
                  name: 'String'
                }
              },
              pfx: {
                required: false,
                serialized_name: 'pfx',
                type: {
                  name: 'String'
                }
              },
              certificate_thumbprint: {
                required: false,
                serialized_name: 'certificateThumbprint',
                type: {
                  name: 'String'
                }
              },
              certificate_expiration_date: {
                required: false,
                serialized_name: 'certificateExpirationDate',
                type: {
                  name: 'DateTime'
                }
              },
              certificate_subject_name: {
                required: false,
                serialized_name: 'certificateSubjectName',
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