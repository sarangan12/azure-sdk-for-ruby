# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.1.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Network
  module Models
    #
    # Backend address pool settings of an application gateway.
    #
    class ApplicationGatewayBackendHttpSettings < MsRestAzure::SubResource

      include MsRestAzure

      include MsRest::JSONable
      # @return [Integer] Port
      attr_accessor :port

      # @return [ApplicationGatewayProtocol] Protocol. Possible values include:
      # 'Http', 'Https'
      attr_accessor :protocol

      # @return [ApplicationGatewayCookieBasedAffinity] Cookie based affinity.
      # Possible values include: 'Enabled', 'Disabled'
      attr_accessor :cookie_based_affinity

      # @return [Integer] Request timeout in seconds. Application Gateway will
      # fail the request if response is not received within RequestTimeout.
      # Acceptable values are from 1 second to 86400 seconds.
      attr_accessor :request_timeout

      # @return [SubResource] Probe resource of an application gateway.
      attr_accessor :probe

      # @return [Array<SubResource>] Array of references to application gateway
      # authentication certificates.
      attr_accessor :authentication_certificates

      # @return [ApplicationGatewayConnectionDraining] Connection draining of
      # the backend http settings resource.
      attr_accessor :connection_draining

      # @return [String] Host header to be sent to the backend servers.
      attr_accessor :host_name

      # @return [Boolean] Whether to pick host header should be picked from the
      # host name of the backend server. Default value is false.
      attr_accessor :pick_host_name_from_backend_address

      # @return [String] Cookie name to use for the affinity cookie.
      attr_accessor :affinity_cookie_name

      # @return [Boolean] Whether the probe is enabled. Default value is false.
      attr_accessor :probe_enabled

      # @return [String] Path which should be used as a prefix for all HTTP
      # requests. Null means no path will be prefixed. Default value is null.
      attr_accessor :path

      # @return [String] Provisioning state of the backend http settings
      # resource. Possible values are: 'Updating', 'Deleting', and 'Failed'.
      attr_accessor :provisioning_state

      # @return [String] Name of the resource that is unique within a resource
      # group. This name can be used to access the resource.
      attr_accessor :name

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated.
      attr_accessor :etag

      # @return [String] Type of the resource.
      attr_accessor :type


      #
      # Mapper for ApplicationGatewayBackendHttpSettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ApplicationGatewayBackendHttpSettings',
          type: {
            name: 'Composite',
            class_name: 'ApplicationGatewayBackendHttpSettings',
            model_properties: {
              id: {
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              port: {
                required: false,
                serialized_name: 'properties.port',
                type: {
                  name: 'Number'
                }
              },
              protocol: {
                required: false,
                serialized_name: 'properties.protocol',
                type: {
                  name: 'String'
                }
              },
              cookie_based_affinity: {
                required: false,
                serialized_name: 'properties.cookieBasedAffinity',
                type: {
                  name: 'String'
                }
              },
              request_timeout: {
                required: false,
                serialized_name: 'properties.requestTimeout',
                type: {
                  name: 'Number'
                }
              },
              probe: {
                required: false,
                serialized_name: 'properties.probe',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              authentication_certificates: {
                required: false,
                serialized_name: 'properties.authenticationCertificates',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'SubResourceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SubResource'
                      }
                  }
                }
              },
              connection_draining: {
                required: false,
                serialized_name: 'properties.connectionDraining',
                type: {
                  name: 'Composite',
                  class_name: 'ApplicationGatewayConnectionDraining'
                }
              },
              host_name: {
                required: false,
                serialized_name: 'properties.hostName',
                type: {
                  name: 'String'
                }
              },
              pick_host_name_from_backend_address: {
                required: false,
                serialized_name: 'properties.pickHostNameFromBackendAddress',
                type: {
                  name: 'Boolean'
                }
              },
              affinity_cookie_name: {
                required: false,
                serialized_name: 'properties.affinityCookieName',
                type: {
                  name: 'String'
                }
              },
              probe_enabled: {
                required: false,
                serialized_name: 'properties.probeEnabled',
                type: {
                  name: 'Boolean'
                }
              },
              path: {
                required: false,
                serialized_name: 'properties.path',
                type: {
                  name: 'String'
                }
              },
              provisioning_state: {
                required: false,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              etag: {
                required: false,
                serialized_name: 'etag',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                serialized_name: 'type',
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
