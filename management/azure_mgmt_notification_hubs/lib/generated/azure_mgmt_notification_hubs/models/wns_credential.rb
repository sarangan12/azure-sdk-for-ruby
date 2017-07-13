# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::NotificationHubs
  module Models
    #
    # Description of a NotificationHub WnsCredential.
    #
    class WnsCredential

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The package ID for this credential.
      attr_accessor :package_sid

      # @return [String] The secret key.
      attr_accessor :secret_key

      # @return [String] The Windows Live endpoint.
      attr_accessor :windows_live_endpoint


      #
      # Mapper for WnsCredential class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'WnsCredential',
          type: {
            name: 'Composite',
            class_name: 'WnsCredential',
            model_properties: {
              package_sid: {
                required: false,
                serialized_name: 'properties.packageSid',
                type: {
                  name: 'String'
                }
              },
              secret_key: {
                required: false,
                serialized_name: 'properties.secretKey',
                type: {
                  name: 'String'
                }
              },
              windows_live_endpoint: {
                required: false,
                serialized_name: 'properties.windowsLiveEndpoint',
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
