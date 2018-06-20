# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::KeyVault::V2016_10_01
  module Models
    #
    # Parameters for the issuer of the X509 component of a certificate.
    #
    class IssuerParameters

      include MsRestAzure

      # @return [String] Name of the referenced issuer object or reserved
      # names; for example, 'Self' or 'Unknown'.
      attr_accessor :name

      # @return [String] Type of certificate to be requested from the issuer
      # provider.
      attr_accessor :certificate_type


      #
      # Mapper for IssuerParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'IssuerParameters',
          type: {
            name: 'Composite',
            class_name: 'IssuerParameters',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              certificate_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'cty',
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
