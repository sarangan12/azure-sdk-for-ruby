# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.1.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::NotificationHubs
  module Models
    #
    # Description of a NotificationHub PNS Credentials.
    #
    class PnsCredentialsResource < MsRestAzure::Resource

      include MsRestAzure

      include MsRest::JSONable
      # @return [ApnsCredential] The ApnsCredential of the created
      # NotificationHub
      attr_accessor :apns_credential

      # @return [WnsCredential] The WnsCredential of the created
      # NotificationHub
      attr_accessor :wns_credential

      # @return [GcmCredential] The GcmCredential of the created
      # NotificationHub
      attr_accessor :gcm_credential

      # @return [MpnsCredential] The MpnsCredential of the created
      # NotificationHub
      attr_accessor :mpns_credential

      # @return [AdmCredential] The AdmCredential of the created
      # NotificationHub
      attr_accessor :adm_credential

      # @return [BaiduCredential] The BaiduCredential of the created
      # NotificationHub
      attr_accessor :baidu_credential


      #
      # Mapper for PnsCredentialsResource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'PnsCredentialsResource',
          type: {
            name: 'Composite',
            class_name: 'PnsCredentialsResource',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location: {
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              sku: {
                required: false,
                serialized_name: 'sku',
                type: {
                  name: 'Composite',
                  class_name: 'Sku'
                }
              },
              apns_credential: {
                required: false,
                serialized_name: 'properties.apnsCredential',
                type: {
                  name: 'Composite',
                  class_name: 'ApnsCredential'
                }
              },
              wns_credential: {
                required: false,
                serialized_name: 'properties.wnsCredential',
                type: {
                  name: 'Composite',
                  class_name: 'WnsCredential'
                }
              },
              gcm_credential: {
                required: false,
                serialized_name: 'properties.gcmCredential',
                type: {
                  name: 'Composite',
                  class_name: 'GcmCredential'
                }
              },
              mpns_credential: {
                required: false,
                serialized_name: 'properties.mpnsCredential',
                type: {
                  name: 'Composite',
                  class_name: 'MpnsCredential'
                }
              },
              adm_credential: {
                required: false,
                serialized_name: 'properties.admCredential',
                type: {
                  name: 'Composite',
                  class_name: 'AdmCredential'
                }
              },
              baidu_credential: {
                required: false,
                serialized_name: 'properties.baiduCredential',
                type: {
                  name: 'Composite',
                  class_name: 'BaiduCredential'
                }
              }
            }
          }
        }
      end
    end
  end
end
